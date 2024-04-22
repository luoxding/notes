# 中文Latex图书模板

用Latex编写中文书是让人头疼的，如果不是需要输入很多公式，很多人是不愿意用latex排版中文书的。

在ctex宏包发布之前， latex系统对中文排版的支持一直不太理想。虽然用CJK能让中文正常显示，但是一些排版细节， 如章节号、行距、字体选择、缩进等都需要写很多命令重新定义。ctex宏包较好地解决了这个问题。

这里给出一个latex中文图书模板。 该模板主要包括：

1. 扉页
2. 序言
3. 前言
4. 目录
5. 部分
6. 章
7. 章以下标题
8. 分栏模式
9. include包含其他tex文档
10. 标题名称转换
11. 标题部分加入目录
12. 自动生成索引
13. 参考文献（待完善）
14. 生成目录、索引以及参考文献的超链接
15. 后记

编译的方法是： 将代码部分保存到文本文件中， 用UTF-8编码。 之后用XeLaTeX编译即可生成pdf文档。 虽然生成的图书效果值得商榷， 但是相信编译为书稿后， 再交给专业排版人员， 一定能省很多事。

利用这个模板，编写植物名录、植物图集等会容易很多。可以借助其他脚本语言如Python或者R处理相应的数据库，生成tex代码用包含命令\include{}之后，再编译即可。



```latex
\documentclass[utf8]{book}
\usepackage{titletoc}
\usepackage{titlesec}
\usepackage{ctexcap}
\usepackage[b5paper,text={125mm,195mm},centering,left=1in,right=1in,top=1in,bottom=1in]{geometry}
\usepackage[]{geometry}
\usepackage{imakeidx}
\usepackage{multicol}
\usepackage{hyperref}
\makeindex
\bibliographystyle{plain}
\begin{document}
\title{\heiti 中国植物多样性地理图集}
\author{\fangsong 中国科学院植物研究所 编著}
\date{2018年1月}

\frontmatter
\maketitle

\chapter{序 I}

这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言

\chapter{序 II}

这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分是序言这部分

\chapter{前~言}

这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分是前言这部分

这部分是前言

\renewcommand\contentsname{目~录}
\tableofcontents

\mainmatter

\part{总论}

\chapter{中国植物调查的历史}

\section{一级节标题}

\subsection{二级节标题}

\subsubsection{三级节标题}

\begin{multicols}{2}

清朝中期， 外国人就开始中国采集植物标本。清朝中期， 外国人就开始中国采集植物标本。清朝中期， 外国人就开始中国采集植物标本。清朝中期， 外国人就开始中国采集植物标本。清朝中期， 外国人就开始中国采集植物标本。清朝中期， 外国人就开始中国采集植物标本。

\end{multicols}

\chapter{植物区系分区}

\section{一级节标题}

\subsection{二级节标题}

\subsubsection{三级节标题}

\begin{multicols}{2}
和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集植物\index{调查}和标本采集植物调查和标本采集植物调查和标本采集植物调查和标本采集

\end{multicols}

\part{植物多样性分区概述}

\chapter{东北地区}

\begin{multicols}{2}
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in \index{reprehenderit} in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
\end{multicols}

\chapter{华北地区}
\begin{multicols}{2}
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
\end{multicols}

\include{angiosperms}

\appendix

\chapter{APG分类系统的科名}

内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容文内容正文内容正文内容正文\index{内容}

内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容附录内容正文内容正文\cite{DK1}.

\renewcommand\indexname{索~~引}
\printindex
\addcontentsline{toc}{chapter}{索~引}

\backmatter

\addcontentsline{toc}{chapter}{参考文献}

\begin{thebibliography}{参考文献}
\bibitem[Knuth1 et al. 1997]{DK1} D. Knuth, T.A.O.C.P. , Vol. 1, Addison-Wesley, 1997.
\bibitem[Knuth2]{DK2} D. Knuth, T.A.O.C.P. , Vol. 2, Addison-Wesley, 1997.
\bibitem[TONG YH 2014]{TONG} TONG YH, PANG KS, XIAN NH, 2014. Carpinus insularis (Betulaceae), A new species from Hong Kong [J]. J Trop Subtrop Bot, 22(2): 121-124. [童毅华， 彭权森， 夏念和，2014. 香港桦木科一新种——香港鹅耳枥 [J]. 热带亚热带植物学报，22(2):121-124.]
\bibitem[XIA NH 2008]{XIA} XIA NH, DENG YF, YIP KL, 2008. Syzygium impressum (Myrtaceae), A new species from Hong Kong [J]. J Trop Subtrop Bot, 16(1):19-22. [夏念和，邓云飞，叶国梁，2008. 香港桃金娘科一新种-凹脉赤楠 [J].热带亚热带植物学报，16(1):19-22.]
\end{thebibliography}

\chapter{后~~记}

后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容后记内容

\begin{flushright}
作~~者~~~~~~~~~

2018年1月~~~~~
\end{flushright}

\end{document}
```



