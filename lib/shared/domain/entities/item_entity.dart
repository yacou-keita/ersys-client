// ignore_for_file: public_member_api_docs, sort_constructors_first
class ItemEntity {
  late final String _id, _title;

  ItemEntity({required final String id, required final String title}) {
    _id = id;
    _title = title;
  }

  String get id => _id;
  String get title => _title;

  ItemEntity copyWith({
    String? id,
    title,
  }) {
    return ItemEntity(title: title ?? _title, id: id ?? _id);
  }

  static ItemEntity init() {
    return ItemEntity(title: "", id: "");
  }

  @override
  String toString() => 'ItemEntity(title: $_title , id:$_id)';
}
