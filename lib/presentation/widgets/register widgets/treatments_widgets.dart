import 'package:ayurvedic_app/presentation/widgets/elevated_button_widget.dart';
import 'package:ayurvedic_app/presentation/widgets/register%20widgets/treatment_bottomsheet_widget.dart';
import 'package:flutter/material.dart';

class TreatmentsWidgets extends StatelessWidget {
  const TreatmentsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "Treatements",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: Color.fromRGBO(240, 240, 240, 1),
            borderRadius: BorderRadius.circular(8.53),
          ),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      " 1.",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Text(
                      "Couple Combo package i.. ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconButton(
                      highlightColor: Colors.red,
                      onPressed: () {},
                      icon: Icon(Icons.close),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Text("Male"),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 2,
                            ),
                            constraints: BoxConstraints(
                              maxHeight: 30,
                              maxWidth: 20,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text("Female"),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 2,
                            ),
                            constraints: BoxConstraints(
                              maxHeight: 30,
                              maxWidth: 20,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                ],
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(vertical: 10),

          child: ElevatedButtonWidget(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) => TreatmentBottomSheet(),
              );
            },
            label: "+ Add Treatements",
            backgroundColor: Color.fromRGBO(101, 189, 115, 0.6),
          ),
        ),
      ],
    );
  }
}
