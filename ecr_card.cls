%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Edinburgh Centre for Robotics Business Card Class
%
% Adapted from: http://rainnic.altervista.org/content/template-business-card-using-latex
%
% Created at: 01/06/2016
% Last modified at: 05/02/2020
% By: Joao Moura
% Email: jmm7@hw.ac.uk
% Edited by: Emilyann Nault
% Email: en27@hw.ac.uk
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ecr_card}[2016/06/01 Edinburgh Centre for Robotics Business Card Class]
\LoadClass[10pt]{letter}
\RequirePackage{ticket}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage[noheadfoot,nomarginpar,margin=0pt,paperwidth=85mm,paperheight=55mm]{geometry}
\RequirePackage{pstricks}
\RequirePackage{pst-barcode}
\RequirePackage{qrcode}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Change font to sans serif
\renewcommand{\familydefault}{\sfdefault}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Dimension Definitions
\ticketNumbers{1}{1}
\setlength{\unitlength}{1mm}
\ticketSize{85}{55} %in unitlength
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%adjust these margins using the 'boxed' option with ticket, e.g. \usepackage[boxed]{ticket}
\advance \voffset -0.35cm
\advance \hoffset -.01cm
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Colour used in the ECR Website
\definecolor{cdt_blue}{RGB}{40,57,87}
\definecolor{cdt_grey}{RGB}{58,69,78}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% make your default ticket. \ticketdefault is somewhat like a background here it is empty, because we use different tickets for the front and the back of our card
\renewcommand{\ticketdefault}{}
% now what do you like to put in your ticket front part:
\newcommand{\vcardfront}[4]{\ticket{%
	% \def\temp{#5}\ifx\temp\empty
	\put(60.5,32.5){\includegraphics[height=18mm]{ecr_simple.eps}}
	\put(6,25){\color{cdt_grey}\Large \textbf{#1}}
	\put(6,21){\color{cdt_grey}\scriptsize #2}
	\put(6,17.5){\color{cdt_grey}\scriptsize EPSRC Centre for Doctoral Training in}
	\put(6,15){\color{cdt_grey}\scriptsize Robotics and Autonomous Systems}
	\put(6,10){\color{cdt_grey}\scriptsize #3}
	\put(6,7.5){\color{cdt_grey}\scriptsize #4}
	\put(6,5){\color{cdt_grey}\scriptsize \textbf{www.edinburgh-robotics.org}}
	
	%%%%%%%%%%%%%
	% Edit the height to change the dimensions of the qr code
	% Keep in mind that the right edge should be in line with the ECR logo
	\put(62.5,4){\includegraphics[height=0.669291in]{qrcode.eps}}
	%%%%%%%%%%%%%
	
}}
% Back part of the card
\newcommand{\vcardback}[0]{\ticket{%
	\put(6,16){\includegraphics[height=23mm]{ecr.eps}}
	\put(28,12){
		\begin{picture}(1,1)
			\put(0.75,0){\color{cdt_grey}\line(0,1){31}}
		\end{picture}
	}
	\put(31.5,17){\includegraphics[height=19mm]{uoe.eps}}
	\put(57.5,21){\includegraphics[height=11mm]{hwu.eps}}
}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{empty}
\parindent=0pt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
