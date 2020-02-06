import * as vscode from "vscode";

const MAX_ERRORS = 100;

export function activateDiagnostic(context: vscode.ExtensionContext) {
  const collection = vscode.languages.createDiagnosticCollection("msl");

  if (vscode.window.activeTextEditor) {
    updateDiagnostics(vscode.window.activeTextEditor.document, collection);
  }

  context.subscriptions.push(
    vscode.window.onDidChangeActiveTextEditor(editor => {
      if (editor) {
        updateDiagnostics(editor.document, collection);
      }
    })
  );
  context.subscriptions.push(
    vscode.workspace.onDidChangeTextDocument(editor => {
      if (editor) {
        updateDiagnostics(editor.document, collection);
      }
    })
  );
}

function updateDiagnostics(
  document: vscode.TextDocument,
  collection: vscode.DiagnosticCollection
): void {
  if (document) {
    const text = document.getText();

    const deprecated_input_identifiers = /(?<=\s|\(|\,|^)(\$~?(?:\?(?:\*|!|\d+|#)?|s?dir|h?file))="[^"]*"/gi;
    const deprecated_params_identifiers = /(?<=\s|\(|\,|^)(\$~?(?:banlist|channel|colour|evalnext|fserv|hmatch|hregex|initopic|lof|maddress|mp3(?:dir)?|(?:h|nv)nick|nopnick|r|token|wavedir))\([^)]+\)(\.[^\s]+)?/gi;
    const deprecated_identifiers = /(?<=\s|\(|\,|^)(\$~?(?:auto|email|iaddress|ifmatch2?|inmp3|(?:m|n|r)address))\b/gi;

    let matched: RegExpExecArray | null;
    let problems = 0;
    let diagnostics: vscode.Diagnostic[] = [];
    let checking = "input";

    if ((matched = deprecated_input_identifiers.exec(text))) {
      checking = "input";
    }

    while (matched && problems < MAX_ERRORS) {
      problems++;

      let diagnostic: vscode.Diagnostic = {
        code: "",
        message: `${matched[1]} has been deprecated, consider utilizing a replacement.`,
        range: new vscode.Range(
          document.positionAt(matched.index),
          document.positionAt(matched.index + matched[0].length)
        ),
        severity: vscode.DiagnosticSeverity.Warning,
        source: ""
      };

      diagnostics.push(diagnostic);

      if (checking === "input") {
        matched = deprecated_input_identifiers.exec(text);
      } else if (checking === "params") {
        matched = deprecated_params_identifiers.exec(text);
      } else {
        matched = deprecated_identifiers.exec(text);
      }

      if (matched === null) {
        if (checking === "input") {
          checking = "params";

          matched = deprecated_params_identifiers.exec(text);
        } else if (checking === "params") {
          checking = "done";

          matched = deprecated_identifiers.exec(text);
        }
      }
    }

    collection.set(document.uri, diagnostics);
  } else {
    collection.clear();
  }
}
