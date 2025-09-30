import pandas as pd

# Read the combined CSV file
plays_df = pd.read_csv('wp.csv')

# Save as JSON
plays_df.to_json('wp.json', orient='records', lines=True)

print('Converted plays.csv to plays.json')