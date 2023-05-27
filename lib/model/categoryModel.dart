import 'package:expense_app/dataHelper/dbHelper.dart';

class CategoryModel{
  int ?    catId;
  String ? titlecat;
  String ? imagepath;


CategoryModel({
    this.catId,
    this.titlecat,
    this.imagepath
});

factory CategoryModel.formMap(Map<String,dynamic>map){
  return CategoryModel(
    catId: map[DbHelper.COLUMN_CATEGORY_ID],
    titlecat: map[DbHelper.COLUMN_CATEGORY_TITLE],
    imagepath: map[DbHelper.COLUMN_CATEGORY_IMAGEPATH]
  );
}
Map<String,dynamic>toMap(){
  return {
    DbHelper.COLUMN_CATEGORY_ID:catId,
    DbHelper.COLUMN_CATEGORY_TITLE:titlecat,
    DbHelper.COLUMN_CATEGORY_IMAGEPATH:imagepath
  };
}
}