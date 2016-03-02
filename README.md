# UEK LaTeX Thesis Class
[![MIT License](http://img.shields.io/badge/license-MIT-yellowgreen.svg)](https://github.com/egel/uek-latex-thesis-class/blob/master/LICENSE)

LaTeX thesis class created for students of Cracow University of Economics.

***
[Installation](#installation) | [Class options](#class-options) |
[**Live Example**][live-example] | [Learn more on wiki][repo-wiki] |
[License](#license)
***

<p align="center">
  <img title="First page preview" src="http://i.imgur.com/SOP7s7Q.png" width="700"/>
</p>


## Features

  - Full Polish fonts support (include listings);
  - [`UTF-8`][] encoding by default;
  - Already implemented
    [The UEK Editorial Recommendations][repo-wiki-edit-recommends];
  - Modern bibliography management with [biblatex][ctan-biblatex] +
    [biber][biber-page]
  - Many [class options](#class-options) for easy personal configuration;
  - Autoconfiguration for male or female formatting of thesis;
  - Easy to set global variables;
  - Ready for Windows, Linux and Mac OSX;
  - Download repository, link class, compile your document and have great fun;


## Class options

> Options are Case Sensitive (so there is a difference between `indexNumber`,
> `indexnumber`, or `IndexNumber`, and so on...)

  - `male` or `female` - sets all general setting (like ex: author statement)
    to men or women preferences (**default value is**: male);
  - `authorStatement` - prints author's statement (**default value is**: off)
    <br/>This attach to document that author's thesis was made by himself and
    himself alone.
  - `keywords` - print keywords from `\globalKeywords` variable (**default value
    is**: off);
  - `twoside` - sets type of printing of the document (**default value is**:
    oneside);
  - `fileVersion` - print version of document (**default value is**: off)
    <br/>It's usually used only for helping purposes or improvement for
    repository management ex: Git. This option is defined by `\globalVersion` variable.
  - `indexNumber` - print student's index number; (**default value is**: off)
    <br/>This option can be set by `\globalIndexNumber` variable.
  - `thanks` - print student's thanks phrase; (**default value is**: off)
    <br/>Default thanks phrase can be changed by modifying
    `\printAcknowledgments`


## Installation

1. [Install necessary libraries](#installation-of-texlive-or-miktex)
  + [Linux](#linux)
  + [Windows](#windows)
  + [Mac OSX](#mac-osx)
2. [Copy repository to hard drive](#copy-this-repository-to-hard-drive)
3. [Compile document](#compile-whole-document-using-uekthesis-class)
3. [Become a LaTeX Ninja!](#become-a-latex-ninja)

### Installation of TeXLive or MikTeX
Firstly you need to install La(TeX) libraries - If you have **TexLive**,
**MikTeX** or similar libraries packages system all ready installed (and also
[`biber`](http://biblatex-biber.sourceforge.net/) as well), you can skip below
sub points for this chapter and go to "Copy repository to hard drive" ;)

##### Linux
For most linux distributions based on [Debian](https://www.debian.org/) like:
(ex: [Ubuntu](http://www.ubuntu.com/), [Mint](http://www.linuxmint.com/),
[ElementaryOS](http://elementaryos.org/), etc.) you could install **texlive** by
run this command in terminal:

```bash
sudo apt-get install texlive-full
```

**apt-get** program will install whole bunch of *Tex* libs (~1.5GB). It's a lot
of stuff and contains more libraries then we'll ever use, but the main advantage
of this step is that you probably won't get any errors like "missing common
libraries" while you'll be writing your thesis - less errors, less worries -
simple as that ;)

> Sometimes [`biber`](http://biblatex-biber.sourceforge.net/) (a BibTeX
> replacement for users of BibLaTeX) is not include into `texlive-full` package.
> In order of fix this need to install it by running `sudo apt-get install
> biber` into terminal. If you need more up to date version of biber, look at
> its [Github repository](https://github.com/plk/biber) for further
> instructions.

##### Windows
You can download [Miktex][miktex-webpage]. It's more-less an equivalent of
*Texlive* libs and it's build specially for Windows systems. On Miktex's website
you will find all information you need to use this piece of software.


##### Mac OSX
Download and install full version of
[MacTeX][mactex-webpage] and that is pretty much it :)


### Copy this repository to hard drive

1. You can just download by clicking on left side to [download zip
   file](https://github.com/egel/uek-latex-thesis-class/archive/master.zip).

2. Using **Git** you can clone this repository:

  With github account:

  ```bash
  git clone git@github.com:egel/uek-latex-thesis-class.git "lib"
  ```

  or without github account:

  ```bash
  git clone https://github.com/egel/uek-latex-thesis-class.git "lib"
  ```


3. or use Git's [**submodules**][git-submodules] to add this class to your
   existing thesis repository (**recommended**):

  ```bash
  cd <your-class-folder>
  git submodule add git@github.com:egel/uek-latex-thesis-class.git "lib"
  ```


### Compile whole document using uekthesis class

**How to add this class to document?**

> You can take a look at [this live example][live-example] which presents
> **uek-latex-thesis-class** in practice.

After download the class, then in few formal steps you can compile you file
(standard full LaTeX compilation).

```bash
$ pdflatex main.tex
$ pdflatex main.tex
$ biber bibliography.tex
$ pdflatex main.tex
```

If this looks weird to you, maybe you give a shot to
[TeXstudio][texstudio-page], the best known to me LaTeX full GUI editor (it
hasn't got candy look, but it's the most configurable program from all I've been
tried) or if you prefer LUI choose [VIM](http://www.vim.org/) with
[latex-suite](http://vim-latex.sourceforge.net/)
plugin.


### Become a LaTeX Ninja
All done :)  ...and now you can give a easy try to become a very powerful LaTeX
Ninja! High five!


## Contribute
Feel free to fork this project and adjust to your needs. Any pull requests also
are very welcome :)

If you have some problems you can leave question in [issues][repo-issues] (some
question may be worth to ask in front of the public) or mail me directly
`maciej@egel.pl`

## License
MIT License, 2014 - Maciej Sypień

  [live-example]: https://www.sharelatex.com/project/548b548ddbb91e9c7f2351d6 "UEK Thesis Live Example"
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
