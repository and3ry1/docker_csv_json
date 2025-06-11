import csv
import json

input_file = './data.csv'
output_file = './data.json'

with open(input_file, newline='', encoding='utf-8') as csvfile:
    reader = csv.DictReader(csvfile)
    data = list(reader)

with open(output_file, 'w', encoding='utf-8') as jsonfile:
    json.dump(data, jsonfile, indent=4)

print(f"Conversion terminée : {output_file}")
