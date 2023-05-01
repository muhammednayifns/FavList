import 'package:flutter/cupertino.dart';
class ProviderPage extends ChangeNotifier{
  List Cart=[];
  List get favoritecart=>Cart;
  void  favorits(String Name){
    final favlist=Cart.contains(Name);
    if (favlist){
      Cart.remove(Name);

    }
    else{
      Cart.add(Name);
    }
    notifyListeners();
  }
  bool check(String Name){
    final checking=Cart.contains(Name);
    return checking;

  }
}