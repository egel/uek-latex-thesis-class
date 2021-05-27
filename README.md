# UEK LaTeX Thesis Class

[![MIT License](http://img.shields.io/badge/license-MIT-yellowgreen.svg)](https://github.com/egel/uek-latex-thesis-class/blob/master/LICENSE)

LaTeX thesis class created for students of [Cracow University of Economics][uek-homepage].

---

[Installation](#installation) | [Class options](#class-options) |
[**Live DEMO**][live-demo] | [Learn more on wiki][repo-wiki] |
[License](#license)

---

<p align="center">
  <img title="Preview of first page" src="http://i.imgur.com/SOP7s7Q.png" width="700"/>
</p>

## Features

- Full Polish fonts support (include listings)
- [`UTF-8`][wiki-utf8] encoding by default
- Already implemented [The UEK Editorial Recommendations][repo-wiki-edit-recommends]
- Modern bibliography management with [biblatex][ctan-biblatex] and [biber][biber-page]
- Many [class options](#class-options) for easy, personal configuration
- Easy to set [global variables](#global-variables)
- Auto-configuration formatting of thesis for male or female
- PDF metadata done right
- Ready for Windows, Linux and macOS

Download the repository, link the class, compile your document, and have great fun! 🙂

## Available options

Available options are separated into 2 parts:

- **class options** - a list of switchers to enable/disable some functionalities of the document.
- **global variables** - a list of global variables to modify document/class options in order to get more adjusted results.

### Class options

Example:

```latex
\documentclass[male, authorStatement, indexNumber, fileVersion, keywords, thanks]{lib/uekthesis}
```

#### General

- `male` or `female` - sets all general setting (like ex: author statement) to men or women preferences (**default value is**: male)
- `twoside` - sets type of printing of the document (**default value is**:
  oneside)

#### Front page options

- `indexNumber` - print student's index number; (**default value is**: off) <br/>This option can be set by `\globalIndexNumber` variable.
- `fileVersion` - print version of document (**default value is**: off)<br/>It's usually used only for helping purposes or improvement for repository management like Git. This option is defined in `\globalVersion` variable.

#### Second page options

- `authorStatement` - prints author's statement (**default value is**: off) <br/>This attach to document that author's thesis was made by himself and himself alone.
- `keywords` - print keywords from `\globalKeywords` variable (**default value is**: off)

#### Third page

- `thanks` - print student's thanks phrase; (**default value is**: off) <br/>Default thanks phrase can be changed by modifying `\globalAcknowledgements` variable.

> Options are Case Sensitive (so there is a difference between `indexNumber`,
> `indexnumber`, or `IndexNumber`)

## Global variables

- `\globalFullAuthor{Jan Kowalski}` - Full name of the author
- `\globalShortAuthor{J. Kowalski}` - Short name of the author.
- `\globalFullTitle{Przygotowanie pracy dyplomowej \\[2mm] wraz z systemem LaTeX}` - Full name of the thesis
- `\globalShortTitle{Praca dyplomowa w systemie \LaTeXe}` - Short title of the thesis
- `\globalFullUniversity{Uniwersytet Ekonomiczny w Krakowie}` - Full name of the university
- `\globalShortUniversity{UEK}` - Short name of the University
- `\globalDepartment{Wydział Zarządzania}` - Department
- `\globalDegreeprogramme{Informatyka Stosowana}` - Field of study
- `\globalThesisType{Praca magisterska}` - Type of the thesis
- `\globalUnderTheSupervisonOf{Pod kierunkiem}` - Text before supervisor name
- `\globalSupervisor{prof. n. dr hab. Jana Iksińskiego}` - Full name of your supervisor
- `\globalAcknowledgements{Dla moich rodziców oraz najbliższych przyjaciół za - niezłomną wiarę w~moje zwycięstwo.}` - Acknowledgments text
- `\globalFileVersion{0.1.0}` - File version
- `\globalIndexNumber{123456}` - Number of your index
- `\globalCity{Kraków}` - City of creation
- `\globalYear{2015}` - Year of creation
- `\globalKeywords{nauka, komputery, praca dyplomowa, latex, uczelnia, student}` -
  Keywords for your document

## Installation

1.  [Install LaTeX](#install-latex)
2.  [Add document class to your project](#add-document-class-to-your-project)
3.  [Compile the document](#compile-the-document)

### Install LaTeX

Firstly you need to install LaTeX libraries, and best way it to do it via [get LaTeX](https://www.latex-project.org/get/). Additonally, you may also install a [`biber`][biber-page] package separately.

<details>
<summary>Linux</summary>

For most linux distributions based on Debian like [Ubuntu](http://www.ubuntu.com/) you could install full version of **texlive** by execute below command in the terminal:

```bash
sudo apt-get install texlive-full
```

**apt-get** will install a bunch of _Tex_ libraries (>1.5GB). It's a lot and probably contains more libraries than you'll ever use, but the main advantage of this approach is that you probably won't get any errors like "missing package" while you'll be working on your thesis - fewer errors, fewer worries - simple as that.

> Sometimes [`biber`][biber-page] (a BibTeX replacement for users of BibLaTeX) is not included into `texlive-full` package. To fix this need to install it by running `sudo apt-get install biber` in the terminal. If you need a more up to date version of biber, look at the [GitHub repository](https://github.com/plk/biber) for further instructions.

</details>

<details>
<summary>Windows</summary>

You can download [Miktex][miktex-webpage]. It's more-less an equivalent of _Texlive_ libraries and it's built for Windows systems. On Miktex's website, you will find all information you need to use this piece of software.

</details>

<details>
<summary>macOS</summary>

Download and install the full version of [MacTeX][mactex-webpage] and that is pretty much it.

</details>

### Add document class to your project

1.  You can get the class simply by [downloading the latest version](https://github.com/egel/uek-latex-thesis-class/archive/master.zip).

2.  or using **Git** you can clone this repository:

    - without a GitHub account:

      ```bash
      git clone https://github.com/egel/uek-latex-thesis-class.git "lib"
      ```

    - with GitHub account:

      ```bash
      git clone git@github.com:egel/uek-latex-thesis-class.git "lib"
      ```

**How to add this class to the document?**

> You can take a look at this **[live demo][live-demo]** which presents
> `uek-latex-thesis-class` in practice.

### Compile the document

After downloading the class, then in few formal steps, you can compile your file.

```bash
$ pdflatex main.tex
$ pdflatex main.tex
$ biber bibliography.tex
$ pdflatex main.tex
```

All done. Now you can give an easy try to become a very powerful LaTeX Ninja 🥷 High five 🙌

> If this looks weird to you, maybe you give it a shot to [TeXstudio][texstudio-page], the best known to me LaTeX GUI editor (it hasn't got a candy look, but it's the most configurable program of all I've been tried) or if you prefer LUI, choose [VIM](http://www.vim.org/) with [latex-suite](http://vim-latex.sourceforge.net/) plugin.

## Contribute

Feel free to fork this project and adjust to your needs. Any pull requests also are very welcome 🙇‍♂️

If you have some problems you can leave a question in [issues][repo-issues] (some a question may be worth asking in front of the public) or drop me a line on _maciejsypien at gmail dot com_

## License

MIT License, 2014 - Maciej Sypień

[live-demo]: https://www.sharelatex.com/project/5713903dee119a314abcad5d "UEK Thesis Live DEMO"
[repo-wiki]: https://github.com/egel/uek-latex-thesis-class/wiki
[repo-wiki-edit-recommends]: https://github.com/egel/uek-latex-thesis-class/wiki/The-Editorial-Recommendations
[repo-issues]: https://github.com/egel/uek-latex-thesis-class/issues
[ctan-biblatex]: https://www.ctan.org/pkg/biblatex
[biber-page]: http://biblatex-biber.sourceforge.net/
[git-submodules]: http://git-scm.com/book/en/v2/Git-Tools-Submodules
[texstudio-page]: http://www.texstudio.org/
[wiki-utf8]: https://en.wikipedia.org/wiki/UTF-8
[miktex-webpage]: http://miktex.org/
[mactex-webpage]: http://tug.org/mactex/mactex-download.html
[uek-homepage]: https://uek.krakow.pl/
