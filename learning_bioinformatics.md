If want you've stumbled across this and would like some specific advice to your research area
please feel free to e-mail me directly at [root@finlaymagui.re](mailto:root@finlaymagui.re) and I'll
see whether I can offer anything useful!

# Getting started in bioinformatics

I came to bioinformatics from a mostly non-computer science background.
Due to this, I occasionally, get asked by colleagues and students for advice on
how and what to learn to get started in bioinformatics-based research areas. 

Exactly what a researcher will need to know to be effective in a bioinformatics
research project will be very topic dependent. For example, researchers working on 
human data may find using pre-existing tools and resources with [graphical user interfaces](http://en.wikipedia.org/wiki/Graphical_user_interface)
sufficient for their purposes.  On the other hand, researchers working in less developed
areas and non-model organisms may find themselves more often needing
to create or customise tools. 

Regardless, you will find working a bioinformatics reasearch project a lot easier if you
get acquainted with:

   * a **Unix shell** (e.g. [Bash](http://en.wikipedia.org/wiki/Bash_\(Unix_shell\)), or [Zsh](http://en.wikipedia.org/wiki/Z_shell))

   * a **scripting language** (e.g. [Python](http://en.wikipedia.org/wiki/Python_\(programming_language\)), [Perl](http://en.wikipedia.org/wiki/Perl)), or [R](http://en.wikipedia.org/wiki/R_\(programming_language\)), 

   * a **version control system** (e.g. [Git](http://en.wikipedia.org/wiki/Git_\(software\)))

   * an **interactive notebook** (e.g. [ipython notebooks](http://en.wikipedia.org/wiki/IPython#Notebook), or [R markdown + Knitr](http://kbroman.org/knitr_knutshell/pages/Rmarkdown.html)).


## Software Carpentry Workshops

If you are coming bioinformatics from next to nothing the easiest and quicket way to get a grounding the basics is to find yourself
**a [Software Carpentry](http://software-carpentry.org) (SWC) Boot-camp**.  These are free ~2 days workshops designed to develop
basic computational skills for researchers. They tend to be well put together, cover a lot of essentials,
and give you a good base from which to further explore and play with computational tools.
Sofware Carpentry is a great organisation for which I have a lot of time.
A list of future workshops is available [here](http://software-carpentry.org/workshops/index.html).

While the exact course content changes a little each time the one I taught on
introduced basics of the command line, python scripting, version
control systems, and R (mainly for visualisation).
The materials we used for that course are available [here](https://github.com/fmaguire/2013-11-14-exeter).

Your university/institution may offer similar workshops that will offer a good place to get started.
Instructors and teaching assistants on these courses are usually more than happy to give you some advice
on your specific research problem/area if you ask them.

## UNIX shell
As bioinformatics ineveitable ends up involving handling lots of text files (e.g. containing sequence data)
and doing various operations on them (searching, sorting, splitting,
annotating, comparing etc.) the tools in a UNIX shell such as [Bash](http://www.gnu.org/software/bash/) or [Zsh](http://www.zsh.org/) are by far
the easiest way to do this. 

A shell will pretty much always come with a lot of very useful programs such as 
the [GNU core utilities](http://www.gnu.org/software/coreutils/).  It will also provide 
a powerful way in which to combine the input and outputs of various programs and make efficient use of your
computational resources by controlling how things are run. On top of that, once you get comfortable with the shell you'll be able to [compile
programs](https://help.ubuntu.com/community/CompilingEasyHowTo)
 (not all tools you will use will be released as pre-compiled binaries
), [use various servers](http://polydistortion.net/doc/ssh.html) to make use of their computational
power (institutional core services, [amazon web services](http://aws.amazon.com/) etc.), and make use of the
many tools without graphical interfaces.

While it is possible to install environments such as [Cygwin](http://en.wikipedia.org/wiki/Cygwin)
to access Unix-like shells on Windows I highly recommend moving to a full Unix-based [operating system](http://en.wikipedia.org/wiki/Operating_system) such as
Apple's [OS X](http://en.wikipedia.org/wiki/OS_X) or [Linux](http://en.wikipedia.org/wiki/Linux).
This will save you a lot of headaches later on and almost all of the guides/manuals in bioinformatics will 
tend to assume you are using a Unix-based operating system.

I'd recommend Linux but OS X will serve your purposes fine especially if you already use it. The 
advantage of Linux is that it is free, will be being used on most of the servers you connect to 
and in the case of Bio-Linux comes preconfigured with lots of the standard bioinformatics tools.
There are various 'flavours' of Linux (known as [distributions](http://en.wikipedia.org/wiki/Linux_distribution)) however, for a new user I'd recommend [Mint](http://www.linuxmint.com) or [Bio-Linux](http://environmentalomics.org/bio-linux/).  Both of these are based off a well-polished and easily usable distribution ([Ubuntu](http://www.ubuntu.com/) but come pre-configured with better multimedia support and bioinformatics tools respectively.

If you don't want to totally abandon Windows you can [dual-boot](http://en.wikipedia.org/wiki/Multi-booting) with Linux (or OS X but 
it is a little bit harder) which will allow you to choose which operating system you want to use 
whenever you restart your computer. A guide to dual-booting windows and linux is available [here](https://help.ubuntu.com/community/WindowsDualBoot).
(Another option would be to run Linux in a [Virtual Machine](http://en.wikipedia.org/wiki/Virtual_machine) on Windows
or run Windows in a Virtual Machine on Linux. I'd not especially recommend doing this as bioinformatics is quite
computationally intensive and the process of virtualisation wastes some of the computer's resources.)

Anyway, once you are set-up with a Unix shell there are lots of resources out there to learn how to it. 
On top of the bootcamps mentioned above, it is worth just searching until you find a guide 
which best suits you.  However, here are a few possibilities:

* [linuxcommand.org](http://linuxcommand.org/learning_the_shell.php)

* [Surrey University Tutorial](http://www.ee.surrey.ac.uk/Teaching/Unix/)

* [Ryan's tutorials](http://ryanstutorials.net/linuxtutorial/)


## Scripting Language
While the shell is amazing there will be times where you will find it
much more convenient to break out a more powerful programming
language. Fortunately, [high-level languages](http://en.wikipedia.org/wiki/High-level_programming_language) that abstract away a lot
of the more awkward parts of programming are easy to learn, powerful,
and more than sufficient for most of the things you are likely to be doing. 
They also all come with lots of [libraries](http://en.wikipedia.org/wiki/Library_\(computing\))
that will make most tasks a lot easier.  
Furthermore, a lot of utilities will be written in these languages so
familiarity with them will allow you to modify existing tools if they
don't do exactly what you need them to do.

The language I'd recommend most is [Python](https://www.python.org) 
as it is modern, [widely-used](http://www.tiobe.com/index.php/content/paperinfo/tpci/index.html), has [many libraries](https://wiki.python.org/moin/UsefulModules) (including [bioinformatics ones](http://biopython.org/wiki/Main_Page). Also as a language it is designed to be easy to read which is especially helpful for beginners.
Other things that make Python great for starting with is [ipython](https://ipython.org), a really nice [interactive prompt](http://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) that allows you to rapidly test random bits of code
easily.

However, while Python is my personal preference it isn't your only
option: [Perl](https://www.perl.org) and [R](http://www.r-project.org) are both widely 
used in bioinformatics as well.

Where Perl really shines is for text based programs, it is pretty much 
built around [regular expressions](http://en.wikipedia.org/wiki/Regular_expression) (which are powerful ways in which to search text, think ctrl-f on steroids.  There are many [tutorials](http://regexone.com) online to help learn them). 
Perl also has a lot of legacy bioinformatics code and a very useful [bio-specific library](http://www.bioperl.rog/wiki/Main_Page) with more functions than the Python equivalent.
Unfortunately, it also has a reputation (only
partly warranted) of being arcane, difficult to read and
not as well adapted to modern usage as other languages.


[R](http://www.r-project.org), on the other hand, is far more of a domain specific language
that focusses on statistical analysis and data visualisation (as you
probably already know).  I highly recommend learning some R as you
will find it incredibly useful for manipulating datasets, performing
various statistical tests and plotting data.  In particular, 
[Rstudio] http://www.rstudio.com/) is a wonderful environment, [dplyr](http://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html) is fantastic for
data manipulation and [ggplot2](http://cran.r-project.org/web/packages/ggplot2/index.html)/[ggvis](http://ggvis.rstudio.com/) are great for data visualisation.
R also has a **large** [collection of libraries](https://cran.r-project.org) implementing almost any statistical test you can imagine and a lot of bioinformatics specific tools available via 
[Bioconductor](http://www.bioconductor.org/)
Many bioinformaticians will use R as their main language, however, it does lack some of the more general utility of less specialised languages such as Python or Perl (without putting in some additional work). 
I'd recommend learning a bit of R as a useful tool in addition to a bit of Python (which is how we decided to teach it in the [SWC Bootcamp])https://github.com/fmaguire/2013-11-14-exeter)).

I'll also add that both Python and R also have the advantage of having a useful means of creating
interactive notebooks (which I will explain in the
next section).


Again, there are lots of resources to learn a scripting language for bioinformatics but I'd recommend the following:

* [Codecademy](http://www.codecademy.com/en/tracks/python) - a tutorial for python
   that steps you through the language interactively in your browser

* [Rosalind](http://rosalind.info/problems/locations/) - a great website of bioinformatics problems that you can use any language you want to try to solve.  As with many things, I find this kind of free repeated practice is one the best ways to learn a language in. Rosalind has the advantage of making you incidentally familiar with many standard bioinformatic algorithms as you go. It gradually steps up in a systematic manner from simple things like calculate [GC%](http://en.wikipedia.org/wiki/GC-content) in a DNA sequence all the way up to writing your own [genome assemblers](http://en.wikipedia.org/wiki/Sequence_assembly))

* [MIT OCW - Introduction to Computer Science and Programming](http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-00sc-introduction-to-computer-science-and-programming-spring-2011/) - this is an MIT course that introduces you to the basics of computer and uses Python as a teaching language so gets you familiar with both at once.

## Version control
This is a tool that you tend to appreciate most only after you've been
bitten in the ass by not doing it. Learning how to effectively use a
[version control system (VCS)](http://en.wikipedia.org/wiki/Revision_control) will save you a lot of hair-pulling.  It will
also help you to collaborate with other bioinformaticians more easily.  
Think of it as super-powered version Microsoft Word's tracked changes feature.  
VCS are designed for keeping files organised and mainly help you avoid the
morass of that directory containing 20-30 different versions of the same file.  
They allow you to keep track of all the changes to any file within a folder (and its subfolders)
and enable you to revert back to earlier versions if you need.
While they are mainly designed for keeping track of scripts and text files modern VCS
work great for pretty much anything on your computer.
For example, I use them extensively when writing papers to keep track of various documents
and figure versions/changes.

Almost everyone will recommend one tool in particular: [Git](http://git-scm.com/).
It is a widely
Pretty much every analysis I do will be inside a [Git repository](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository) just because it makes life so much easier once you pass the initial hurdle
of learning to use it.  
One of the great things about Git is that it connects really well with a few free
online services ([GitHub](https://github.com/) and [Bitbucket](https://bitbucket.org/)) that allow you to
easily save your repository online (either publically or privately). This gives you a back-up of your work
and all its previous versions that you can access from anywhere with an internet connection.

There are plenty of online resources to teach you the basics:

* [try git](https://try.github.io/levels/1/challenges/1) - a nice interactive tutorial

* [Altassian's tutorial](https://www.atlassian.com/git/tutorials/) - a well-written tutorial from the Bitbucket creators

* [Git's own documentation](http://git-scm.com/book/en/Git-Basics)


## Organising your work and interactive notebooks
My final recommendation is to get familiar with an interactive notebooks.  
While a lot of people coming into bioinformatics will be familiar with keeping 
a lab-book due to their undergraduate lab practicals they can have difficulties when it comes
to keeping track of their computational work.  
For each analysis using a sensible directory structure containing clearly named files,
version control, commenting in your code and judiciously writing text-files that explain what you are
doing is highly recommended.  Another tool which is incredibly useful is that of interactive notebooks. 

Python, via [ipython notebooks](http://ipython.org/notebook.html), and R, via [knitr](http://yihui.name/knitr/), offer amazing digital note-books.  They are easy to use and allow you to combine
interactive and editable code snippets with well-formatted easy to
read notes as you are doing it.  You can use them to keep
track of what you are doing as you explore a new dataset, do tests,
reformat it, make plots etc.  They are pretty much the bioinformatics
and developer equivalent of a standard molecular lab-book.  One of the
things I really like about them is that you can always go back and
edit them (or edit ones other people have shared with you) to run all
the same analyses, plots and so on on a different dataset.  

Some bioinformaticians have submitted these with papers that allow
you to fully execute all the analyses used in their paper either on
their dataset or your own. Others have published [whole books](http://nbviewer.ipython.org/github/CamDavidsonPilon/Probabilistic-Programming-and-Bayesian-Methods-for-Hackers/blob/master/Chapter1_Introduction/Chapter1_Introduction.ipynb) written in them or [programming tutorials](http://nbviewer.ipython.org/gist/rpmuller/5920182) (note that these links are to static versions for sharing online to people without ipython installed. If you downloaded them and opened them as ipython notebooks on your local machine they would be
entirely interactive).

Pretty much every analysis I do will start out in an ipython notebook (or via R markdown+knitr in Rstudio) while
I explore the data and generally figure out what is going to work.
While I'll sometimes convert parts of a notebook to independent
scripts I will often just keep the notebook itself.  I, and others, also use them
extensively for teaching (as in the book and tutorial above).

Learning how to use these will come pretty naturally as you learn the
language but they both use a light-weight markup system called
markdown as a means of formatting the text you write in the notebook. However, the following
links may be useful:

* [Markdown tutorial](http://markdowntutorial.com/)

* [ipython notebook documentation](http://ipython.org/ipython-doc/2/notebook/index.html)

* [knitr book](https://github.com/yihui/knitr-book)
