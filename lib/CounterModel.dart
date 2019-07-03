import 'package:scoped_model/scoped_model.dart';

class CountModel extends Model {
  int _count = 0;

  int getCount() {
    return _count;
  }

  void increment() {
    _count++;
    notifyListeners();
  }

  CountModel of(context) {
    return ScopedModel.of<CountModel>(context);
  }
}
