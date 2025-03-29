#  The Impact of AI on the IT Job Market

##  Project Overview

This project examines whether AI will significantly automate IT jobs, reducing human employment, or if fears are exaggerated by media and uncertainty. By analyzing industry trends and job market data, we aim to assess the real impact of AI on employment. The study will determine whether AI replaces jobs or enhances productivity, creating new opportunities.
It involves processing and analyzing job market data using **Python (Pandas)**. The goal is to clean, filter, and extract relevant insights about job trends, AI adoption, and required skills.

##  Files Included

- **MAIN.ipynb** → Jupyter Notebook with data processing steps
- **My\_Data.csv** → Primary dataset containing job titles and attributes
- **AI\_Job\_Market.csv** → Supplementary dataset with AI job insights
- **procedure.md** → Step-by-step guide for processing the data

##  Requirements

Before running the notebook, ensure you have the following installed:

- **Python 3.x**
- **Jupyter Notebook**
- **Required Libraries:**
  ```sh
  pip install pandas
  ```

##  How to Use

1. Open the Jupyter Notebook (`MAIN.ipynb`).
2. Run each cell sequentially to:
   - Load datasets
   - Clean and standardize data
   - Extract relevant job trends
   - Filter jobs using AI-related keywords
3. Review the processed dataset for insights.

##  Key Features

   - Load and merge multiple job market datasets\
   - Clean and standardize job title data\
   - Extract and filter AI-related jobs using **regex**\
   - Prepare the data for visualization and analysis

##  Sample Code

Example snippet for filtering AI-related jobs:

```python
import pandas as pd
import re

df = pd.read_csv('My_Data.csv')
keywords = ['Data', 'AI', 'Analyst', 'Engineer']
regex_pattern = '|'.join([re.escape(k.lower()) for k in keywords])
df_filtered = df[df['Job_Title'].str.lower().str.contains(regex_pattern, na=False)]
print(df_filtered.head())
```

##  Notes

- Ensure correct **file paths** when loading CSV files.
- Modify keyword lists as needed for better job filtering.
- Future improvements may include **data visualization** and **ML-based job categorization**.

##  License

This project is open-source and free to use. Modify it as needed!
