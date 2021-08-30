# Step 0. Load libraries --------------------------------------------------
library(reticulate)

# Step 1. Create environment and install packages -------------------------
conda_create(envname = "Learning", 
             packages = c("pandas","numpy","matplotlib",
                          "scikit-learn","scipy","statsmodels",
                          "tensorflow","keras","streamlit",
                          "plotly","nltk","opencv",
                          "requests","sqlalchemy","flask"),
             python_version = 3.7)

# Step 2. Activate environment --------------------------------------------
use_condaenv("Learning", required = TRUE)
