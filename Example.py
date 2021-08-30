# Step 0. Load libraries --------------------------------------------------
import plotly.express as px
import pandas as pd
import numpy as np

# Step 1. Create trend plot -----------------------------------------------
df = px.data.tips()
fig = px.scatter(
  df, x='total_bill', y='tip', opacity=0.75,
  trendline='ols', trendline_color_override='tomato'
)

fig.show()
