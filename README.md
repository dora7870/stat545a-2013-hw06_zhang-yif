stat545a-2013-hw06_zhang-yif
============================
   * Download the following files into an empty directory:
-    - Input data: [`income.tsv`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/data/income.tsv) 
-    This is a census income data. I found the original dataset [`here`](http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data)
-    - Scripts: [`01_dataClean.R`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/Rscripts/01_dataClean.R), [`02_filterReorder.R`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/Rscripts/02_filterReorder.R), and [`03_dataAggregate.R`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/Rscripts/03_dataAggregate.R) 
-    - Makefile: [`master.R`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/Rscripts/master.R)
   * Open `master.R` in RStudio and click on "Source".
   * The following new files are generated after running the pipeline:
-    - [`barchart_occu.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/barchart_occu.png)
-    - [`stripplot_incomeHour.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/stripplot_incomeHour.png)
-    - [`barchart_ageCount.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/barchart_ageCount.png)
-    - [`stripplot_ageHour.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/stripplot_ageHour.png)
-    - [`stripplot_ageHourBySex.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/stripplot_ageHourBySex.png)
-    - [`stripplot_ageHourByIncome.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/stripplot_ageHourByIncome.png)
-    - [`stripplot_occuHourByAge.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/stripplot_occuHourByAge.png)
-    - [`stripplot_occuHourByIncome.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/stripplot_occuHourByIncome.png)
-    - [`stripplot_incomeByHours_Middle-aged.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/stripplot_incomeByHours_Middle-aged.png)
-    - [`stripplot_incomeByHours_Senior.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/stripplot_incomeByHours_Senior.png)
-    - [`stripplot_incomeByHours_Young.png`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/graphs/stripplot_incomeByHours_Young.png)
-    - [`income_clean1.tsv`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/data/income_clean1.tsv)
-    - [`income_clean2.tsv`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/data/income_clean2.tsv)
-    - [`income_glmFit.tsv`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/data/income_glmFit.tsv)
-    - [`income_glmFit_someOccup.tsv`](https://github.com/dora7870/stat545a-2013-hw06_zhang-yif/blob/master/data/income_glmFit_someOccup.tsv)
