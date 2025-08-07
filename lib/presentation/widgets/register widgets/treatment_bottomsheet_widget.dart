import 'package:flutter/material.dart';

class TreatmentBottomSheet extends StatefulWidget {
  const TreatmentBottomSheet({super.key});

  @override
  State<TreatmentBottomSheet> createState() => _TreatmentBottomSheetState();
}

class _TreatmentBottomSheetState extends State<TreatmentBottomSheet> {
  final treatments = ['Treatment 1', 'Treatment 2', 'Treatment 3'];
  int maleCount = 0;
  int femaleCount = 0;
  String? selectedTreatment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        /* choose treatement dropdown */
/*         DropdownButtonFormField(
          items: treatments
              .map(
                (treatment) =>
                    DropdownMenuItem(value: treatment, child: Text(treatment)),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedTreatment = value;
            });
          },
        ), */
        Text("data")
      ],
    );
  }
}
