# Getting started in basic bioinformatics

My work is mainly on omics approaches to understanding the evolution
and maintenance of endosymbiosis.  I've always been a bit of a
computer geek but really started to focus on bioinformatics during my
undergraduate. Occasionally, colleagues and students will ask me for advice 
on what and how to learn to conduct effective research using basic bioinformatics.

Exactly how much computational skills you will need to do a bioinformatics 
research project is very topic dependent. For example, researchers working on 
human data may be able to get away with using the relative plethora of tools and
resources available for human genetics.  On the other hand, researchers on
less trodden paths and non-model organisms may find themselves often needing
to create or customise tools for their purposes. If you have more specific questions
please feel free to e-mail me directly at (root@finlaymagui.re)

Regardless, whatever you are working on life will be a lot easier if you
get acquainted with:
   - the UNIX shell (Mac or Linux),
   - a scripting language (e.g. Python, Perl, R), 
   - a version control system (e.g. Git)
   - interactive notebooks (e.g. ipython notebooks, R markdown and knitr).

The easiest way to quickly get a grounding in these topics is to find yourself
**a Software Carpentry (SWC) Boot-camp**.  These are free ~2 days workshops designed to develop
basic computational skills for researchers. They tend to be really well done, cover a lot of essentials,
and give you a good basecamp from which to explore and play with computational tools.
Sofware Carpentry is a great organisation for which I have a lot of time.

The exact course content changes a little each time but the one I taught on
introduced basics of the command line, python scripting, version
control systems, and R (mainly focussed on using R for visualisation).
The materials we used for that course are available here if you fancy
a gander:  https://github.com/fmaguire/2013-11-14-exeter

## The UNIX shell/Command Line
As you'll be handling lots of text files (containing sequence data)
and doing various operations on them (searching, sorting, splitting,
annotating, comparing etc) the tools in a UNIX-based shell are by far
the easiest way to do this. The shell offers very powerful ways in
which to combine inputs and outputs of various programs.   On top of
that once you get comfortable with the shell you'll be able to compile
programs (not all tools are released as pre-compiled binaries
unfortunately), use various servers if you need more computational
power (institute core resources, amazon web services etc), and use the
many tools that don't have graphical interfaces.
While you can install emulators for UNIX-based shells on windows (e.g.
cygwin) I highly recommend moving to either a Mac (which you may well
already use) or Linux operating system. I'd recommend Mint [[1]] or
Bio-Linux [[2]] (both of which are based on Ubuntu) for a new Linux user
but Mac OSX should serve your purposes fine too. The advantage of
Linux is that it is free, you will encounter various flavours of it on
almost every server you connect to, and in the case of Bio-Linux comes
preconfigured with lots of the standards bioinformatics tools. If you
don't want to totally abandon windows it is possible to dual-boot[3]
with Linux (or OSX but it is slightly harder).
There are lots of resources out there to learn command line/shell
skills from (on top of the bootcamps above).  Really, the best way is
to just search until you find a guide that suits you best, here is a
few possiblities though:
    - http://linuxcommand.org/learning_the_shell.php
    - http://www.ee.surrey.ac.uk/Teaching/Unix/
    - http://ryanstutorials.net/linuxtutorial/

## Scripting Language
While the shell is amazing there will be times where you will find it
much more convenient to break out a more powerful programming
language. Fortunately, high-level languages that abstract away a lot
of the more awkward parts of programming are easy to learn, powerful,
and more than sufficient for anything you are likely to be doing. A
lot of tools will also be written in languages like these so
familiarity with them will allow you to modify existing tools if they
don't do exactly what you need them to do.  The language I'd recommend
most is Python [4] as it is modern, has special libraries [5,6] to do
just about anything and as a language focusses on the code being very
readable.  It also has a really good interactive prompt in the form of
ipython [21] that allows you to rapidly test random bits of code
easily.
However, while Python is my personal preference it isn't your only
option: Perl and R are both widely used in bioinformatics as well.
Perl [7] is great especially for purely text based things, it feels
built around regular expressions (powerful tools to search text that
you will use a lot in the shell, with many available tutorials [8]).
It also has a lot of legacy bioinformatics code and a well-written bio
specific library [9].  Unfortunately, it also has a reputation (only
partly warranted) of being arcane, difficult to read and not as well
adapted to modern usage as other languages (especially
visualisation/graphics).
R [10], on the other hand is far more of a domain specific language
that focusses on statistical analysis and data visualisation (as you
probably already know).  I highly recommend learning some R as you
will find it incredibly useful for manipulating datasets, performing
various statistical tests and plotting data.  In particular, using
Rstudio [11] along with the dplyr [12] and ggplot2/ggvis [13]
libraries by Hadley Wickham will be incredibly useful from time to
time.  R also has a LARGE collection of almost any statistical test
[14] you can imagine and a lot of bioinformatics specific tools via
Bioconductor [15].  Many use R as their main language but it does lack
some of the more general utility of less specialised languages such as
Python or Perl.  I'd recommend it as something learn in addition to a
bit of Python (which is how we decided to teach it in the SWC
Bootcamp).

