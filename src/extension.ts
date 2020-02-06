import * as vscode from 'vscode';
import { activateDiagnostic } from './diagnostics/diagnostics';

export function activate(context: vscode.ExtensionContext) {
	activateDiagnostic(context);
}

export function deactivate() {}
