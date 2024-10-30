import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:ersys_client/shared/domain/entities/item_entity.dart';
import 'package:ersys_client/shared/domain/entities/item_list.entity.dart';
import 'package:ersys_client/shared/presentation/widgets/button_widget.dart';
import 'package:ersys_client/shared/presentation/widgets/input_field_widget.dart';
import 'package:ersys_client/shared/presentation/widgets/select_option_widget.dart';
import 'package:ersys_client/shared/presentation/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class FreeCandidatePage extends StatefulWidget {
  const FreeCandidatePage({super.key});

  @override
  State<FreeCandidatePage> createState() => _FreeCandidatePageState();
}

class _FreeCandidatePageState extends State<FreeCandidatePage> {
  final _formKey = GlobalKey<FormState>();
  final matriculeOrTableNumber = TextEditingController();

  final ItemEntity _itemSelected = ItemEntity.init();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(Icons.arrow_back_ios),
          const SizedBox(
            height: 20,
          ),
          TitleWidget(
            title: "Inscription des candidats libres  Session 2023",
            fontSize: 25,
            color: AppColors.black,
          ),
          const SizedBox(
            height: 30,
          ),
          ListTile(
            title: TitleWidget(
                title: "1/6 - IDENTIFICATION", align: TextAlign.start),
            subtitle: const Text("Vérification d'identité",
                style: TextStyle(color: AppColors.black)),
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  SelectOptionWidget(
                    item: ItemListEntity(listItem: [
                      ItemEntity(id: "M", title: "Matricule"),
                      ItemEntity(id: "N", title: "Numero de table")
                    ]),
                    onItemSelected: (item) {
                      setState(() {
                        _itemSelected.copyWith(id: item.id);
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (_itemSelected.id == "M")
                    InputFieldWidget(
                      hintText: "matricule",
                      controller: matriculeOrTableNumber,
                    ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (_itemSelected.id == "N")
                    InputFieldWidget(
                      hintText: "numero de table",
                      controller: matriculeOrTableNumber,
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    title: "Identifiez-vous",
                    onPressed: _validateForm,
                  )
                ],
              ))
        ]),
      ),
    );
  }

  _validateForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }

  @override
  void dispose() {
    matriculeOrTableNumber.dispose();
    super.dispose();
  }
}
