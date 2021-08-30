# Setting up a environment with reticulate

This repo shows how to set up an environment using reticulate package in R. I like using the RStudio IDE, and since I'm learning python I want to set up a conda environment and install some common libraries.

## Step 1. Create the environment

You have to create an environment. It could be virtualenv or conda, in this repo I'll use conda.

This is all the code you need (in R):
```
library(reticulate)
conda_create(envname = "Learning", 
             packages = c("pandas","numpy","matplotlib",
                          "scikit-learn","scipy","statsmodels",
                          "tensorflow","keras","streamlit",
                          "plotly","nltk","opencv",
                          "requests","sqlalchemy","flask"),
             python_version = 3.7)
```
Note that I specified the python version I want. 

## Step 2. Invoke the environment

After running the code, all you need is to invoke the environment with 
this code:
```
use_condaenv("Learning", required = TRUE)
```
Note that I used the required argument as TRUE. I tried with the code in 
the developer's page but it didn't run as expected.

Now that your environment is created and loaded, you can create your 
python scripts in the RStudio IDE. Happy coding!
