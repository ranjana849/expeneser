
import '../dataHelper/dbHelper.dart';

class UserModel {
  int? userid;
  String ? name;
  String? image;
  String ? email;
  String ? pass;
  String ? mobileno;

  UserModel({
    this.userid,
    this.name,
    this.image,
    this.email,
    this.pass,
    this.mobileno
  });

  factory UserModel.fromMap(Map<String, dynamic>map){
    return UserModel(
      userid: map[DbHelper.COLUMN_USER_ID],
      name: map[DbHelper.COLUMN_USER_NAME],
      image: map[DbHelper.COLUMN_USER_NAME],
      email:map[DbHelper.COLUMN_USER_EMAIL] ,
      pass: map[DbHelper.COLUMN_USER_PASS],
      mobileno:map[DbHelper.COLUMN_USER_MOBILENO] ,

    );
  }
  Map<String,dynamic>toMap(){
    return{
      DbHelper.COLUMN_USER_ID:userid,
      DbHelper.COLUMN_USER_ID:name,
      DbHelper.COLUMN_USER_IMAGE:image,
      DbHelper.COLUMN_USER_ID:email,
      DbHelper.COLUMN_USER_ID:pass,
      DbHelper.COLUMN_USER_ID:mobileno,

    };
  }
}