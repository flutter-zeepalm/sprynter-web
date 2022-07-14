import 'package:flutter/cupertino.dart';
import 'package:spryntr/Utils/colors.dart';

class TransactionsTable {
  String transactions;
  String timeDate;
  Color color;
  String amount;
  String status;
  TransactionsTable(
      {required this.transactions,
      required this.timeDate,
      required this.amount,
      required this.status,
      required this.color});
}

List<TransactionsTable> userTransactionsList = [
  TransactionsTable(
      transactions: 'Payout to Green Groceries',
      timeDate: 'Apr 23 ,2021',
      amount: '\$2300',
      status: 'Completed',
      color: CustomColors.kOrange),
  TransactionsTable(
      transactions: 'Payout to Richard Millie',
      timeDate: 'Apr 23 ,2021',
      amount: '-\$670',
      status: 'Completed',
      color: CustomColors.kPurple),
  TransactionsTable(
      transactions: 'Payout failed to Green Groceries',
      timeDate: 'Apr 18, 2021',
      amount: '\$234',
      status: 'Cancelled',
      color: CustomColors.kOrange),
  TransactionsTable(
      transactions: 'Payment from Bonnie Greens',
      timeDate: 'Apr 15, 2021',
      amount: '\$5000',
      status: 'Pending',
      color: CustomColors.kBlueAccent),
  TransactionsTable(
      transactions: 'Payment from Jese Leos',
      timeDate: 'Apr 15, 2021',
      amount: '\$2300',
      status: 'Pending',
      color: CustomColors.kBlueAccent),
  TransactionsTable(
      transactions: 'Payment from THEMSBERG LLC',
      timeDate: 'Apr 11, 2021',
      amount: '\$280',
      status: 'Completed',
      color: CustomColors.kOrange),
];
