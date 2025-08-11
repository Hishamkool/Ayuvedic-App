import 'package:ayurvedic_app/core/constants/app_colors.dart';
import 'package:ayurvedic_app/main.dart';
import 'package:flutter/material.dart';

/* Usage:
SnackbarHelper.showSuccess("Data saved successfully");
SnackbarHelper.showError("Something went wrong");
SnackbarHelper.showSuccess("With custom context", context: context);
*/

class SnackbarHelper {
  SnackbarHelper._();

  static void showSuccess(String message, {BuildContext? context}) {
    _showSnackBar(
      message,

      backgroundColor: Colors.green.shade600,
      icon: Icons.check_circle_outline,
      context: context,
    );
  }

  static void showError(String message, {BuildContext? context}) {
    _showSnackBar(
      message,
      backgroundColor: AppColors.colorScheme.error,
      // backgroundColor: Colors.red.shade600,
      icon: Icons.error_sharp,
      context: context,
    );
  }

  static void _showSnackBar(
    String message, {
    required Color backgroundColor,
    required IconData icon,
    BuildContext? context,
  }) {
    final ctx = context ?? navigatorKey.currentContext;
    if (ctx == null) return;

    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,

      margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      backgroundColor: backgroundColor,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      content: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 12),
            Flexible(
              child: Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                softWrap: true,
                maxLines: 9,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(ctx).hideCurrentSnackBar();
    ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
  }
}
