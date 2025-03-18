"""small script to testrun a notbook in papermill and check the output."""

import datetime as dt
import os

import papermill as pm

# Define the parameters
parameters = {"execution_hour_str": "2025-03-12 10:00:00", "output_root": "./output", "overlap_hours": 3}

notebook = "extract_wikipedia_pageviews"
# Path to the input notebook
input_notebook = f"notebooks/{notebook}.ipynb"


# Create the output directory if it doesn't exist
output_dir = f"./output/{notebook}"
os.makedirs(output_dir, exist_ok=True)
output_notebook = f"{output_dir}/{notebook}{dt.datetime.now()}.ipynb"

# Run the notebook with the specified parameters
pm.execute_notebook(input_path=input_notebook, output_path=output_notebook, parameters=parameters)

print(f"Notebook executed and saved to {output_notebook}")
