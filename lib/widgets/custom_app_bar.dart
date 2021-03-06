import 'package:flutter/material.dart';

AppBar customAppBar(
  BuildContext context, {
  required String title,
  Widget? leading,
  IconData? iconLabel = Icons.notifications,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    automaticallyImplyLeading: false,
    leading: leading,
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(color: Colors.grey, fontSize: 24),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          iconLabel,
          color: Colors.grey.shade400,
        ),
      ),
      const SizedBox(width: 6),
    ],
  );
}
