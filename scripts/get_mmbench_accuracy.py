import pandas as pd
import math
import os
import argparse
import json

def get_accuracy(args):
    df = pd.read_excel(args.file_name)
    accuracy, correctpred=0,0
    numofrecords=len(df)
    print(numofrecords)
    for index, row in df.iterrows():
        if row['prediction'] == row['answer']:
            correctpred+=1
    accuracy = correctpred/numofrecords
    return accuracy

def parse_args():
    """
    Parse command-line arguments.
    """
    parser = argparse.ArgumentParser()

    # Define the command-line arguments
    parser.add_argument('--file_name', help='Get excel sheet path', required=True)

    return parser.parse_args()

def main():
    args=parse_args()
    accuracy=get_accuracy(args)
    print(accuracy)
  
