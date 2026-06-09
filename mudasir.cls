\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mudasir}[2024/06/01 Custom LaTeX class for Mudasir's documents]

\LoadClass[11pt,a4paper]{article}

\RequirePackage[a4paper,margin=0.75in]{geometry}
\RequirePackage{relsize}
\RequirePackage{siunitx}
\RequirePackage{listings}
\RequirePackage{cancel} 
\RequirePackage{graphicx}
\RequirePackage{minted}
\RequirePackage[usenames,dvipsnames,svgnames]{xcolor}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{amsmath,amssymb,amsthm,amsfonts}
\RequirePackage{mathtools}
\RequirePackage[colorlinks]{hyperref}
\RequirePackage{multicol}
\RequirePackage[table]{xcolor}
\RequirePackage{tikz}

\RequirePackage{microtype}
\RequirePackage{mathtools}
\RequirePackage{thmtools}

\setlength{\marginparwidth}{2cm}
\RequirePackage{todonotes}

\providecommand{\normalsize}{\fontsize{10}{12}\selectfont}

% define
\newcommand{\df}[2]{\text{let }#1 = #2}
% infinite sum
\newcommand{\sni}[1]{\sum_{n=#1}^\infty }

% graphics in center of page (src, width)
\newcommand{\imgcenter}[2]{
    \begin{figure}[!htbp]
        \centering
        \includegraphics[width=#2\textwidth]{#1}
    \end{figure}
}

\renewcommand{\CancelColor}{\color{red}}
\lstset{
  frame=single, 
  numbers=left, 
  stepnumber=1,
}


\DeclareMathOperator{\proj}{\text{proj}}
\DeclareMathOperator{\comp}{\text{comp}}
\newcommand{\deriv}[2]{\frac{\mathrm{d}{#1}}{\mathrm{d}{#2}}}
\newcommand{\pderiv}[2]{\frac{\partial{#1}}{\partial{#2}}}
\newcommand{\integral}[4]{\displaystyle\int_{#1}^{#2}{#3}\,\mathrm{d}{#4}}
\newcommand{\del}{\vec{\nabla}}
\newcommand{\diff}[1]{\mathrm{d}{#1}}
\newcommand{\code}[1]{{\fontfamily{qcr}\selectfont{\noindent#1}}}
\newcommand{\tab}{\,\,\,\,}
\newcommand{\laplace}[1]{\mathcal{L}\left\{#1\right\}}
\newcommand{\abs}[1]{\left|#1\right|}

\providecommand{\ol}{\overline}
\providecommand{\eps}{\varepsilon}
\providecommand{\half}{\frac{1}{2}}
\providecommand{\dang}{\measuredangle} %% Directed angle
\providecommand{\CC}{\mathbb C}
\providecommand{\FF}{\mathbb F}
\providecommand{\NN}{\mathbb N}
\providecommand{\QQ}{\mathbb Q}
\providecommand{\RR}{\mathbb R}
\providecommand{\ZZ}{\mathbb Z}
\providecommand{\dg}{^\circ}
\providecommand{\ii}{\item}

% Environments [taken from aflim.sty]

% Problem and Exercise
\mdfdefinestyle{mdpurplebox}{frametitlefont=\bfseries,innerbottommargin=8pt,
	nobreak=true,backgroundcolor=RoyalPurple!5,linecolor=RoyalPurple!40!black,linewidth=1.25pt}
\declaretheoremstyle[headfont=\bfseries\color{RoyalPurple!20!black},
mdframed={style=mdpurplebox}]{thmpurplebox}

\declaretheorem[style=thmpurplebox,name=Problem,numberwithin=subsection]{problem}
\declaretheorem[style=thmpurplebox,name=Example,numberwithin=section]{example}
\declaretheorem[style=thmpurplebox,name=$\bigstar$ Problem,sibling=problem]{niceprob}
\declaretheorem[style=thmpurplebox,name=Exercise,sibling=example]{exercise}
\declaretheorem[style=thmpurplebox,name=Exercise,numbered=no]{exercise*}

% theorem & corollary
\mdfdefinestyle{mdbluebox}{frametitlefont=\bfseries,innerbottommargin=8pt,
	nobreak=true,backgroundcolor=RoyalBlue!10,linecolor=RoyalBlue,linewidth=1.25pt}
\declaretheoremstyle[headfont=\bfseries\color{MidnightBlue},
mdframed={style=mdbluebox}]{thmbluebox}

\declaretheorem[style=thmbluebox,name=Theorem,sibling=problem]{theorem}
\declaretheorem[style=thmbluebox,name=Theorem,numbered=no]{theorem*}
\declaretheorem[style=thmbluebox,name=Corollary,sibling=theorem]{corollary}
\declaretheorem[style=thmbluebox,name=Proposition,sibling=theorem]{proposition}
\declaretheorem[style=thmbluebox,name=Lemma,sibling=theorem]{lemma}
\declaretheorem[style=thmbluebox,name=Lemma,numbered=no]{lemma*}

% definition
\mdfdefinestyle{mdgoldbox}{innerbottommargin=9pt,nobreak=true,
	linecolor=Brown!75,linewidth=1.25pt,backgroundcolor=Goldenrod!10,}
\declaretheoremstyle[headfont=\bfseries\color{Brown},
mdframed={style=mdgoldbox},]{thmgoldbox}

\declaretheorem[style=thmgoldbox,name=Definition,sibling=theorem]{definition}
\declaretheorem[style=thmgoldbox,name=Definition,numbered=no]{definition*}
\declaretheorem[style=thmgoldbox,name=Claim,sibling=theorem]{claim}
\declaretheorem[style=thmgoldbox,name=Claim,numbered=no]{claim*}

% note and remark
\mdfdefinestyle{mdblackbox}{linecolor=black,backgroundcolor=RedViolet!5!gray!5,
	linewidth=3pt,rightline=false,leftline=true,topline=false,bottomline=false,}
\declaretheoremstyle[mdframed={style=mdblackbox}]{thmblackbox}

\declaretheorem[style=thmblackbox,name=Note,numbered=no]{note}
\declaretheorem[style=thmblackbox,name=Remark,sibling=theorem]{remark}
\declaretheorem[style=thmblackbox,name=Remark,numbered=no]{remark*}

%question
\mdfdefinestyle{mdquestion}{linecolor=Maroon,backgroundcolor=Bittersweet!5,
	linewidth=2pt,rightline=false,leftline=true,topline=false,bottomline=false,}
\declaretheoremstyle[headfont=\bfseries\color{Maroon!70!black},
mdframed={style=mdquestion},headpunct={ --- },]{thmquestion}

%answer
\mdfdefinestyle{mdanswer}{linecolor=RoyalPurple,backgroundcolor=Lavender!50,
	linewidth=2pt,rightline=false,leftline=true,topline=false,bottomline=false,}
\declaretheoremstyle[headfont=\bfseries\color{RoyalPurple!20!black},
mdframed={style=mdanswer},headpunct={ --- },]{thmanswer}

\declaretheorem[style=thmquestion,name=Question,sibling=theorem,numbered=no]{question}
\declaretheorem[style=thmquestion,name=Question,numbered=no]{question*}
\declaretheorem[style=thmanswer,name=Answer,sibling=theorem,numbered=no]{answer}
\declaretheorem[style=thmanswer,name=Answer,numbered=no]{answer*}
\declaretheorem[style=thmanswer,name=Reminder,sibling=theorem,numbered=no]{reminder}
\declaretheorem[style=thmanswer,name=Reminder,numbered=no]{reminder*}
\declaretheorem[style=thmquestion,name=WARNING,sibling=theorem,numbered=no]{warning}
\declaretheorem[style=thmquestion,name=Warning,numbered=no]{warning*}

\newenvironment{soln}{\begin{proof}[Solution]}{\end{proof}}
\newenvironment{walkthrough}{\noindent \textbf{Walkthrough.}}{\medskip}
\newlist{walk}{enumerate}{3}
\setlist[walk]{label=\bfseries (\alph*)}