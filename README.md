# signlines
LaTeX package for creating lines for signing names on e.g. contracts in an easy way


## Usage
Simply import the `signlines` package and use the `singleline` or `doubleline` command:
``` latex
... 

\usepackage{signlines}

...

\begin{document}

...

\doubleline{Person 1}{Person 2}

...
\end{document}

```



## Installation
Running the `install_linux.sh` script found in this repo should make `signlines` globally available on your system:
```
$ git clone https://github.com/mathialo/signlines.git
$ cd signlines
$ sudo ./install_linux.sh
```
I have only tested this on linux-based systems, but it might work on OS X as well. 
