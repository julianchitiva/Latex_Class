texdoc init prueba, replace
tex \documentclass[12pt]{article}
tex \usepackage{stata, graphicx}
tex \usepackage[utf8]{inputenc}
tex \usepackage[spanish]{babel}
tex \title{Este es un ejemplo de un \textit{.tex} desde STATA}
tex \author{Julián Enrique Chitiva}
tex \begin{document}
tex \maketitle


clear all
set more off

use http://www.stata-press.com/data/r14/auto
 
tex \section{Esta es la primera sección}

tex Aquí vamos a poner las estadísticas descriptivas

tex \begin{center}
texdoc stlog
sum
texdoc stlog close 
tex \end{center}

tex \begin{enumerate}

tex \item Este es un item de una lista

gen longitud= length*2.5

tex \item Ahora vamos a hacer una regresión

tex \begin{center}
texdoc stlog
reg price mpg length weight foreign
texdoc stlog close 
tex \end{center}

tex \item Ahora vamos a hacer otra regresión

tex \begin{center}
texdoc stlog
reg price mpg longitud weight foreign
texdoc stlog close 
tex \end{center}


tex \end{enumerate}
tex \end{document}
texdoc close
