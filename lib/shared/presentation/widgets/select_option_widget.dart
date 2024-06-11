import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:ersys_client/shared/domain/entities/item_entity.dart';
import 'package:ersys_client/shared/domain/entities/item_list.entity.dart';
import 'package:flutter/material.dart';

class SelectOptionWidget extends StatefulWidget {
  late final String _title;
  late final ItemListEntity _item;
  late final Function(ItemEntity item) _onItemSelected;

  SelectOptionWidget(
      {super.key,
      required final ItemListEntity item,
      String title = "Sélectionner une option",
      required final Function(ItemEntity item) onItemSelected}) {
    _item = item;
    _onItemSelected = onItemSelected;
    _title = title;
  }

  @override
  State<SelectOptionWidget> createState() => _SelectOptionWidgetState();
}

class _SelectOptionWidgetState extends State<SelectOptionWidget> {
  ItemEntity? _itemSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey, width: 2),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButton<ItemEntity>(
        hint: Text(widget._title),
        value: _itemSelected,
        items: _generateDropDownMenuItem(widget._item.list),
        onChanged: _onMenuItemChange,
        isExpanded: true,
        underline: const SizedBox(),
      ),
    );
  }

  List<DropdownMenuItem<ItemEntity>>? _generateDropDownMenuItem(
      List<ItemEntity> menuItem) {
    if (menuItem.isEmpty) return null;
    return menuItem.map((ItemEntity item) {
      return DropdownMenuItem<ItemEntity>(
        value: item,
        child: Text(item.title),
      );
    }).toList();
  }

  _onMenuItemChange(ItemEntity? item) {
    setState(() {
      if (item != null) {
        _itemSelected = item;
        widget._onItemSelected(item);
      }
    });
  }
}
