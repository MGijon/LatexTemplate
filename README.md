## LaTex Template

This repository contains a template for generating LaTex documents using Tex inside a Docker container.

This is based in a repository ([link](https://gitlab.com/akuszyk/template)) created by [Andy Kuszyk](http://andykuszyk.github.io/) (his Gihub [profile](https://github.com/andykuszyk)) and explained in this [article](http://andykuszyk.github.io/2020-05-19-latex-deployment-pipeline.html).

---

#### Make options
To execute use the Makefile and one of the available options.

COOMING SOON...

---

#### Basic templates

* Book

'''
\documentclass{book}
\usepackage[paperwidth=130mm,paperheight=198mm]{geometry}
\title{Title of the document}
\date{}
\author{Name of the aouther}

\begin{document}
    \maketitle
    \tableofcontents
	\newpage
    \include{chapters/chapter-one}
\end{document}
'''

* Article

'''
\documentclass{article}
\usepackage[paperwidth=130mm,paperheight=198mm]{geometry}
\title{Title of the document}
\date{}
\author{Name of the aouther}

\begin{document}
    \maketitle
    \tableofcontents
	\newpage
\end{document}
'''