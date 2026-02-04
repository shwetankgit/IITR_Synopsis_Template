\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{iitrdiss}[IIT Roorkee]

\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[12pt,a4paper]{report}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Geometry and page layout
\RequirePackage[a4paper,left=1in,right=0.8in,top=1in,bottom=1in,
                headsep=15pt]{geometry}
\parskip 12pt

\renewcommand{\@pnumwidth}{2.5em}
%\renewcommand{\@tocrmarg}{2.5em}
\RequirePackage{graphicx}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Using setspace to do the single/double spacing.  Setspace also
%% makes all tables and figures have single spacing automatically.
\RequirePackage{setspace} 
% \RequirePackage{atbeginend} % used to redefine the list environs
\setstretch{1.5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% The figure captioning is done correctly via the hang option.
%%\RequirePackage[hang]{caption2}  -> TeX generates error
\RequirePackage[hang]{caption}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Other useful macros.  Many of these are modifications from newdiss.cls

% \department{department name} -- user macro to declare name of department.
\def\department#1{\gdef\@department{#1}}


\let\@advisor\relax
\def\advisor#1{\def\@advisor{#1}}

\let\@program\relax
\def\program#1{\def\@program{#1}}

\let\@entrynumber\relax
\def\entrynumber#1{\def\@entrynumber{#1}}

\def\monthYear#1{\gdef\@monthYear{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The title page

\def\maketitle{%
  \pagenumbering{roman}
  \thispagestyle{empty}
  \newpage
  \null
  \setcounter{page}{0}
  \parskip=0pt
  \begin{center}%
  \let \footnote \thanks
  \vglue 0in % this makes top margin 2in
  \vskip -5ex%
    {\Large \bf \expandafter{\@title} \par}%
    \vskip 5ex%
    {\normalsize
         {\bf A Synopsis Report \\ Submitted in Partial Fulfillment of the Requirements for the Degree \\ of \\  DOCTOR OF PHILOSOPHY }\par
         \vskip 2ex%
          {\normalsize \em by \par}
         {\bf \large{\@author}\par}
         \vskip 2ex%
         % \vskip 2ex%
         {\normalsize \em Under the Supervision of  \par}
         {\bf \normalsize{\@advisor}}
        
         % \vskip 20ex
    }
  \end{center}%
  \vskip 5ex
  \centerline{\includegraphics[height=1.5in,width=1.5in, keepaspectratio]{iitr_logo.jpg}}
  \vspace*{0.10in}
  \begin{center}
    {\bf DEPARTMENT OF \@department\par}
    {\bf INDIAN INSTITUTE OF TECHNOLOGY ROORKEE}\\
    {\bf ROORKEE - 247667 INDIA}
    \vglue 0.50em
    {\bf \large \@monthYear}\par
  \end{center}
  \parskip 8pt
}

