import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

import '../model/userModel.dart';


class DbHelper{
  //USER
  static const String TABLE_USER="user";
  static const String COLUMN_USER_ID = "userId";
  static const String COLUMN_USER_NAME = "name";
  static const String COLUMN_USER_IMAGE ="image";
  static const String COLUMN_USER_PASS = "pass";
  static const String COLUMN_USER_EMAIL = "email";
  static const String COLUMN_USER_MOBILENO = "mobileno";


  //CATEGORY
  static const String TABLE_CATEGORY="category";
   static const String COLUMN_CATEGORY_ID="catId";
   static const String COLUMN_CATEGORY_TITLE="titlecat";
   static const String COLUMN_CATEGORY_IMAGEPATH="imagepath";

// EXPENSE
  static const String TABLE_EXPENSE="expense";
  static const String COLUMN_EXPENSE_ID = "expenseId";
  static const String COLUMN_EXPENSE_TITLE = "title";
  static const String COLUMN_EXPENSE_DESC ="desc";
  static const String COLUMN_EXPENSE_DATE = "date";
  static const String COLUMN_EXPENSE_AMOUNT = "amount";
  static const String COLUMN_EXPENSE_BALANCE = "balance";
  static const String COLUMN_EXPENSE_CREDIT = "credit";
  static const String COLUMN_EXPENSE_DEBITS = "debits";

Future<Database>openDB() async{
  var mDirectory= await getApplicationDocumentsDirectory();

 await mDirectory.create(recursive:true);
  var mPath ='${mDirectory.path}/expense_db.db';
  return await openDatabase(mPath,version:1,onCreate:(db, version){
    db.execute(
    'create table $TABLE_EXPENSE('
  ' $COLUMN_EXPENSE_ID integer primary key autoincrement,'
  ' $COLUMN_EXPENSE_TITLE text,'
  ' $COLUMN_EXPENSE_DESC text ,'
  ' $COLUMN_EXPENSE_DATE int ,'
  ' $COLUMN_EXPENSE_AMOUNT int,'
  ' $COLUMN_EXPENSE_BALANCE int,'
  ' $COLUMN_EXPENSE_CREDIT int,'
  ' $COLUMN_EXPENSE_DEBITS int'
        ')');

   db.execute(''
       'create table $TABLE_USER ('
       '$COLUMN_USER_ID int'
       '$COLUMN_USER_NAME text'
       '$COLUMN_USER_IMAGE text '
       '$COLUMN_USER_EMAIL text'
       '$COLUMN_USER_PASS text,'
       '$COLUMN_USER_MOBILENO int)');

   db.execute('create table $TABLE_CATEGORY('
       '$COLUMN_CATEGORY_ID int'
       '$COLUMN_CATEGORY_TITLE text,'
       '$COLUMN_CATEGORY_IMAGEPATH text)');
  });
}
Future<bool>addexpense(UserModel expense )async{
  var mDb=await openDB();
  var check =await mDb.insert(TABLE_USER,expense.toMap());
  return check > 0;
}
Future<List<UserModel>>getexpense()async{
  var mDb =await openDB();
  var sp = await SharedPreferences.getInstance();
  int ? id = sp.getInt('userId');
}

}