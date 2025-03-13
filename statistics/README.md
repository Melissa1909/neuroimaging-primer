# Statistics 📊

## Group comparisons
Overview of common statistical tests for group comparisons

![Group_comparisions](https://github.com/Melissa1909/neuroimaging-primer/blob/main/statistics/statistical-tests-comparison.svg)

### 📊 t-tests

🔵 **Independent Samples t-test**
- Purpose: Compare means between two independent groups 
- Key features:  
  - Simple to understand and communicate 
  - Only compares two groups 
- Limitations:  
  - Cannot handle missing data (complete case analysis only) 
  - No repeated measures 
  - No adjustment for covariates 
- Assumptions:  
  - Independence of observations 
  - Normality of data in each group 
  - Homogeneity of variance (equal variances) 
- Testing assumptions:  
  - Normality: Shapiro-Wilk test, Q-Q plots 
  - Variance equality: Levene's test, F-test 
- Alternative if assumptions violated: Welch's t-test (unequal variances), Mann-Whitney U test (non-parametric) 
 
🔵 **Paired Samples t-test**
- Purpose: Compare means between two related measurements 
- Key features:  
  - Accounts for within-subject correlation 
  - Increased statistical power for paired designs 
- Limitations:  
  - Cannot handle missing data (requires complete pairs) 
  - Limited to two time points only 
  - Cannot incorporate multiple predictors 
- Assumptions:  
  - Paired observations 
  - Normally distributed differences 
- Testing assumptions:  
  - Normality of differences: Shapiro-Wilk test, Q-Q plots 
  - Alternative if assumptions violated: Wilcoxon signed-rank test (non-parametric) 

### 📊 General Linear Models (GLM)

- Purpose: Unified framework that includes t-tests, ANOVA, ANCOVA, and regression 
- Primary formula: Y = b*X + e 

🔵 **One-way ANOVA** 
- Purpose: Compare means across three or more independent groups 
- Key features:  
  - Extends t-test to multiple groups 
  - Controls family-wise error rate for multiple comparisons 
- Limitations:  
  - Cannot handle missing data 
  - No repeated measures 
  - Assumes equal variances across groups 
- Assumptions:  
  - Independence of observations 
  - Normality within groups 
  - Homogeneity of variance 
- Testing assumptions:  
  - Normality: Shapiro-Wilk, Q-Q plots 
  - Homogeneity: Levene's test, Bartlett's test 
- Alternative if assumptions violated: Welch's ANOVA, Kruskal-Wallis test (non-parametric) 

🔵 **Repeated Measures ANOVA** 
- Purpose: Compare means across three or more related measurements 
- Key features:  
  - Accounts for within-subject correlation 
  - Handles multiple time points 
- Limitations:  
- Cannot handle missing data (requires complete cases) 
- Assumes sphericity (often violated in longitudinal data) 
- Rigid correlation structure (compound symmetry) 
- Assumptions:  
- Independence between subjects 
- Normality of residuals 
- Sphericity (equal variances of differences between pairs) 
- Testing assumptions:  
- Normality: Shapiro-Wilk, Q-Q plots 
- Sphericity: Mauchly's test 
- Alternative if assumptions violated: Greenhouse-Geisser or Huynh-Feldt corrections, Friedman test (non-parametric) 

🔵 **Mixed ANOVA** 
- Purpose: Analyze effects of both between-subjects and within-subjects factors 
- Key features:  
  - Combines between-subject and within-subject factors 
  - Can test interactions between time and group  
- Limitations:  
  - Cannot handle missing data 
  - Assumes sphericity for within-subject effects 
  - Limited to balanced designs 
- Assumptions:  
  - Independence of observations between groups 
  - Normality of residuals 
  - Homogeneity of variance between groups 
  - Sphericity for within-subjects factors 
- Testing assumptions:  
  - Combination of tests for one-way and repeated measures ANOVA 
  - Alternative if assumptions violated: Linear mixed models (LMM) 

🔵 **ANCOVA (Analysis of Covariance)**
- Purpose: Compare means while controlling for covariates 
- Key features:  
  - Controls for continuous covariates 
  - Can increase statistical power 
- Limitations:  
  - Cannot handle missing data 
  - Assumes homogeneity of regression slopes 
  - Sensitive to measurement error in covariates 
- Assumptions:  
  - All ANOVA assumptions 
  - Linearity between covariate and dependent variable 
  - Homogeneity of regression slopes (parallel slopes across groups) 
  - Reliable measurement of covariate 
- Testing assumptions:  
  - ANOVA assumption tests plus: 
  - Linearity: Scatterplots with regression lines 
  - Homogeneity of regression slopes: Testing interaction between group and covariate 

### 📊 Linear Mixed Models (LMM)

- Purpose: Account for hierarchical, clustered, or longitudinal data 
- Primary formula: Y = b*X + Zu + e 
  - Zu = design matrix and vector for random effects  
- Key features:  
  - Can handle missing data (assuming missing at random) 
  - Random intercepts for subjects account for baseline differences 
  - Random slopes for subjects allow for individual trajectories over time 
  - Flexible correlation structures for repeated measures 
  - Can incorporate time-varying covariates 
  - Handles unbalanced designs and irregular measurement times 
  - No sphericity assumption 
  - Can model both continuous and categorical predictors 
  - Extension of GLM by adding random effects to account for clustered or longitudinal data structures. 
- Limitations:  
  - More complex to specify and interpret 
  - Requires decisions about random effects structure 
  - Computationally more intensive 
- Assumptions:  
  - Linearity between predictors and outcome 
  - Normality of residuals 
  - Homogeneity of variance 
  - Independence of errors (after accounting for random effects) 
  - Normality of random effects 
- Testing assumptions:  
  - Residual plots, Q-Q plots for residuals and random effects 
  - Primarily visual diagnostics 

### 📊 Generalized Linear Mixed Models (GLMM)

- Purpose: Extension of LMM to non-normal outcomes 
- Primary formula: g(E[Y]) = b*X + Zu + e 
  - g() is the link function 
  - E[Y] is the expected value of Y 
  - Zu = design matrix and vector for random effects  
- Key features:  
  - All advantages of LMM 
  - Can handle non-normal outcomes (binary, count, etc.) 
  - Appropriate link functions for different data types 
  - Can model both fixed and random effects 
- Limitations:  
  - Even more complex to specify and interpret 
  - Convergence issues are more common 
  - More assumptions about distribution and link function 
- Assumptions:  
  - Correct specification of link function and error distribution 
  - Linearity on a transformed scale 
  - Independence of errors (after accounting for random effects) 
- Testing assumptions:  
  - Distribution-specific residual diagnostics 
  - Primarily visual diagnostics 
