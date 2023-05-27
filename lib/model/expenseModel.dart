import 'package:expense_app/dataHelper/dbHelper.dart';

class ExpenseModel{
  int ? expenseId;
  String? title;
  String? desc;
  String? date;
  String? amount;
  String? credit;
  String? debits;

  ExpenseModel({
    this.expenseId,
    this.title,
    this.desc,
    this.date,
    this.amount,
    this.credit,
    this.debits
});
  factory ExpenseModel.fromMap(Map<String,dynamic>map){
    return ExpenseModel(
      expenseId: map[DbHelper.COLUMN_EXPENSE_ID],
      title: map[DbHelper.COLUMN_EXPENSE_TITLE],
      desc: map[DbHelper.COLUMN_EXPENSE_DESC],
      date: map[DbHelper.COLUMN_EXPENSE_DATE],
      amount: map[DbHelper.COLUMN_EXPENSE_AMOUNT],
      credit: map[DbHelper.COLUMN_EXPENSE_CREDIT],
      debits: map[DbHelper.COLUMN_EXPENSE_DEBITS],


    );
  }
  Map <String,dynamic>toMap(){
    return{
      DbHelper.COLUMN_EXPENSE_ID:expenseId,
      DbHelper.COLUMN_EXPENSE_TITLE:title,
      DbHelper.COLUMN_EXPENSE_DESC:desc,
      DbHelper.COLUMN_EXPENSE_DATE:date,
      DbHelper.COLUMN_EXPENSE_AMOUNT:amount,
      DbHelper.COLUMN_EXPENSE_CREDIT:credit,
      DbHelper.COLUMN_EXPENSE_DEBITS:debits,
    };
  }

}