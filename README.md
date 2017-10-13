# multilevel regression
Also known by hierarchical models, mixed models, among other names.  
They are used to look at the effects of levels on the predictor variable. 

# requirements for a multi-level regression model
Hierarchical, aka nested data (i.e. towns within counties, patients within hospitals, etc).

# notes
Level 1 random intercept model
Iij = δ00 + u0j + εij + α1j Xij
  where Iij = δ00 + u0j + εij is the  Null model              
  and α1j Xij is the variation due to predictor x
