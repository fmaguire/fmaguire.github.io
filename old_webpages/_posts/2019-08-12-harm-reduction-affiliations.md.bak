---
title: Harm Reduction Focused Specialities
author: finlaymaguire
permalink: /posts/harm-reduction-affl
tags: featured
icon: laptop
categories: posts
background-image: prot_struct.png
excerpt: Medical specialties most actively engaging in harm reduction research
---

I was wondering which medical specialties are really driving discussion and research in the world of harm reduction so I performed a quick crude analysis (code/notebooks are available [here](https://github.com/fmaguire/harm_reduction_pubmed)).
Perhaps unsuprisingly, public health is by far the most well represented specialty.
This is followed by psychiatry, and after a bit of a jump, infectious disease, family and emergency medicine.
Although there are more family doctors overall there are not necessarily as large a proportion actively engaged in research as hospital based clinicians.

![Harm Reduction Affiliations](/assets/harm_reduction.png)

Now the major caveats are this is not normalised by the relative size of different specialties i.e. there are a lot more family/GPs than infectious disease MDs.
This means small disciplines may actually be much more active within harm reduction research than the absolute numbers imply.
Unfortunately, this data was hard to get for the entire anglosphere publishing world so I figured it was better to just leave as absolute numbers.
The other major problem is that this analysis doesn't tally affiliations not named in english, this results in non-english harm reduction researchers being ignored even if they are publishing in english.
We aren't filtering out the same author appearing multiple times which may also be distorting in the case of a very active single site within harm reduction research.
We also are not considering the impact of differences in numbers of authors in different areas, this could also distort if say one specialty was entirely made up by affiliations from one or two 100-author papers.


## Methods
I grabbed the Canadian Medical Association (CMAs) [list](https://www.cma.ca/canadian-specialty-profiles) of medical specialties then grabbed every paper on pubmed mentioning "harm reduction" using [entrez direct tools](https://www.ncbi.nlm.nih.gov/books/NBK179288/).
This [list](https://github.com/fmaguire/harm_reduction_pubmed/blob/master/speciality_list.txt) was then manually tidied and stemmed to prevent repeats due to similar names for specialties across countries and hospitals e.g. anaesthsia vs anaesthiology.
The authors affiliations were then [scraped](https://raw.githubusercontent.com/fmaguire/harm_reduction_pubmed/master/pubmed_harm_reduction_affiliations.txt) from the medline formatted output using a crude [grep command](https://github.com/fmaguire/harm_reduction_pubmed/blob/master/generate_fig.sh). 
The list of author affiliations were searched using the CMA specialities list using grep and the results tallied in a [spreadsheet](https://github.com/fmaguire/harm_reduction_pubmed/blob/master/affiliation_counts.csv).
Finally, a quick python [script](https://github.com/fmaguire/harm_reduction_pubmed/blob/master/plot.py) was used to generate a plot.

