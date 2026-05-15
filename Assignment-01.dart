void main() {
double income = 70000;

List<Map<String, dynamic>> expenses = [
  {"reason":"Shopping", "amount": 12000},
  {"reason":"Books", "amount": 3000},
  {"reason":"Entertainment", "amount": 5000},
  {"reason":"Loan Paid", "amount": 20000},
  {"reason":"Unknown", "amount": null}
];

double expenseAmount = 0;

for (int i = 0; i < expenses.length; i++) {
 expenseAmount += expenses[i]["amount"] ?? 0;
}

double remaining = income - expenseAmount;
double savingRate = (remaining / income) * 100;
print("Income: ৳$income");

for (int i = 0; i < expenses.length; i++) {
 print(
   "${expenses[i]["reason"]} expense: ৳${expenses[i]["amount"] ?? 0}");
}

print("Expense Amount: ৳$expenseAmount");
print("Remaining: ৳$remaining");
print("Saving Rate: ${savingRate.toStringAsFixed(2)}%");
}
