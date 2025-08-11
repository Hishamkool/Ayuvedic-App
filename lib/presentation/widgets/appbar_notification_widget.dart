import 'package:ayurvedic_app/core/constants/app_colors.dart';
import 'package:ayurvedic_app/presentation/provider/login_provider.dart';
import 'package:ayurvedic_app/presentation/utils/snackbar_helper.dart';
import 'package:ayurvedic_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class AppbarNotificationWidget extends StatelessWidget {
  final bool isHomePage;
  const AppbarNotificationWidget({super.key, this.isHomePage = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back),

          onPressed: () {
            if (isHomePage) {
              SystemNavigator.pop();
            } else {
              Navigator.pop(context);
            }
          },
        ),
        Row(
          spacing: 10,
          children: [
            if (isHomePage)
              IconButton(
                icon: Icon(Icons.logout),

                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Logout"),
                        content: const Text(
                          "Are you sure you want to log out?",
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.colorScheme.error,
                            ),
                            onPressed: () async {
                              Navigator.of(context).pop();
                              final loginProvider = Provider.of<LoginProvider>(
                                context,
                                listen: false,
                              );

                              await loginProvider.logOut();
                              Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.login,
                              );
                            },
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.colorScheme.onError,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),

            Stack(
              children: [
                IconButton(
                  icon: Icon(Icons.notifications_none_outlined, size: 28),
                  onPressed: () {
                    SnackbarHelper.showSuccess("No Notifications");
                   /*  SnackbarHelper.showSuccess("Yep — that’s the catch: SnackBar in Flutter always stretches to the maximum width allowed by its behavior.If behavior: SnackBarBehavior.fixed → full width of screen.If behavior: SnackBarBehavior.floating → full width minus margins.So even with your Row set to MainAxisSize.min, the outer SnackBar widget will still take up the width defined by its behavior.There’s no built-in property to make it truly “wrap content” — the Material spec assumes snackbars are full width (or near full width)."); */
                  },
                ),

                Positioned(
                  right: 10,
                  top: 9,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
