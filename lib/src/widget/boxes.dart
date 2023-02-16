import 'package:hive/hive.dart';
import 'package:hive_example/src/model/model_class.dart';

class Boxes {
  static Box<Transaction> getTransactions() =>
      Hive.box<Transaction>('transactions');
}