---
title: Detection of Academic Plagiarism
author: finlaymaguire
permalink: /posts/plagiarism-analysis
tags: featured
icon: laptop
categories: posts
background-image: prot_struct.png
excerpt: Direct copying of a paragraph without citation "doesn't meet the threshold for plagiarism"
---

## Background 

I was wondering what determined whether a baby is delivered via forceps or vacuum and how common each were.
My very patient partner sent me to look at the "Complicated Deliveries" Chapter of
["Avery's Disease of the Newborn"](https://www.sciencedirect.com/book/9781437701340/averys-diseases-of-the-newborn) 9th edition (published in 2012).
This chapter was written by Sarah A. Waller, Sameer Gopalani, and Thomas J. Benedetti.
There was a section that sounded a bit stylistically different from the rest of the paper so I decided to just paste it straight into google:

`Vacuum extraction was first described in 1705 by Dr. James Yonge, an English surgeon, several decades before the invention of the obstetric forceps. However, it did not gain widespread use until the 1950s, when it was popularized in a series of studies by the Swedish obstetrician Dr. Tage Malmström. By the 1970s, the vacuum extractor had almost completely replaced forceps for assisted vaginal deliveries in most northern European countries, but its popularity in many English-speaking countries, including the United States and the United Kingdom, was limited. By 1992, however, the number of vacuum-assisted deliveries surpassed the number of forceps-assisted deliveries in the United States, and by the year 2000 approximately 66% of operative vaginal deliveries were by vacuum (Ali and Norwitz, 2009; Hillier and Johanson, 1994).`

This showed me it had been lifted verbatim from an 2009 [paper](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2672989/#!po=1.82927):

`Vacuum extraction was first described in 1705 by Dr. James Yonge, an English surgeon, several decades before the invention of the obstetric forceps. However, it did not gain widespread use until the 1950s, when it was popularized in a series of studies by the Swedish obstetrician Dr. Tage Malmström. [5] By the 1970s, the vacuum extractor had almost completely replaced forceps for assisted vaginal deliveries in most northern European countries, but its popularity in many English-speaking countries, including the United States and the United Kingdom, was limited. By 1992, however, the number of vacuum assisted deliveries surpassed the number of forceps deliveries in the United States, and by the year 2000 approximately 66% of operative vaginal deliveries were by vacuum. [6]`

Although they do cite this paper in the textbook paragraph, they remove the two references from the original text and add this new "Hillier and Johanson, 1994" citation despite it not being related to the original section.
They don't indicate that this textbook section is a direct quote either which puts them in pretty rocky plagiarism grounds.
This section also survived into the 10th edition of the textbook published in 2018.

Like buses this kind of "scholarship" doesn't tend to come along one at a time.
Therefore, I decided to see if there were any more plagiarised sections of this chapter.

## Plagiarism Analysis

My [analysis](https://github.com/fmaguire/plagiarism_analysis) was quick and simple as I was only looking for large reproduced sections.
I grabbed the text for the chapter and separated the setences (tokenized) using the Natural Language Toolkit (NLTK).
Each sentence was then used as a google search query and the top 5 hits recovered for each sentence.
I then grabbed the top 10 most frequent hits which contained self-hits to the textbook but also 3 papers published in 2009: the aforementioned [Ali & Norwitz, 2009](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2672989/), [Kotaska et. al., 2009](https://www.ncbi.nlm.nih.gov/pubmed/19646324), and [Prapas et. al, 2009](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2633252/).

I downloaded the text and tokenized these 3 papers. 
Each sentence was compared between the papers and the textbook chapter using [levenshtein](https://en.wikipedia.org/wiki/Levenshtein_distance) string distances.
All those sentences with a string distance less than 24 were reported and analysed manually.

| Levenshtein | Possible Plagiarised Sentence                     |	Plagiarism Source | Original Sentence                                 | 
|-------------|---------------------------------------------------|-------------------|---------------------------------------------------|
| 0 	      | The rate of neonatal trauma and respiratory di... | prapas.txt        | The rate of neonatal trauma and respiratory di... | 
| 5 	      | The rate of neonates with Apgar scores ≤ 4 at ... | prapas.txt        | The rate of neonates with Apgar scores ≤6 at 1... | 
| 10 	      | The aim of the present study is to compare the... | prapas.txt        | The aim of their study was to compare the shor... | 
| 16 	      | There are 2 main types of disposable cups... 	  | ali.txt           | There are two main types of disposable cups, w... | 
| 17 	      | Vacuum extraction was first described in 17... 	  | ali.txt           | Vacuum extraction was first described in 1705 ... | 
| 19 	      | Out of 7098 deliveries, 374 were instrument as... | prapas.txt        | Of 7098 deliveries, 374 were instrument assist... |
| 20 	      | The original vacuum device developed in the 19... | ali.txt           | The original vacuum device developed in the 19... |
| 21 	      | The soft cup is a pliable funnel- or bell-s... 	  | ali.txt           | The soft cup is a pliable, funnel- or bell-sha... | 
| 23 	      | Results: The incidence of 3rd degree laceratio... | prapas.txt        | The incidence of third-degree lacerations and ... |

Digging into these the [Prapas et. al, 2009](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2633252/) and [Ali & Norwitz, 2009](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2672989/) cases were pretty clear.

This paragraph on page 9 of [Ali and Norwitz, 2009](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2672989):
`The original vacuum device developed in the 1950s by the Swedish obstetrician Dr. Tage Malmström was a disc-shaped stainless steel cup attached to a metal chain for traction (Figure 1). Due to technical problems and lack of experience with this instrument, vacuum devices did not gain popularity in the United States until the introduction of the disposable cups in the 1980s. There are 2 main types of disposable cups, which can be made of plastic, polyethylene, or silicone. The soft cup is a pliable funnel- or bell-shaped cup, which is the most common type used in the United States (Figure 2A). The rigid cup is a firm mushroom-shaped cup (M cup) similar to the original metal disc-shaped cup, and is available in 3 sizes (40, 50, and 60) (Figure 2B)`

Is reproduced verbatim on the 9th Edition page 150 with references to figures in the original paper removed and without citation.
`The original vacuum device developed in the 1950s by the Swedish obstetrician Dr. Tage Malmström was a discshaped stainless steel cup attached to a metal chain for traction. Because of technical problems and lack of experience with this instrument, vacuum devices did not gain popularity in the United States until the introduction of the disposable cups in the 1980s. There are two main types of disposable cups, which can be made of plastic, polyethylene, or silicone. The soft cup is a pliable, funnel- or bellshaped cup, which is the most common type used in the United States. The rigid cup is a firm mushroom-shaped cup (M cup) similar to the original metal disc-shaped cup and is available in three sizes`

The abstract of [Prapas et. al 2009](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2633252/) is reproduced (and cited) with only some minor changes and removals:
`We conducted a medical record review of live born singleton, vacuum and forceps-deliveries. Maternal and delivery characteristics were recorded. Maternal and neonatal outcomes were also assessed. Out of 7098 deliveries, 374 were instrument assisted, 324 were conducted by vacuum (86.7%) and 50 by forceps (13.3%).
 The incidence of 3rd degree lacerations and periurethral hematomas was similar between vacuum and forceps (3.4% vs. 2% and 0.3% vs 0% respectively), while perineal hematomas were more common in forceps compared with vacuum application (2% vs 0.3% respectively), albeit not significantly. The rate of neonates with Apgar scores ≤ 4 at 1 min was significantly higher after forceps compared with vacuum delivery (18% vs 5.2% respectively, p = 0.0003). The same observation was made concerning the neonatal intensive care unit (NICU) admissions (38% vs 11% respectively, p = 0.0001). The rate of neonatal trauma and respiratory distress syndrome did not differ significantly between the two groups.
Results of the present study indicate that both modes of instrumental vaginal delivery are safe with respect to maternal morbidity and neonatal trauma. However, forceps application increases the risk of neonatal compromise consequently necessitating their admission in their admission in the NICU.`

For comparison on page 148-149 of the 9th Edition:
`They conducted a medical record review of live born singleton, vacuum- and forceps-assisted deliveries. Of 7098 deliveries, 374 were instrument assisted, 324 were conducted by vacuum (86.7%), and 50 were assisted by forceps (13.3%). The incidence of third-degree lacerations and periurethral hematomas was similar between vacuum and forceps (3.4% vs. 2% and 0.3% vs. 0%, respectively), whereas perineal hematomas were more common in forceps compared with vacuum application (2% vs. 0.3%, respectively), albeit not significantly. The rate of neonates with Apgar scores ≤6 at 1 min was significantly higher after forceps compared with vacuum delivery (18% vs. 5.2%, respectively; p = 0.0003). The rate of neonatal trauma and respiratory distress syndrome did not differ significantly between the two groups. The conclusion was that both modes of instrumental vaginal delivery are safe in regard to maternal morbidity and neonatal trauma (Prapas et al, 2009).` 

It's very weird to me that the original cited text uses a different Apgar score threshold of ≤ 4. 
So either they messed up in copying the original text or changed it for some reason (updated guidelines possibly) but it surely means the statistical supports presented are totally incorrect as they related to different thresholds.
The description of the conclusions of this study in the chapter also doesn't include the corollary from the original paper that "forceps application increases the risk of neonatal compromise consequently necessitating their admission in their admission in the NICU.".

In conclusion, this is a clear case of plagiarism in the case of the the uncited section lifted from [Ali and Norwitz, 2009](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2672989), a case of very dubious practice in the direct copying without indicating quotation again from this paper, and finally another case of dubious practice and explicit introduction of error in plagiarism of [Prapas et al, 2009](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2633252/).

## Reporting

- Jan 2nd 2018: I felt this needed reporting so I sent an email so the two textbook editors Christine Gleason and Sandra Juul (note not the authors of this chapter).

- Jan 3rd 2018: Christine Gleason forwarded this to Sarah Barth a "Senior Content Strategist" at Elsevier.

- Jan 18th 2018: Sarah Barth emailed me acknowledging: "Thank you very much for your email and for sharing your findings with us.  Please be assured we are looking into it—plagiarism is something we take very seriously of course."

- Jul 12th 2018: I emailed Sarah Barth asking if there was any outcome to their "looking into it".

- Jul 12th 2018: She replied instantly that "Yes, of course.  We have corrected quotations and references in the digital version, and these corrections will also be made in the print book when we go back on press.  The borrowed language does not meet the threshold of plagiarism, but absolutely should have been referenced." with a list of the following corrections:

9th Edition:

> Chapter 15, page 148 (page 3 of the PDF) – Insert quotation marks in the 3rd paragraph on the right side starting at “They conducted a medical record review of live born singleton…” and ending at “…safe in regard to maternal morbidity and neonatal trauma” at the top of page 149 (page 4 of the PDF)

> Chapter 15, page 149 (page 4 of the PDF) – In “Apgar scores ≤6” at the top of the left side of the page, “6” should be changed to “4”

> Chapter 15, page 149 (page 4 of the PDF) – In the last three lines at the bottom of the right side of the page, insert quotation marks starting at “Vacuum extraction was first described in 1705…” and ending at “…by the year 2000 approximately 66% of operative vaginal deliveries were by vacuum” at the top of page 150 (page 5 of the PDF)

> Chapter 15, page 150 (page 5 of the PDF) – Insert quotation marks at the beginning of the 3rd paragraph on the left side, starting at “The original vacuum device developed in the 1950s by the Swedish obstetrician…” and ending at “…similar to the original metal disc-shaped cup and is available in three sizes” at the top of the right side. After the closing quotation mark, please add: (Ali and Norwitz, 2009)

10th Edition:

> Chapter 15, page 161 (page 4 of the PDF) – Insert quotation marks in the second paragraph on the right side starting at “Vacuum extraction was first described in 1705 by Dr. James Yonge…” and ending at …approximately 66% of operative vaginal deliveries were by vacuum”

> Chapter 15, page 162 (page 5 of the PDF) – Insert quotation marks at the beginning of the third paragraph on the left side starting at “The original vacuum device developed in the 1950s by the

> Swedish obstetrician…” and ending at “…similar to the original metal disc-shaped cup and is available in three sizes”. After the closing quotation mark, please add: (Ali and Nortwitz, 2009)

## Conclusion 

Elsevier's [own definition of plagiarism](https://www.elsevier.com/editors/perk/plagiarism-complaints):
"Plagiarism is committed when one author uses another work (typically the work of another author) without permission, credit, or acknowledgment. Plagiarism takes different forms, from literal copying to paraphrasing the work of another. 
Literal copying is reproducing a work word for word, in whole or in part, without permission and acknowledgment of the original source. Literal copying is obvious plagiarism and is easy to detect by comparing the papers in question."

So while the verbatim copying with citation isn't clear cut under their definition, doing so without citation very clearly falls under this.
In the case of the vacuum delivery history section plagiarised from the [Ali and Norwitz, 2009] paper this is clearly plagiarism.
The fact that references were removed and individual numerical values were changed in the plagiarised sections indicates that this process was not remotely accidental.
At some point I'll do a bit more of an exhaustive analysis.
