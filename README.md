[![Bash](https://img.shields.io/github/license/ctrlaltdev/isFileUsed.svg?style=for-the-badge)](https:github.com/ctrlaltdev/isFileUsed/blob/master/LICENSE)
![Bash](https://img.shields.io/badge/_-SH-4EAA25.svg?style=for-the-badge)

Will generate background-image instructions for a given selectors for small, medium and large viewports - normal and 2x.

## Installation

```bash
$ cd imgMediaQueries/
$ ./install.sh
```

## Usage

```bash
$ imgMediaQueries -p path/to/img/dir/ -s ".css .selector" -n img_name (-e imgext)
```

### Interactive

If you do not provide any flag, you'll enter interactive mode where each element will be asked.
