% declaration
\ProvidesClass{LabReport}[the format of lab report]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[a4paper]{article}

% packages
\RequirePackage{float}
\RequirePackage{amsmath}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{booktabs} %tableau
\RequirePackage{geometry}
\RequirePackage{array}
\RequirePackage{amsmath}
\RequirePackage{longtable}
\RequirePackage{abstract}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{abstract}
\RequirePackage{xcolor}
\RequirePackage{color}
\RequirePackage{fancyhdr}
\RequirePackage{multirow}
\RequirePackage{wrapfig}
\RequirePackage{booktabs}
\RequirePackage[hidelinks]{hyperref}
% flow chart drawing
\RequirePackage{tikz}
% set the enumitem
\RequirePackage{enumitem}
% geometry: set the margin
\RequirePackage{geometry}
\geometry{
    a4paper,
    left=3.17cm,
    right=3.17cm,
    top=2.54cm,
    bottom=2.54cm,
    headsep=1.27cm,
    footskip=1.27cm
}
% times new roman bold
\RequirePackage{times}
\RequirePackage{bm}
\RequirePackage{fontspec}
\RequirePackage{setspace}
% revise title
\RequirePackage{titlesec}
\titleformat{\section}{\setmainfont{Times New Roman}\bfseries\fontsize{20}{1em}}{\thesection.}{0.8em}{}
\titlespacing{\section}{0pt}{1em}{0em}
\titleformat{\subsection}{\setmainfont{Times New Roman}\fontsize{20}{1em}}{\thesubsection}{0.3em}{}
\titlespacing{\subsection}{0pt}{1em}{0em}
% for justifying
\RequirePackage{ragged2e}
\justifying
% set the code block
% \RequirePackage{listings}
% \RequirePackage{lstlisting}
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{mauve}{rgb}{0.58,0,0.82}
\lstset{frame=tb,
    language=C++, % lanuage
    aboveskip=3mm,
    belowskip=3mm,
    captionpos=b, % caption position
    showstringspaces=false, % space only allowed in strings
    backgroundcolor=\color{white},   % chose the background of the code
    % above command must use \ usepackage {color}  or \ usepackage {xcolor}
    columns=flexible,
    basicstyle =\linespread{0.8}\ttfamily\small,
    numbers=left, % the numbers of the line, = none, left, right.
    numberstyle=\small \color{gray},  % font and color of the line number
    keywordstyle=\color{blue},
    commentstyle=\color{dkgreen}, % comment style
    stringstyle=\color{mauve},
    breaklines=true,   % set auto break
    breakatwhitespace=true, % set white space break
    escapeinside=``, % set the escape character
    frame=single, % set frame stype
    extendedchars=false, % Solve the problem that Chinese characters such as chapter titles and page headers are not displayed when the code spans two pages
    xleftmargin=4em,xrightmargin=4em, aboveskip=1em, % Set margins
    tabsize=4 % Set the default tab to 4 spaces
}
\usepackage{caption}
\captionsetup[lstlisting]{labelsep=space,labelformat=empty}

% info about the report
\newcommand{\CourseTitle}[1]{\def\@CourseTitle{#1}}
\newcommand{\ReportTitle}[1]{\def\@ReportTitle{#1}}
\newcommand{\StudentName}[1]{\def\@StudentName{#1}}
\newcommand{\StudentID}[1]{\def\@StudentID{#1}}
\newcommand{\ReportDate}[1]{\def\@ReportDate{#1}}
\newcommand{\Institution}[1]{\def\@Institution{#1}}

% create the cover page
\newcommand{\makeCover}{
    \thispagestyle{empty}
    \setmainfont{Times New Roman}
    \begin{center}
        \fontsize{20}{2.5em}\selectfont
        \@CourseTitle
    \end{center}
    \vspace{15em}
    \begin{center}
        \fontsize{26}{2em}\selectfont
        \@ReportTitle
    \end{center}
    \vspace{20em}
    \begin{center}
        \fontsize{20}{2.16em}\selectfont
        Name: \@StudentName
    \end{center}
    \begin{center}
        \fontsize{20}{2.16em}\selectfont
        Student ID: \@StudentID
    \end{center}
    \begin{center}
        \fontsize{20}{2.16em}\selectfont
        Date: \@ReportDate
    \end{center}
    \vspace{10em}
    \begin{center}
        \fontsize{20}{2.16em}\selectfont
        \@Institution
    \end{center}
    \newpage
}

\newcommand{\TBW}{\textbf{\textcolor{red}{ \Large TO BE WRITTEN!!!}}}


% header and foot of page
\fancyhf{}
\pagestyle{fancy}
\fancyhead[L]{\setmainfont{Times New Roman}\setstretch{2.5}Student ID: \@StudentID}
\fancyhead[R]{\setmainfont{Times New Roman}\setstretch{2.5}Name: \@StudentName}
\fancyfoot[C]{\thepage}
