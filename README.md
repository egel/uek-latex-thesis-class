# UEK LaTeX Thesis Class
[![MIT License](http://img.shields.io/badge/license-MIT-yellowgreen.svg)](https://github.com/egel/uek-latex-thesis-class/blob/master/LICENSE)

LaTeX thesis class created for students of Cracow University of Economics.

***
[Installation](#installation) | [Class options](#class-options) | [Live example](https://www.sharelatex.com/project/548b548ddbb91e9c7f2351d6) | [Learn more on wiki](https://github.com/egel/uek-latex-thesis-class/wiki) | [License](#license)
***

## Features

  - Full Polish fonts support (include listings);
  - UTF-8 encoding by default;
  - Implemented [The UEK Editorial Recommendations](https://github.com/egel/uek-latex-thesis-class/wiki/The-Editorial-Recommendations);
  - Many class options for easy personal confuguation;
  - Autoconfiguration for male or female formating of thesis;
  - Easy to set global variables;
  - Download repository, compile and have great fun;
  - Ready for Windows and Linux OSs;


## Class options

> Options are Case Sensitive (so there is a difference between `indexNumber` and `indexnumber` and `IndexNumber`)

  - `male` or `female` - sets all generall setting (like ex: author statement) to men or women preferences (**default value is**: male);

  - `authorStatement` - prints author's statement (**default value is**: off) <br/>This attach to document that author's thesis was made by himself and himself alone.

  - `keywords` - print keywords from `\globalKeywords` variable (**default value is**: off);

  - `twoside` - sets type of printing of the document (**default value is**: oneside);

  - `fileVersion` - print version of document (**default value is**: off) <br/>It's usually used only for helping purposes. This option is defined by `\globalVersion` variable.

  - `indexNumber` - print student's index number; (**default value is**: off) <br/>This option can be set by `\globalIndexNumber` variable.


## Installation

1. [Install neccesary bibraries like: TeXLive or MikTeX](#installation-of-texlive-or-miktex)
2. [Copy repository to hard drive](#copy-this-repository-to-hard-drive)
3. [Compile document](#compile-whole-document-using-uekthesis-class)
3. [Become a LaTeX Ninja!](#become-a-latex-ninja)

### Installation of TeXLive or MikTeX
Firstly you need to install La(TeX) libraries - If you have **TexLive**, **MikTeX** or similar libraries packages system all ready installed (and also  [`biber`](http://biblatex-biber.sourceforge.net/) as well), you can skip below subpoints for this chapter and go to "Copy repository to hard drive" ;)

##### Linux
For most linux distributions based on [Debian](https://www.debian.org/) like: (ex: [Ubuntu](http://www.ubuntu.com/), [Mint](http://www.linuxmint.com/), [ElementaryOS](http://elementaryos.org/), etc) you could install **texlive** by run this command in terminal:

    sudo apt-get install texlive-full

**apt-get** program will install whole bunch of *Tex* libs (~1.5GB). It's a lot of stuff and contains more libs then we'll ever use, but the main advantage of this setp is that you probably won't get any errors like missing common libraries while you'll be writting your thesis --- less errors, less worries - simple as that ;)

> Sometimes [`biber`](http://biblatex-biber.sourceforge.net/) (a BibTeX replacement for users of BibLaTeX) is not include into `texlive-full` package. In order of fix this need to install it by running `sudo apt-get install biber` into terminal. If you need more up to date version of biber, look at its [Github repository](https://github.com/plk/biber) for further instructions.

##### Windows
You can download [Miktex](http://miktex.org/). It's more-less an equivalent of *Texlive* libs and it's build specially for Windows systems. On Miktex's website you will find all information you need to use this piece of software.


### Copy this repository to hard drive
Using **Git** you can clone this repo:

    git clone git@github.com:egel/uek-latex-thesis-class.git "lib"

or use Git's [**submodules**](http://git-scm.com/book/en/v2/Git-Tools-Submodules) to add this class to your exsisting thesis repository (**recommended**):

    cd <your-class-folder>
    git submodule add git@github.com:egel/uek-latex-thesis-class.git "lib"

Also you can simply download it, by clicking side download button ;)


### Compile whole document using uekthesis class

**How to add this class to document?**

You can take a look at my another repository which I presents [**full latex thesis example**](https://github.com/egel/latex-thesis-example) with using this class in practice.

After download the class, then in few formal steps you can compile you file (standard full LaTeX compilation)

    $ pdflatex main.tex
    $ pdflatex main.tex
    $ biber bibliography.tex
    $ pdflatex main.tex


### Become a LaTeX Ninja
All done :)  ...and now you can give a easy try to become a very powerful LaTeX Ninja!


## License
 MIT License, 2014 - Maciej Sypień
