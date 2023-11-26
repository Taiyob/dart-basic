import 'package:flutter/cupertino.dart';
import 'package:providers/model/todo_model.dart';

class tudoprovider extends ChangeNotifier {
  final List<todoModel> todulist = [];

  void addtodulist(todoModel tmodel) {
    todulist.add(tmodel);
    notifyListeners();
  }

  todostususchange(todoModel tmodel){
    final index = todulist.indexOf(tmodel);
    todulist[index].iscompltetroggle();
    notifyListeners();
  }

  void removetodu(todoModel tmodel) {
    final index = todulist.indexOf(tmodel);
    todulist.removeAt(index);
    notifyListeners();
  }
}
