\ProvidesClass{ecustthesis}
  [2013/02/10 ver.0.1b ECUST bachlor thesis class]
% 继承article类
\NeedsTeXFormat{LaTeX2e}
\LoadClass[10.5pt]{article}

% 添加unicode支持
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}
% I have no idea what package hyperref is for ...
\RequirePackage{hyperref}
\RequirePackage[margin=0.8in]{geometry}
\RequirePackage{fancyhdr}
% I have no idea what package hyperref is for ...
\RequirePackage{lastpage}
\RequirePackage{graphicx}
\RequirePackage{verbatim}

% 添加中文断句支持
\XeTeXlinebreaklocale zh
\XeTeXlinebreakskip = 0pt plus 1pt

\setmainfont{WenQuanYi Zen Hei Sharp}

% 自定义翻译模版样式
\fancypagestyle{translation}{
  \fancyhead[L]{\thetitle \translation}
  \fancyhead[R]{\thepage}
  \fancypagestyle{empty}{\pagestyle{translation}}
}

%% 此环境用于排版中文摘要。
%\newenvironment{cabstract}{%
%  \chapter*{\zihao{-2}\@title}
%  \markboth{\@title}{}
%  \vspace{-2em}\par
%    \begin{center}
%  \zihao{-3}
%  {\@author}\quad{\@major}\\
%  {\label@mentor}{\@mentor}
%  \end{center}
%  \vspace{1em}\par
%    \section*{\zihao{4}\cabstractname}
%  \vskip 0.5em%
%}{ \putonbottom{\textbf{\label@keywords}\@keywords}}
%
%% 此环境用于排版英文摘要。代码的解释详见 cabstract 环境的定义部分。
%\newenvironment{eabstract}{%
%  \chapter*{\zihao{-2}\@etitle}
%  \markboth{\@etitle}{}
%  \vspace{-2em}\par
%    \begin{center}
%  \zihao{-3}
%  {\@eauthor}\quad({\@emajor})\\
%  Directed by {\@ementor}
%  \end{center}
%  \vspace{1em}\par
%    \section*{\zihao{4}\eabstractname}
%  \vskip 0.5em%
%}%{\putonbottom{\textbf{Keywords:} \@ekeywords}}
%
%