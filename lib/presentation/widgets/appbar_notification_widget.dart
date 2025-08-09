import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.notifications_none_outlined, size: 28),
              onPressed: () {},
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
    );
  }
}
