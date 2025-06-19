import 'package:flutter/material.dart';
import 'package:plp/core/color/app_colors.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const ItemCard({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColor.primaryColor.withValues(alpha: 0.1),
          child: Icon(icon, color: AppColor.primaryColor),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: AppColor.primaryColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            value,
            style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
