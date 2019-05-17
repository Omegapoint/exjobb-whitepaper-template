\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{OP-Whitepaper}

\LoadClass[11pt,a4paper]{article}


% packages
\usepackage[margin=1cm,bottom=2cm,top=0.7cm,includefoot, includehead]{geometry}
\usepackage[T1]{fontenc}
\usepackage{textcomp}
\usepackage{lmodern}
% \usepackage[utf8]{inputenc}
% \usepackage{cite}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{subfig}
\usepackage{multirow}
\usepackage{float}
\usepackage{hyperref}
\usepackage{svg}
\usepackage{multicol}
\usepackage{parskip}
\usepackage{color}
\usepackage{titling}
\usepackage{fontspec}
\usepackage{tabularx}
\usepackage{fancyhdr}
\usepackage{framed}
\usepackage{tcolorbox}
\usepackage{bbding}
\usepackage{wasysym}
\usepackage{epstopdf}
\usepackage{afterpage}
\usepackage{graphicx}
\usepackage[backend=bibtex,style=numeric,sorting=none,natbib=true]{biblatex}
\usepackage{titlesec}

\addbibresource{references.bib}

% parameters
\newcommand{\Abstract}[1]{\def\@Abstract{#1}}
\newcommand{\Title}[1]{\def\@Title{#1}}
\newcommand{\Author}[1]{\def\@Author{#1}}
\newcommand{\Date}[1]{\def\@Date{#1}}

% layout
\def\@seccntformat#1{%
  \expandafter\ifx\csname c@#1\endcsname\c@section\else
  \csname the#1\endcsname\quad
  \fi}

\newenvironment{Figure}
  {\par\medskip\noindent\minipage{\linewidth}}
  {\endminipage\par\medskip}

\titlespacing*{\section}{0pt}{0pt}{-3pt}

\renewcommand{\familydefault}{\sfdefault}
\newfontfamily\headingfont[Scale=1.2]{AlegreyaSC-Medium}
\setlength{\parskip}{8pt}
\setlength{\parindent}{0pt}
\newtcolorbox{footerbox}{spread sidewards,
left=1cm,right=1cm,
height=2.1cm,valign=center,
colback=black,coltext=white,
boxrule=0pt,arc=0pt}
\newtcolorbox{extrabox}[1]{
left=0.3cm,right=0.3cm,top=0.1cm,bottom=0.8cm,
lefttitle=0.5cm,righttitle=0.5cm,toptitle=0.5cm,bottomtitle=0cm,
colbacktitle=black,
colback=black,coltext=white,
boxrule=0pt,arc=5pt,
adjusted title=#1,
fonttitle=\bfseries\Large,
fontupper=\sffamily
}
\fancypagestyle{titlepage}{%
\fancyhf{}%
\setlength{\footskip}{0pt}%
\renewcommand{\footrulewidth}{0pt}%
\renewcommand{\headrulewidth}{0pt}%
\fancyfoot[C]{%
\vspace{1cm}%
\begin{footerbox}%
\begin{tabular}{l}%
\textbf{Contact us for more information} \hspace{1cm} \\%
\phone\ 08 545 106 90 \hspace{1cm} \raisebox{-1mm}{\Envelope}\ info@omegapoint.se%
\end{tabular}%
\hfill%
$%
\begin{array}{l}%
\includegraphics[width=2.5cm]{OmegapointWhite}%
\end{array}%
$%
\end{footerbox}%
}%
}%

\fancypagestyle{normalpage}{%
\fancyhf{}%
\setlength{\footskip}{0pt}%
\renewcommand{\footrulewidth}{0pt}%
\renewcommand{\headrulewidth}{0pt}%
\fancyfoot[C]{%
\vspace{1cm}%
\begin{footerbox}%
\color{white}%
\begin{tabular}{l}%
\textbf{\textsf{Contact us for more information}} \hspace{1cm} \\%
\phone\ \textsf{08 545 106 90} \hspace{1cm} \raisebox{-1mm}{\Envelope}\ \textsf{info@omegapoint.se}%
\end{tabular}%
\hfill%
$%
\begin{array}{l}%
\includegraphics[width=2.5cm]{OmegapointWhite}%
\end{array}%
$%
\end{footerbox}%
}%
\fancyhead[C]{\headingfont\large{\@Title}}
}

\pagestyle{normalpage}

\renewcommand{\maketitle}{
\vspace*{-2.1cm}
\begin{tabularx}{1.03\textwidth}{Xp{4cm}}
\raggedright\headingfont{\Huge{\@Title}} & \hfill\includegraphics[width=3cm]{OmegapointBlack}
\end{tabularx}

\normalfont
\hspace{0.25cm}\@Date\ -- \@Author

\textbf{\@Abstract}
\thispagestyle{titlepage}
}
