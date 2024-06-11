import 'package:ersys_client/shared/domain/entities/item_entity.dart';

class ItemListEntity {
  late final List<ItemEntity> _listItem;

  ItemListEntity({required final List<ItemEntity> listItem}) {
    _listItem = listItem;
  }

  List<ItemEntity> get list => _listItem;
}
