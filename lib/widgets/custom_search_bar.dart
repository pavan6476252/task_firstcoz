import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  Image.asset('assets/search-icon.png'),
                  const SizedBox(width: 10),
                  Text(
                    "Search",
                    style: textTheme.bodyMedium!.copyWith(fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 14),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(13, 32, 99, 1),
                // color: const Color.fromARGB(13, 206, 189, 139),
                borderRadius: BorderRadius.circular(12)),
            child:  Center(
                child: Transform.rotate(
              angle: 1.58,
              child: Icon(
                Icons.tune,
                size: 32,
                color: Colors.white,
              ),
            )),
            // padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}
