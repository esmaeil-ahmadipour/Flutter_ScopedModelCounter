import 'package:scoped_model/scoped_model.dart';

class MainModel extends Model {
  int _count = 0;

  int get count {
    return _count;
  }

  void incrementCount() {
    _count += 1;
    notifyListeners();
  }
}
