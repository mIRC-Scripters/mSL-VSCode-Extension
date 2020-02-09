# mIRC Scripting Language Support for Visual Studio Code

This is a Visual Studio Code extension that adds support for mIRC Scripting Language.

## Features

- Syntax highlighting
  - mIRC
  - AdiIRC (WIP)
- Snippets
  - Alias constructors (constants, commands, identifiers, and command and identifier)
  - General on event constructor
- Error reporting (WIP)

## Acknowledgements

The grammar was built based on [highlightjs-mirc](https://github.com/highlightjs/highlightjs-mirc) project, lol2k's [vscode-mirc](https://github.com/lol2k/vscode-mirc) extension and Sreject's [language-mircscript](https://github.com/SReject/language-mircscript) project.

Some test/examples were taken from: <https://en.wikichip.org/wiki/mirc>

![mIRC Dock Icon](logo.png)  
[mIRC Dock Icon](https://www.deviantart.com/hatick/art/mIRC-Dock-Icon-69817801) created by [Greg "haticK" Ferro](https://www.deviantart.com/hatick), licensed under [CC BY-NC-ND 3.0](http://creativecommons.org/licenses/by-nc-nd/3.0/)

## License

This project is made available under the MIT License.

## Known Issues

- Commands are restrcited to one line, i.e. **\$&** is ignored.
- If/elseif/else/while must contain parentheses.
