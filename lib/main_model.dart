import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String kboyText = 'yusuke';

  void changeKboyText (){
    kboyText = 'yusukeさん!!!';
    notifyListeners();
  }
}