Python and R also have the advantage of having a means of creating
interactive notebooks while using them which I will explain in the
next section.
Again there are lots of resources but I'd recommend (and the SWC site
and camps of course!):
    - http://www.codecademy.com/en/tracks/python (tutorial for python
   that steps you through the language interactively in your browser)
    - http://rosalind.info/problems/locations/ (a great website of
      bioinformatics problems that you can use any language you want to try
      to solve, this kind of practice is the best way to learn a language in
      my opinion. It gradually steps up in a systematic manner from simple
      things like calculate GC% in a DNA sequence all the way up to writing
      your own genome assemblers)
    - http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-00sc-introduction-to-computer-science-and-programming-spring-2011/
         (MIT course that does the basics of computer science using Python as
         the teaching language)

## Version control
This is a bit that you tend to appreciate most only after you've been
bitten in the ass by not doing it. Learning how to effectively use a
version control system (VCS) will save a lot of hair-pullin.  It will
also help you to collaborate with other people more easily.  Think of
it as Microsoft Word tracked changes on crack.  VCS are mainly
designed for keeping things organised and mainly help you avoid the
morass of that directory containing 20-30 versions of a file.  They
allow you to keep track of changes in a whole folder (and its
subfolders) and revert back to any previous version of any of those
files whenever you want.  While they are principally designed for
codebases VCS work great for pretty much everything, for example, I
heavily use them for writing papers and keeping track of various
document and figure versions.
 Almost everyone will recommend one tool in particular: Git [16].
 Pretty much every analysis I do will be inside a git repository just
 because it makes life so much easier once you pass the initial hurdle
 of learning to use it.  Git also connects really well with a few free
 online services (GitHub [17] and Bitbucket [18]) that allow you to
 easily post work online (or keep it private but still have the benefit
 of easy online back ups that you can access anywhere). To yet again
 bang the drum of SWC they almost always teach the basics of git but
 there are other nice resources out there (e.g. interactive ones like
 https://try.github.io/levels/1/challenges/1 or just nice clear
 documentation like https://www.atlassian.com/git/tutorials/ ).

## Interactive notebooks
 The final recommendation is that of interactive notebooks.  Python,
 via ipython notebooks [19], and R, via knitr [20], offer these amazing
 digital note-books.  They are easy to use and allow you to combine
 interactive and editable code snippets with well-formatted easy to
 read notes as you are doing it.  You can either use them to just keep
 track of what you are doing as you explore a new dataset, do tests,
 reformat it, make plots etc.  They are pretty much the bioinformatics
 and developer equivalent of a standard molecular lab-book.  One of the
 things I really like about them is that you can always go back and
 edit them (or edit ones other people have shared with you) to run all
 the same analyses, plots on a different dataset.  Some bioinformatics
 academics are even submitting these with papers these days that allow
 you to fully execute all the analyses used in their paper either on
 their dataset or your own.  Pretty much every analysis I do will start
 out in an ipython notebook (or via R markdown+knitr in Rstudio) while
 I explore the data and generally figure out what is going to work.
 While I'll sometimes convert parts of a notebook to independent
 scripts I will often just use the notebook itself.  I also use them
 extensively for teaching, here is an example of a python tutorial that
 was made in an ipython notebook
 http://nbviewer.ipython.org/gist/rpmuller/5920182 (note that is static
 for sharing online but if you install ipython notebook and open it
using that it would be entirely interactive).
Learning how to use these will come pretty naturally as you learn the
language but they both use a light-weight markup system called
markdown as a means of formatting the text notes you write so this
tutorial might be useful: http://markdowntutorial.com/ as well as just
the general documentation on the ipython [21] and knitr websites [20].

## Links/References
[1] - http://www.linuxmint.com/
[2] - http://environmentalomics.org/bio-linux/
[3] - https://help.ubuntu.com/community/WindowsDualBoot
[4] - https://en.wikipedia.org/wiki/Python_(programming_language)
[5] - https://wiki.python.org/moin/UsefulModules
[6] - http://biopython.org/wiki/Main_Page
[7] - https://www.perl.org/
[8] - http://regexone.com/
[9] - http://www.bioperl.org/wiki/Main_Page
[10] - http://www.r-project.org/
[11] - http://www.rstudio.com/
[12] - http://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html
[13] - http://cran.r-project.org/web/packages/ggplot2/index.html
[14] - https://cran.r-project.org
[15] - http://www.bioconductor.org/
[16] - http://git-scm.com/
[17] - https://github.com/
[18] - https://bitbucket.org/
[19] - http://ipython.org/notebook.html
[20] - http://yihui.name/knitr/
[21] - http://ipython.org/
