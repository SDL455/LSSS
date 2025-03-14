import 'package:flutter/material.dart';


class DashboardSection extends StatelessWidget {
 
  final dynamic items;
  final Widget Function(dynamic) itemBuilder;

  const DashboardSection({
    Key? key,
    
    required this.items,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        if (items != null)
          ...items
              .map((item) => Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: itemBuilder(item),
                  ))
              .toList(),
      ],
    );
  }
}
