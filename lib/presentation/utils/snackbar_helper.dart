import 'package:app/main.dart';
import 'package:flutter/material.dart';

/* eg 
SnackbarHelper.showSuccess("Data saved successfully");
SnackbarHelper.showError("Something went wrong"); 
*/

class SnackbarHelper {
  SnackbarHelper._();

  static void showSuccess(String message) {
    _showSnackBar(
      message,
      backgroundColor: Colors.green.shade600,
      icon: Icons.check_circle_outline,
    );
  }

  static void showError(String message) {
    _showSnackBar(
      message,
      backgroundColor: Colors.red.shade600,
      icon: Icons.error_outline,
    );
  }

  static void _showSnackBar(
    String message, {
    required Color backgroundColor,
    required IconData icon,
  }) {
    final context = navigatorKey.currentContext;
    if (context == null) return;

    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      content: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 14),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
