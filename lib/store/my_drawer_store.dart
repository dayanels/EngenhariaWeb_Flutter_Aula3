import 'package:mobx/mobx.dart';
part 'my_drawer_store.g.dart';

class MyDrawerStore = _MyDrawerStoreBase with _$MyDrawerStore;

abstract class _MyDrawerStoreBase with Store {
  @observable
  int selected = 0;
  @action
  void setSelected(int value) => value;
}
