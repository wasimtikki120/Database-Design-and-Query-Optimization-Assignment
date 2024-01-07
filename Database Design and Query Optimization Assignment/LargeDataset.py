import csv
import random
from faker import Faker
from datetime import datetime, timedelta

fake = Faker()

# Function to generate a random date within a specified range
def random_date(start_date, end_date):
    return start_date + timedelta(seconds=random.randint(0, int((end_date - start_date).total_seconds())))

# Generate a large dataset
num_records = 1000000  # You can adjust this number based on your needs

with open('transactions.csv', 'w', newline='') as csvfile:
    fieldnames = ['transaction_id', 'account_id', 'transaction_date', 'amount', 'category']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()

    for i in range(1, num_records + 1):
        transaction_id = i
        account_id = random.randint(101, 110)
        transaction_date = random_date(datetime(2023, 1, 1), datetime(2023, 12, 31))
        amount = round(random.uniform(-1000, 2000), 2)
        category = random.choice(['Salary', 'Grocery', 'Dining', 'Shopping', 'Utilities'])

        writer.writerow({
            'transaction_id': transaction_id,
            'account_id': account_id,
            'transaction_date': transaction_date,
            'amount': amount,
            'category': category
        })

print(f"{num_records} records generated successfully.")
