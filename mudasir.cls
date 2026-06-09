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
\RequirePackage{amsmath,amssymb,amsthm, amsfonts}
\RequirePackage[colorlinks]{hyperref}
\RequirePackage{multicol}
\RequirePackage[table]{xcolor}

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