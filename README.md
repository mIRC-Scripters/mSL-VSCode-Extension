# mIRC Scripting Language Support for Visual Studio Code

This is a Visual Studio Code extension that adds support for mIRC Scripting Language.

## Preview

![Preview](preview.gif)

## Features

- Syntax highlighting
  - mIRC
  - AdiIRC
- Snippets
  - Alias constructors (constants, commands, identifiers, and command and identifier)
  - Built-in commands (WIP)
  - Built-in identifiers (WIP)
  - Built-in events (WIP)
  - Miscellaneous
- Error reporting (WIP)

## Contributing

All contributions are welcome.

## Acknowledgements

The grammar was built based on
[highlightjs-mirc](https://github.com/highlightjs/highlightjs-mirc) project,
lol2k's [vscode-mirc](https://github.com/lol2k/vscode-mirc) extension and
Sreject's [language-mircscript](https://github.com/SReject/language-mircscript) project.

Some test/examples were taken from: <https://en.wikichip.org/wiki/mirc>

## License

This project is made available under the MIT License.

## Known Issues

- Commands are restrcited to one line, i.e. **\$&** is ignored.
- If/elseif/else/while must contain parentheses.
