import 'package:hive/hive.dart';
part 'model_class.g.dart';

@HiveType(typeId: 0)
class Transaction extends HiveObject{
  @HiveField(0)
  late String name;
  @HiveField(1)
  late DateTime CreatedDate;
  @HiveField(2)
  late bool isExpense = true;
  @HiveField(3)
  late double amount;


}

@HiveType(typeId: 1)
class User extends HiveObject{
  @HiveField(10)
  late String name;
  @HiveField(11)
  late String age;

}


///after creating this model class please enter"   flutter packages pub run build_runner build  "