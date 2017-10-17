# multi-level regression
Also known by hierarchical models, mixed models, among other names.  
They are used to look at the effects of levels on the predictor variable. 

# requirements 
Hierarchical, aka nested data (i.e. towns within counties, patients within hospitals, etc). </BR>
A good sample rate: although there is no rule of thumb for how many units within a level, the lower the number the higher the chance of errors in your model (i.e. 327 units within 12 divisions)

# notes
Level 1 random intercept model </BR>
Iij = δ00 + u0j + εij + α1j Xij.</BR>
Where Iij = δ00 + u0j + εij is the  Null model </BR>
α1j Xij is the variation due to predictor x
