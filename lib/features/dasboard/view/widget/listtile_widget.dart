import 'package:flutter/material.dart';

class ListtileWidget extends StatelessWidget {
  final String image;
  final String title;
  final String trailingText;

  const ListtileWidget({
    super.key,
    required this.image,
    required this.trailingText,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          image,
          width: 45,
          height: 45,
        ),
        title: Text(
          title,
        ),
        trailing: Text(
          trailingText,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
