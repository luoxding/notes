# LaTeX概括

## MOC
- 基础
- 格式

```latex
%https://tex.stackexchange.com/questions/462146/how-to-produce-colored-code-blocks-in-latex
\documentclass{article}
\usepackage{minted}
\usepackage[most]{tcolorbox}
\definecolor{lightgreen}{rgb}{0.56, 0.93, 0.56}
\definecolor{moonstoneblue}{rgb}{0.45, 0.66, 0.76}
\begin{document}
\begin{tcolorbox}[
    enhanced,
    attach boxed title to top left={xshift=6mm,yshift=-3mm},
    colback=lightgreen!20,
    colframe=lightgreen,
    colbacktitle=lightgreen,
    title=C++ Code 1.1: C++ Example,
    fonttitle=\bfseries\color{black},
    boxed title style={size=small,colframe=lightgreen,sharp corners},
    sharp corners,
]
\begin{minted}[linenos]{cpp}
// This is a C++ code
#include<iostream>
using namespace std;
int main()
{
    cout << "Hello World!";
}
\end{minted}
\end{tcolorbox}
\begin{tcolorbox}[
    enhanced,
    attach boxed title to top left={xshift=6mm,yshift=-3mm},
    colback=moonstoneblue!20,
    colframe=moonstoneblue,
    colbacktitle=moonstoneblue,
    title=Welcome to \TeX{} -- \LaTeX{} Stack Exchange!,
    fonttitle=\bfseries\color{black},
    boxed title style={size=small,colframe=moonstoneblue,sharp corners},
    sharp corners,
]
\begin{minted}[linenos]{latex}
\documentclass{article}
\begin{document}
Einstein said $E=mc^2$!
\end{document}
\end{minted}
\end{tcolorbox}
\end{document}
```