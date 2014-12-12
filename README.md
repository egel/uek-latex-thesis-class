# UEK LaTeX Thesis Class

LaTeX thesis class created for students of Cracow University of Economics.

***
[Installation](#installation) | [Class options](#class-options) | [Live example](https://www.sharelatex.com/project/548b548ddbb91e9c7f2351d6) | [Learn more on wiki](https://github.com/egel/uek-latex-thesis-class/wiki) | [License](#license)
***

## Features

  - Full Polish fonts support (include listings);
  - UTF-8 encoding by default;
  - Implemented [Generall Editor's Rules](#generall-editors-rules);
  - Many class options for easy personal confuguation;
  - Autoconfiguration for male or female formating of thesis;
  - Easy to set global variables;
  - Download repository, compile and have great fun;
  - Ready for Windows and Linux OSs;


## Class options

> Options are Case Sensitive (so there is a difference between `indexNumber` and `indexnumber` and `IndexNumber`)

  - `male` or `female` --- sets all generall setting (like ex: author statement) to men or women preferences (**default value is**: male);

  - `authorStatement` --- prints author's statement (**default value is**: off) <br/>This attach to document that author's thesis was made by himself and himself alone.

  - `twoside` --- sets type of printing of the document (**default value is**: oneside);

  - `fileVersion` --- print version of document (**default value is**: off) <br/>It's usually used only for helping purposes. This option is defined by `\globalVersion` variable.

  - `indexNumber` --- print student's index number; (**default value is**: off) <br/>This option is defined by `\globalIndexNumber` variable.


## Installation

1. [Install neccesary bibraries like: TeXLive or MikTeX](#installation-of-texlive-or-miktex)
2. [Copy repository to your hard drive](#copy-this-repository-to-your-hard-drive)
3. [Compile document](#compile-whole-document-using-uekthesis-class)
3. [Become a LaTeX Ninja!](#become-a-latex-ninja)

### Installation of TeXLive or MikTeX
Firstly you need to install La(Tex) libraries --- If you have *TexLive*, *MikTeX* or similar libraries packages system all ready installed and also biber as well, you can skip this subpoints ;)

##### Linux
For most linux distributions based on [Debian](https://www.debian.org/) like: (ex: [Ubuntu](http://www.ubuntu.com/), [Mint](http://www.linuxmint.com/), [ElementaryOS](http://elementaryos.org/), etc) you could install **texlive** by run this command in terminal:

    sudo apt-get install texlive-full

**apt-get** program will install whole bunch of *Tex* libs (~1.5GB). It's a lot of stuff and contains more libs then we'll ever use, but the main advantage of this setp is that you probably won't get any errors like missing common libraries while you'll be writting your thesis --- less errors, less worries - simple as that ;)

> Sometimes [`biber`](http://biblatex-biber.sourceforge.net/) (a BibTeX replacement for users of BibLaTeX) is not include into `texlive-full` package. In order of fix this need to install it by running `sudo apt-get install biber` into terminal. If you need more up to date version of biber, look at its [Github repository](https://github.com/plk/biber) for further instructions.

##### Windows
You can download [Miktex](http://miktex.org/). It's more-less an equivalent of *Texlive* libs and it's build specially for Windows systems. On Miktex's website you will find all information you need to use this piece of software.

### Copy this repository to your hard drive

Using **Git** you can clone this repo:

    git clone git@github.com:egel/uek-latex-thesis-class.git "lib"

or use **gitmodules** to add it to your exsisting thesis repository (recommended):

    git submodule add git@github.com:egel/uek-latex-thesis-class.git "lib"

Also you can simply use download button ;)

### Compile whole document using uekthesis class

**How to add this class to document?**

You see at my another repo which presents [full latex thesis example](https://github.com/egel/latex-thesis-example) with using this class.

Then compile you file (standard full LaTeX compilation)

    $ pdflatex main.tex
    $ pdflatex main.tex
    $ biber bibliography.tex
    $ pdflatex main.tex

### <a name="become-a-ninja"></a>Become a Ninja
All done :)  ...and now you can give a try to become a powerful LaTeX Ninja!


## License
MIT License - Maciej Sypień
