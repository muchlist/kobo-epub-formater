# KEPUB Converter

Convert EPUB files to KEPUB format for Kobo e-readers with custom CSS styling.

## Overview

This project uses [kepubify](https://pgaskin.net/kepubify/) to convert EPUB files to KEPUB format with custom CSS for better code book readability on Kobo devices.

## Quick Start

1. Place your EPUB files in the `book/` directory
2. Run the conversion:
   ```bash
   make run/convert
   ```
3. Find converted files in the `converted/` directory

## Custom CSS

The project includes `custom.css` with optimizations for:
- Code blocks with proper text wrapping
- Tables with readable sizing
- Blockquotes/quotations
- Preventing content overflow on Kobo screens

## Usage

```bash
kepubify [options] input_path [input_path]...
```

### General Options

| Option | Description |
|--------|-------------|
| `-v, --verbose` | Show extra information in output |
| `--version` | Show the version |
| `-h, --help` | Show this help text |

### Output Options

| Option | Description |
|--------|-------------|
| `-u, --update` | Don't reconvert files which have already been converted |
| `-i, --inplace` | Don't add the _converted suffix to converted files |
| `--no-preserve-dirs` | Flatten the directory structure of the input |
| `-o, --output string` | Specify output directory or filename |
| `--calibre` | Use .kepub instead of .kepub.epub as extension |
| `-x, --copy strings` | Copy files with specified extension to output unchanged |

### Conversion Options

| Option | Description |
|--------|-------------|
| `--smarten-punctuation` | Smarten punctuation (smart quotes, dashes, etc) |
| `-c, --css stringArray` | Custom CSS to add to ebook |
| `--hyphenate` | Force enable hyphenation |
| `--no-hyphenate` | Force disable hyphenation |
| `--fullscreen-reading-fixes` | Enable fullscreen reading bugfixes |
| `-r, --replace stringArray` | Find and replace on all html files (format: find\|replace) |
| `--charset string` | Override the HTML charset (default "utf-8") |

## Resources

- [Kepubify Online Tool](https://pgaskin.net/kepubify/try/)
- [Kepubify GitHub](https://github.com/pgaskin/kepubify)
