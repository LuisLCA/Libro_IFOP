% This program, along with its custom Beamer template and related code, is subject to intellectual property protection. It has been meticulously developed to offer a valuable tool for crafting presentations. You can safely use it for the 2023 Brazilian Chemical Engineering Congress, but if you intend to modify this program, we kindly request that you acknowledge the original authorship of the code.

% When incorporating this program or any of its elements, we kindly ask you to provide proper attribution by citing the author:

% Leonardo Silva de Souza
% Email: leosilvasouza2001@gmail.com
% LinkedIn: linkedin.com/in/leonardo-silva-de-souza

% By respecting these guidelines, you not only honor the effort invested in creating the template but also facilitate the sharing of knowledge and resources within our community.

% Your cooperation in recognizing intellectual property is highly valued. Thank you for your consideration and for contributing to a collaborative and respectful environment.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{congresso_eng_quimica}[2023/08/17 Custom Beamer template for Brazilian Congress of Chemical Engineering]

\LoadClass[10pt,aspectratio=43]{beamer}

\setbeamertemplate{frametitle}[default][center]

\RequirePackage{tikz}
\RequirePackage{color}

\definecolor{blueCOBEQ}{RGB}{17,68,121}

\setbeamercolor{frametitle}{fg=blueCOBEQ}

\newcommand{\myBackround}{\includegraphics[width=\paperwidth,height=\paperheight]{figsDefault/presentationslide}}
\newcommand{\myTitle}{Smile, you are in Bahia}
\newcommand{\mySubTitle}{New way of seeing life}
\newcommand{\myAuthor}{By Leonardo Silva de Souza}
\newcommand{\myAffiliate}{UFBA}
\newcommand{\myDate}{\today}
% \newcommand{\myLogo}{\includegraphics[width=3.5cm]{figsDefault/Beamer-Logo.png}}

% Title slide code
\setbeamertemplate{title page}{
    \begin{tikzpicture}[remember picture,overlay]
        \node[above right,inner sep=0pt] at (current page.south west)
            {\myBackround};
        
        \node[
            above=0.5cm,
            align=center,
            rounded corners,
            inner xsep=15pt,
            inner ysep=10pt, 
            minimum width=0.7\textwidth,
            text=white,
            text width=0.6\textwidth
        ] (title) at (5,1) {
            \LARGE \myTitle  \\[5pt]
            \small \mySubTitle
        };
        
        \node[text=white, below=0.5cm] (author) at (title.south) {\myAuthor};
        
        \node[text=white, below=0.5cm] (affiliate) at (author.south) {\myAffiliate};
        
        \node[text=white, below=0.5cm] (date) at (affiliate.south) {\large \myDate};
    \end{tikzpicture}
}
\usebackgroundtemplate%
{%
    \includegraphics[width=\paperwidth,height=\paperheight]{figsDefault/presentationbody}%
}
\newcommand{\insertendpage}[1]{%
    \usebackgroundtemplate{%
        \includegraphics[width=\paperwidth,height=\paperheight]{figsDefault/presentationend}%
    }
    \begin{frame}
        #1
    \end{frame}
}
\endinput
