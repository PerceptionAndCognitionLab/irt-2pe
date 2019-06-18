# Do Items Order? Analysis with Shift-Scale IRT Models

Manuscript by Julia Haaf, Ed Merkle, and Jeff Rouder.

Invariant item ordering refers to the statement that if one item is harder than another for one person, then it is harder for all people. Whether item ordering holds is a psychological statement because it describes how people may qualitatively vary. Yet, modern item response theory (IRT) makes an *a priori* commitment to item ordering.  The Rasch model, for example, posits that items must order.  Conversely, the 2PL model posits that items never order. Needed is an IRT model where item ordering or its violation is a function of the data rather than an *a priori* commitment. We develop two-parameter shift-scale models for this purpose, and find that the two-parameter uniform offers many advantages. We show how item ordering may be assessed using Bayes factor model comparison, and discuss computational issues with shift-scale IRT models.

Manuscript is written in Rmarkdown, and text and the code for analysis are included in a single document.  The document for this paper, with all text and code, may be found at papers/jmp1/p.Rmd.

Data for the psychophysics example are in papers/jmp1/sl2.dat, and the cleaning code is included in papers/jmp1/p.Rmd.
