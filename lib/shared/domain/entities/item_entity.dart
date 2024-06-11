class ItemEntity {
  late final String _id, _title;

  ItemEntity({required final String id, required final String title}) {
    _id = id;
    _title = title;
  }

  String get id => _id;
  String get title => _title;
}
