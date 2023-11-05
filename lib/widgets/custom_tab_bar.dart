import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(left: 15 ,top: 15,bottom: 13),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildTab(
                "Categories", textTheme.titleLarge!.copyWith(fontSize: 14), true),
            _buildTab(
                "Luxe",
                textTheme.titleLarge!
                    .copyWith(fontSize: 14, color: Colors.redAccent),
                false),
            _buildTab("HD", textTheme.titleLarge!.copyWith(fontSize: 14), false),
            _buildTab(
                "Eye",
                textTheme.titleLarge!.copyWith(fontSize: 14, color: Colors.green),
                false),
            _buildTab(
                "Revion",
                textTheme.titleLarge!.copyWith(fontSize: 14, color: Colors.grey),
                false),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String label, TextStyle style, bool active) {
    return Container(
      margin: const EdgeInsets.only( right: 16),
      padding: const EdgeInsets.only(bottom: 4, right: 16),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: active ? Colors.black : Colors.transparent,
                  width: 2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: style),
        ],
      ),
    );
  }
}
