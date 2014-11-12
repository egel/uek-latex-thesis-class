# UEK LaTeX Thesis Class

This is LaTeX thesis class created for students of Cracow University of Economics.


## Features

  - Full support of `biblatex` + `biber`
  - Polish fonts support (also for listings package);
  - UTF-8 encoding by default;
  - Implemented [Generall Editor's Rules](#generall-editors-rules);
  - Many class options for easy personal confuguation;
  - Autoconfiguration for male or female formating of thesis;
  - Easy to set global variables;
  - Download repository, compile and have great fun;
  - Ready for Windows and Linux OSs;


## Class options

> Options are Case Sensitive (so there is a difference between `indexNumber` and `indexnumber` and `IndexNumber`)

  - `twoside` --- sets type of printing of the document (**default value is**: oneside);

  - `male` or `female` --- sets all generall setting (like ex: author statement) to men or women preferences (**default value is**: male);

  - `fileVersion` --- print version of document (**default value is**: off); <br/>It's usually used only for helping purposes. This option is defined by `\globalVersion` variable.

  - `indexNumber` --- print student's index number; (**default value is**: off) <br/>This option is defined by `\globalIndexNumber` variable.

  - `keywords` --- print keywords in PDF; (**default value is**: off) <br/>This option is defined by `\globalKeywords` variable. In the backend it also includes these keywords to generated file by *pdflatex* by default. To see more generate PDF and look into file's preferences > document.



## Basic setup

1. [Install neccesary bibraries like: TeXLive or MikTeX](#installation-of-additional-libs)
2. [Copy repository to your hard drive](#copy-repo)
3. [Compile document](#compile-document)
3. [Become a Ninja](#become-a-ninja)

### <a name="installation-of-additional-libs"></a> Installation of TeXLive or MikTeX

Firstly you need to install La(Tex) libraries --- If you have *TexLive*, *MikTeX* or similar libraries packages system all ready installed and also biber as well, you can skip this subpoints ;)

##### Linux
For most linux distributions based on [Debian](https://www.debian.org/) like: (ex: [Ubuntu](http://www.ubuntu.com/), [Mint](http://www.linuxmint.com/), [ElementaryOS](http://elementaryos.org/), etc) you could install **texlive** by run this command in terminal:

    sudo apt-get install texlive-full

**apt-get** program will install whole bunch of *Tex* libs (~1.5GB). It's a lot of stuff and contains more libs then we'll ever use, but the main advantage of this setp is that you probably won't get any errors like missing common libraries while you'll be writting your thesis --- less errors, less worries - simple as that ;)

##### Windows
You can download [Miktex](http://miktex.org/). It's more-less an equivalent of *Texlive* libs and it's build specially for Windows systems. On Miktex's website you will find all information you need to use this piece of software.

### <a name="copy-repo"></a>Copy this repository to your hard drive:

Using **Git** you can clone this repo:

    git clone git@github.com:egel/latex-example.git "lib"

or use **gitmodules** to your exsisting thesis repository

    git submodule add git@github.com:egel/latex-example.git "lib"

### <a name="compile-document"></a>Compile whole document:

    $ pdflatex document_main.tex
    $ pdflatex document_main.tex
    $ biber bibliografia.tex
    $ pdflatex document_main.tex

### <a name="become-a-ninja"></a>Become a Ninja
All done :)  ...and now you can give a try to become a powerful LaTeX Ninja!


## License
MIT License - Maciej Sypień
