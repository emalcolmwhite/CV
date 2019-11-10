% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
%\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[hmargin=1.25cm, vmargin=1.5cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
%\usepackage{makecell}
\usepackage[utf8]{inputenc}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{017C9F}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #1 \normalfont}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily 
		\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{30pt}{10cm}\selectfont #1 
		\fontspec[Path = fonts/lato/]{Lato-Reg}\selectfont #2
	} \\
	\vspace{5pt}
	\centering{ \fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{16pt}{24pt}\selectfont  \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{12pt}{12pt}\selectfont\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{0}{0}
\titlespacing{\subsubsection}{0pt}{0}{0}

\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{12pt}{12pt}\selectfont {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 } \normalfont}

% Location command
\newcommand{\location}[1]{\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

