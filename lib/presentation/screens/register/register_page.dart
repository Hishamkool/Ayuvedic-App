import 'package:app/presentation/widgets/appbar_notification_widget.dart';
import 'package:app/presentation/widgets/custom_textfiled_with_label_widget.dart';
import 'package:app/presentation/widgets/elevated_button_widget.dart';
import 'package:app/presentation/widgets/register%20widgets/treatments_widgets.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String selectedPaymentMethod = "Cash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarNotificationWidget(),

              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 10, bottom: 10),
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              const Divider(
                height: 24,
                thickness: 1,
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
              /* details section */
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView(
                    children: [
                      SizedBox(height: 10),
                      CustomTextfiledWithLabelWidget(
                        label: "Name",
                        hintText: "Enter your full name",
                      ),
                      const SizedBox(height: 16),
                      CustomTextfiledWithLabelWidget(
                        label: "Whatsapp Number",
                        hintText: "Enter your Whatsapp number",
                        textInputType: TextInputType.phone,
                      ),
                      const SizedBox(height: 16),
                      CustomTextfiledWithLabelWidget(
                        label: "Address",
                        hintText: "Enter your full address",
                      ),
                      const SizedBox(height: 16),
                      /* location dropdown */
                      const SizedBox(height: 16),
                      /* branch dropdown */
                      const SizedBox(height: 16),

                      /* treatments */
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Payment Option",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RadioMenuButton(
                                value: "Cash",
                                groupValue: selectedPaymentMethod,
                                onChanged: (value) {
                                  setState(() {
                                    selectedPaymentMethod = value!;
                                  });
                                },
                                child: Text("Cash"),
                              ),
                              RadioMenuButton(
                                value: "Card",
                                groupValue: selectedPaymentMethod,
                                onChanged: (value) {
                                  setState(() {
                                    selectedPaymentMethod = value!;
                                  });
                                },
                                child: Text("Card"),
                              ),
                              RadioMenuButton(
                                value: "UPI",
                                groupValue: selectedPaymentMethod,
                                onChanged: (value) {
                                  setState(() {
                                    selectedPaymentMethod = value!;
                                  });
                                },
                                child: Text("UPI"),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      CustomTextfiledWithLabelWidget(
                        label: "Total amount",
                        hintText: "",
                        textInputType: TextInputType.number,
                      ),
                      const SizedBox(height: 16),
                      CustomTextfiledWithLabelWidget(
                        label: "Discharge amount",
                        hintText: "",
                        textInputType: TextInputType.number,
                      ),
                      const SizedBox(height: 16),
                      /* Treatments */
                      TreatmentsWidgets(),
                      const SizedBox(height: 16),
                      CustomTextfiledWithLabelWidget(
                        label: "Advance amount",
                        hintText: "",
                        textInputType: TextInputType.number,
                      ),
                      const SizedBox(height: 16),
                      CustomTextfiledWithLabelWidget(
                        label: "Balance amount",
                        hintText: "",
                        textInputType: TextInputType.number,
                      ),
                      const SizedBox(height: 16),
                      /* Treatmentdate */
                      /* treatement time row */
                      ElevatedButtonWidget(label: "Save"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
