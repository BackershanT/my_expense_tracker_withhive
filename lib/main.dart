import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_example/src/app.dart';
import 'package:hive_example/src/model/model_class.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>('transactions');
  
  runApp( MyApp());
}

