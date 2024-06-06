import 'package:ersys_client/shared/core/theme/color.dart';
import 'package:ersys_client/shared/presentation/widgets/button_widget.dart';
import 'package:ersys_client/shared/presentation/widgets/input_field_widget.dart';
import 'package:ersys_client/shared/presentation/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class FreeCandidatePage extends StatefulWidget {
  const FreeCandidatePage({super.key});

  @override
  State<FreeCandidatePage> createState() => _FreeCandidatePageState();
}

class _FreeCandidatePageState extends State<FreeCandidatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          const ListTile(
            leading: Icon(Icons.arrow_back_ios),
          ),
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
            subtitle: const Text("Vérification d'identité",style: TextStyle(color: AppColors.black)),
          ),
          const SizedBox(
            height: 30,
          ),
          InputFieldWidget(
            hintText: "matricule",
          ),
          const SizedBox(
            height: 15,
          ),
          InputFieldWidget(
            hintText: "numero de table",
          ),
          const SizedBox(
            height: 20,
          ),
          const ButtonWidget()
        ]),
      ),
    );
  }
}
