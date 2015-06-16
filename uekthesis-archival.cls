%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  FileName:     uekthesis.cls
%  Author:       Maciej Sypień <maciej.sypien@gmail.com>
%  University:   Cracow University of Economics
%                (Uniwersytet Ekonomiczny w Krakowie)
%  Inspired by aghdpl.cls
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\message{### uekthesis-archival.cls --- ver. 1.1.0 --- Maciej Sypień ###}

\newif\ifpdflatex\pdflatexfalse%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lib/uekthesis-archival}[2014/16/12 LaTeX class for thesis archival documents]
\DeclareOption{pdflatex}{\pdflatextrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\LoadClass[a4paper, 9pt, oneside, openright]{report}

%##############################################################################
% Definicje zmiennych
\def\globalFullAuthor#1              {\gdef\@globalFullAuthor{#1}}                % Pełna nazwa autora pracy
\def\globalShortAuthor#1             {\gdef\@globalShortAuthor{#1}}               % Autor - zwięzła forma wydruku
\def\globalFullTitle#1               {\gdef\@globalFullTitle{#1}}                 % Pełny tytuł pracy
\def\globalShortTitle#1              {\gdef\@globalShortTitle{#1}}                % Krótki, zwięzły tytuł pracy # najlepiej aby nie zawierał komend LaTeXa
\def\globalFullUniversity#1          {\gdef\@globalFullUniversity{#1}}            % Pełna nazwa uniwersytetu
\def\globalShortUniversity#1         {\gdef\@globalShortUniversity{#1}}           % Pełna nazwa uniwersytetu
\def\globalDepartment#1              {\gdef\@globalDepartment{#1}}                % Wydział
\def\globalThesisType#1              {\gdef\@globalThesisType{#1}}                % Typ pracy dyplomowej
\def\globalUnderTheSupervisonOf#1    {\gdef\@globalUnderTheSupervisonOf {#1}}     % pod kierunkiem (napis)
\def\globalSupervisor#1              {\gdef\@globalSupervisor{#1}}                % Promotor
\def\globalAcknowledgements#1        {\gdef\@globalAcknowledgements{#1}}          % Podziękowania
\def\globalDegreeprogramme#1         {\gdef\@globalDegreeprogramme{#1}}           % Kierunek studiów
\def\globalFileVersion#1             {\gdef\@globalFileVersion{#1}}               % Wersja pracy
\def\globalIndexNumber#1             {\gdef\@globalIndexNumber{#1}}               % Numer indeksu studneta
\def\globalCity#1                    {\gdef\@globalCity{#1}}                      % Miasto
\def\globalYear#1                    {\gdef\@globalYear{#1}}                      % Rok
\def\globalKeywords#1                {\gdef\@globalKeywords{#1}}                  % zestaw słów kluczowych dla pracy

% Zdefiniowanie kilku zmiennych do umieszczenia w tekscie
\def\printFullAuthor{\@globalFullAuthor}              % Display
\def\printShortAuthor{\@globalShortAuthor}            % Display
\def\printFullTitle{\@globalFullTitle}                % Display
\def\printShortTitle{\@globalShortTitle}              % Display
\def\printFullUniversity{\@globalFullUniversity}      % Display
\def\printShortUniversity{\@globalShortUniversity}    % Display
\def\printDepartment{\@globalDepartment}              % Display
\def\printThesisType{\@globalThesisType}              % Display
\def\printSupervisor{\@globalSupervisor}              % Display
\def\printAcknowledgments{\@globalAcknowledgements}   % Display
\def\printDegreeprogramme{\@globalDegreeprogramme}    % Display
\def\printFileVersion{\@globalFileVersion}            % Display
\def\printIndexNumber{\@globalIndexNumber}            % Display
\def\printCity{\@globalCity}                          % Display
\def\printYear{\@globalYear}                          % Display
\def\printKeywords{\@globalKeywords}                  % Display

%##############################################################################
% Ustawienie linkowania dokumetu oraz elementów wyświetlania pdfa
% (Rozdział 4.7.4 z latex w 129 minut)
\AtBeginDocument{%
  \hypersetup{%
    unicode=true,
    pdfencoding=unicode,
    pdfencoding=auto,
    pdftoolbar=true,        % show Acrobat’s toolbar?
    pdfmenubar=true,        % show Acrobat’s menu?
    pdffitwindow=false,     % window fit to page when opened
    pdfstartview={FitH},    % fits the width of the page to the window
    pdftitle={\printShortTitle},         % title
    pdfauthor={\printFullAuthor},        % author
    pdfsubject={\printThesisType},       % subject of the document
    pdfcreator={\printFullAuthor},       % creator of the document
    pdfproducer={\printFullAuthor},      % producer of the document
    pdfkeywords={\printKeywords},        % list of keywords
    pdfnewwindow=true,      % links in new window
    linktoc=page,           % Ustawienie linków dla bibliografi (none, all, page, section)
    colorlinks=true,        % false: boxed links; true: colored links
    linkcolor=Maroon,       % color of internal links (change box color with linkbordercolor)
    citecolor=PineGreen,    % color of links to bibliography
    filecolor=Magenta,      % color of file links
    urlcolor=MidnightBlue,  % color of external links
  }
}

%##############################################################################
% Wymagane pakiety
\RequirePackage[autostyle=true]{csquotes}              %
\RequirePackage[T1]{fontenc}           % Nowy zestaw czcionek
\RequirePackage{times}                 % Times - Czcionki wektorowe
\RequirePackage{graphicx}              % Wstawianie grafiki
\RequirePackage{geometry}              % Ustawienie wielkości odstępów od brzegów
\RequirePackage[usenames]{color}       % Palety kolorów zdefionwanych
\RequirePackage[dvipsnames]{xcolor}    % Zestaw kolorów
\RequirePackage{fancyhdr}              %
\RequirePackage[hyphens]{url}          % Pakiet url + dzielenie myślników
\RequirePackage{titlesec}              %
\RequirePackage{tocloft}               %
\RequirePackage{amsmath}               % Moduł matematyczny AMS
\RequirePackage{amsfonts}              % pakiet czcionek AMS
\RequirePackage{amssymb}               % Symbole matematyczne AMS
\RequirePackage{amsthm}                % Definicje matematyczne AMS
\RequirePackage[pdftex]{hyperref}      % Ustawienie linkowania dokumetu oraz elementów wyświetlania pdfa (4.7.4 z latex w 129 minut)
\RequirePackage{lmodern}               % Font: modern latin
\RequirePackage{courier}               % Font: courier
\RequirePackage{xpatch}                % !!! Required for biblatex settings
\RequirePackage[polish]{babel}         %
\RequirePackage{polski}                %
\RequirePackage{indentfirst}           % uzyskanie wcięcia przy pierwszym akapicie
\RequirePackage{nameref}               % pakiet referencji do pełnych nazw rozdziałów
\RequirePackage{enumerate}             % pakiet numerowania 1,2,3...etc
\RequirePackage{enumitem}
\RequirePackage{multirow}              % pakiet dla łaczenia wierszy w tabelach
\RequirePackage{longtable}             % pakiet wspomagający długie tabele
\RequirePackage{tabularx}              % dla pełnej długości tabeli (textwidth)
\RequirePackage{tabu}
\RequirePackage{hhline}                % pakiet dla łaczenia kolumn w tabelach
\RequirePackage{listings}              % pakiet dla kodów zródłowych
\RequirePackage{indentfirst}           % uzyskanie wcięcia przy pierwszym akapicie
\RequirePackage{textcomp, gensymb}     % pakiet który definiuje znaki m.in. \degree, \textdegree
\RequirePackage{cases}                 % pakiet numeracji równań z 'numcases'
\RequirePackage{todonotes}             % pakiet pomagający przy prowadzeniu notatek "Co jeszcze do zrobienia"

%##############################################################################
\DeclareOption{oneside}{%
  % Set geometry for oneside (default)
  \geometry{lmargin=15mm, rmargin=10mm, tmargin=17mm, bmargin=15mm, foot=10mm, head=10mm}

  % Thesis oneside OPTION (default)
  % definiuje dolne i górne wykończenie strony
  \def\thesisHeaders{%
    \fancyhf{}
    \fancyhead{}
    \fancyhead[L]{\small\textit\rightmark}
    \fancyhead[R]{\bfseries\thepage}

    \fancypagestyle{plain}{%
      \fancyhf{}% clear all header and footer fields
      \renewcommand{\headrulewidth}{0pt}
      \renewcommand{\footrulewidth}{0pt}
    }
    \fancyfoot[RO]{\small\@globalShortAuthor\quad\textit{\@globalShortTitle}}
  }
}

%##############################################################################
% File Version (Class OPTION)
\DeclareOption{fileVersion}{%
  \def\addVersion{|~wersja: \@globalFileVersion}
}

%##############################################################################
% Student's Index Number (Class OPTION)
\DeclareOption{indexNumber}{%
  \def\addIndexNumber{
    \begin{center}
    Nr.\ indeksu:\ \@globalIndexNumber%
    \end{center}
  }
}

%##############################################################################
% Statement of the Author (Class OPTIONS)
\DeclareOption{male}{%
  \DeclareOption{authorStatement}{%
    \def\statementOfTheAuthor{
      \vspace{20mm}

      \noindent\textit{\large O\'swiadczam, \'swiadomy odpowiedzialno\'sci karnej za po\'swiadczenie nieprawdy, \.ze \mbox{niniejsz\k{a}} prac\k{e} dyplomow\k{a} wykona\l{}em osobi\'scie i samodzielnie oraz nie korzysta\l{}em ze \'zr\'ode\l{} innych ni\.z wymienione w pracy.}
      \vspace{20mm}

      \hfill \dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots
      \quad\quad\quad
      \addtocounter{introPageCounter}{1} % increased introPageCounter
    }
  }
}% END male

\DeclareOption{female}{%
  \DeclareOption{authorStatement}{%
    \def\statementOfTheAuthor{
      \vspace{20mm}

      \noindent\textit{\large O\'swiadczam, \'swiadoma odpowiedzialno\'sci karnej za po\'swiadczenie nieprawdy, \.ze \mbox{niniejsz\k{a}} prac\k{e} dyplomow\k{a} wykona\l{}am osobi\'scie i samodzielnie oraz nie korzysta\l{}am ze \'zr\'ode\l{} innych ni\.z wymienione w pracy.}
      \vspace{20mm}

      \hfill \dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots\dots
      \quad\quad\quad
      \addtocounter{introPageCounter}{1} % increased introPageCounter
    }
  }
}% END female

%##############################################################################
% Keywords (Class OPTION)
% TODO: fix problem with counter for authorStatement
\DeclareOption{keywords}{%
  \def\appendKeywords{
    {\noindent\large S\l{}owa kluczowe: \textit\printKeywords}
  }
}% END male

%##############################################################################
% Thanks (Class OPTION)
\DeclareOption{thanks}{%
  \def\thanksOfTheAuthor{
    \titlepage%
    \vspace*{15cm} \vfill
    \begin{flushright}
      \begin{minipage}[!h]{10cm}
        {\large\textit\printAcknowledgments}
      \end{minipage}
    \end{flushright}
    \addtocounter{introPageCounter}{1} % increased introPageCounter
    \clearpage
  }
}% END male

%##############################################################################
% DEFAULT CLASS OPTIONS

  % uekthesis introduction pages counter
  \newcounter{introPageCounter}
  \setcounter{introPageCounter}{1}

  %###################################################
  % set geometry for two-side; later is declaration for oneside
  \linespread{1.0}

  %###################################################
  % znak rozpoczynający każdą listę wypunktową
  \renewcommand{\labelitemi}{--}

  %###################################################
  % domyślnie puste
  \def\addVersion{}
  \def\addIndexNumber{}
  \def\appendKeywords{}
  \def\statementOfTheAuthor{}
  \def\thanksOfTheAuthor{}

  %###################################################
  % Włączenie domyślnych opcji konfiguracyjnych
  \ExecuteOptions{oneside}
  \ExecuteOptions{male}

  %###################################################
  % Supervisor
  \def\addSupervisor{
    \begin{flushright}
      \@globalUnderTheSupervisonOf \quad\\
      \@globalSupervisor\quad
    \end{flushright}
  }

  %###################################################
  % Ustawienia parametrów dla tytułów rozdziałów, podrozdziałów, itd.
  \titleformat{\chapter}[block]
    {\bfseries\large}{\filright\thechapter. }{0ex}{\MakeUppercase}
  \titlespacing{\chapter}{0pt}{6pt}{6pt}% odstępy: lewy, góra, dół

  \titleformat{\section}[block]
    {\bfseries\large}{\filright\large\thesection. }{0ex}{\MakeLowercase}
  \titlespacing{\section}{0mm}{6pt}{6pt}

  \titleformat{\subsection}[block]
    {\bfseries\normalsize}{\filright\normalsize\thesubsection. }{0ex}{\MakeLowercase}
  \titlespacing{\subsection}{0mm}{6pt}{6pt}

  \titleformat{\subsubsection}[block]
    {\bfseries\normalsize}{\filright\normalsize\thesubsubsection. }{0ex}{\MakeLowercase}
  \titlespacing{\subsubsection}{0mm}{6pt}{6pt}

%########################## END OF DEFAULT OPTIONS ############################


%##############################################################################
\ProcessOptions\relax%

\newcommand{\titlepages}{% Ustawienia stron tytułowych

  \newpage \titlepage%
  \begin{center}
    {%
        {\sffamily\LARGE\scshape\printFullUniversity}\\
        \vspace*{2mm}
        {\large\scshape\printDepartment}
    }
    \vspace*{15mm}

    \includegraphics[width=7cm]{lib/university-logo}
    \vspace*{15mm}

    {\LARGE\printFullAuthor}
    {\large\addIndexNumber}

    \vspace*{10mm}

    {\LARGE\bfseries\printFullTitle}\\
    \vspace*{10mm}
    {\large \printThesisType{\ }\addVersion}\\
    \vspace*{10mm}
  \end{center}

  {\large\addSupervisor}

  \null%
  \vfill
  \centerline{\large{\printCity~\printYear}}
  \addtocounter{introPageCounter}{1} % increased introPageCounter
  \clearpage

  \titlepage%
  \appendKeywords%
  \statementOfTheAuthor%
  \clearpage

  \thanksOfTheAuthor%

  \setcounter{page}{\value{introPageCounter}}
}

\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\renewcommand{\headrulewidth}{0.2pt}
\renewcommand{\footrulewidth}{0.2pt}
\thesisHeaders%

\frenchspacing
\sloppy
\widowpenalty=9999
\clubpenalty=9996
\brokenpenalty=4991
\predisplaypenalty=10000
\postdisplaypenalty=1549
\displaywidowpenalty=1602
\flushbottom

%##############################################################################
% Ustawienia parametrów generowania spisu treści i spisu rysunków
\renewcommand{\cftchappagefont}{\normalsize}
\renewcommand{\cftloftitlefont}{\bfseries\large\MakeUppercase} % change listOfFigures title
\renewcommand{\cftlottitlefont}{\bfseries\large\MakeUppercase} % change listOfTables title
\renewcommand{\cftloctitlefont}{\bfseries\large\MakeUppercase} % change listOfContent title
% change listOfListings title cannot be changed from here. It changes from .sty file
%\renewcommand{\cfttoctitlefont}{\bfseries\large\MakeUppercase}
\setlength{\cftafterloftitleskip}{0pt}
\setlength{\cftafterlottitleskip}{0pt}
\setlength{\cftafterloctitleskip}{1pt}

\setlength{\cftparskip}{2pt}
\setlength{\cftbeforechapskip}{0mm}

\renewcommand{\cftbeforetoctitleskip}{20mm}
\renewcommand{\cftaftertoctitleskip}{19mm}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}

