\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tumthesis}[2022/04/24]

\LoadClassWithOptions{article}

% Packages, used and not so used
\PassOptionsToPackage{hyphens}{url}
\usepackage{hyperref}
\usepackage{amsmath}
\usepackage{tocloft}
\usepackage[onehalfspacing]{setspace}
\usepackage[rm, bf, tiny, indentafter]{titlesec}
\usepackage[a4paper, noheadfoot]{geometry}
\usepackage{graphicx}
\usepackage[
    justification=centering, 
    tableposition=top, 
    figurewithin=section, 
    tablewithin=section
]{caption}
\usepackage{layout}
\usepackage{fancyhdr}
\usepackage[utf8x]{inputenc}
\usepackage{multirow}
\usepackage{epstopdf}
\usepackage{pbox}
\usepackage{mwe}    
\usepackage{subfig}
\usepackage{enumitem}
\usepackage{url}
\usepackage{listings}
\usepackage{color}
\usepackage{rotating}
\usepackage{chngcntr}
\usepackage{threeparttable}
\usepackage{booktabs}
\usepackage{pdfpages}
\usepackage{float} % [H]
\usepackage[figure,table]{totalcount}
\usepackage{lastpage} % \pageref{LastPage}

% Page margins
\geometry{
    left=20mm,
    right=10mm,
    top=10mm,
    bottom=10mm
}

% Colors for listings and not only
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
\definecolor{reddish}{rgb}{0.8, 0.109, 0.109}
 
% ToC settings
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsecdotsep}{\cftdotsep}
\renewcommand{\contentsname}{Table of contents}

\titleformat{\section}[hang]{\normalfont \bfseries }{\hspace{8mm} \thesection}{1em}{}
\titleformat{\subsection}[hang]{\normalfont \bfseries}{\hspace{8mm} \thesubsection}{1em}{}
\titleformat{\subsubsection}[hang]{\normalfont \bfseries}{\hspace{8mm} \thesubsubsection}{1em}{}
\titleformat{name=\section,numberless}[hang]{\normalfont \bfseries}{\hspace{8mm}}{0em}{}
\titleformat{name=\subsection,numberless}[hang]{\normalfont \bfseries}{\hspace{8mm} I. \thesubsection}{1em}{}

% Equations and Listings numbering
\numberwithin{equation}{section}
\AtBeginDocument{\counterwithin{lstlisting}{section}}

% Figures and Tables captions
\DeclareCaptionLabelSeparator{tire}{\,-- \;} 
\captionsetup[figure]{labelformat=simple,labelsep=tire, belowskip=-0.5cm}
\captionsetup[lstlisting]{labelformat=simple,labelsep=tire, belowskip=-0.5cm}
\captionsetup[table]{labelformat=simple, position=top, labelsep=tire, singlelinecheck=false, justification=raggedleft}

% Subfigures captions: figure 2.11 (a)
\captionsetup[subfigure]{labelformat=simple, labelsep=none}
\renewcommand\thesubfigure{\,(\alph{subfigure})}

% Floats spacing
\setlength{\intextsep}{3ex} 
\setlength{\floatsep}{2ex} 

% Lists, numbered and not
\renewcommand{\theenumi}{\alph{enumi}}
\renewcommand{\theenumii}{\arabic{enumii}}
\renewcommand{\labelenumi}{\theenumi )}
\renewcommand{\labelenumii}{\theenumii )}
\renewcommand{\labelenumiii}{ --)}
\renewcommand\labelitemi{--}

 % Listings style
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{reddish},
    stringstyle=\color{codepurple},
    basicstyle=\footnotesize\ttfamily,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}
 
\lstset{style=mystyle}
\lstset{aboveskip=3ex,belowskip=5ex}

% Bibliography 
\makeatletter
\renewcommand\@biblabel[1]{#1}
\makeatother

% Other probably important stuff
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\setlength\parindent{1cm}
\setlength{\footskip}{5.5mm}
\cfoot{\thepage}

\AtBeginDocument{
    \addtolength{\abovedisplayskip}{-1ex}
    \addtolength{\abovedisplayshortskip}{-1ex}
    \addtolength{\belowdisplayskip}{-1ex}
    \addtolength{\belowdisplayshortskip}{-1ex}
}

\hypersetup{
  pdfborder = {0 0 0}
}

\def\signature#1#2{\par\noindent#1\dotfill\null\\*
  {\raggedleft #2\par}}
