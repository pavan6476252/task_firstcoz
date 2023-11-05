import 'package:flutter/material.dart';
import 'package:task_firstcoz/screens/product_page.dart';

class PopularProductsList extends StatelessWidget {
  const PopularProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 11),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Products',
                  style: textTheme.titleLarge!.copyWith(fontSize: 16),
                ),
                Text(
                  'See All',
                  style: textTheme.titleLarge!.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          ..._buildProduct(context)
        ],
      ),
    );
  }

  _buildProduct(
    context,
  ) {
    final List<Map<String, String>> products = [
      {
        "title": "Makeup and styling makeovers",
        "price": "₹2000/-",
        "company": 'Face Care',
        "rating": "4.8",
        "asset": 'assets/product1.png'
      },
      {
        "title": "Eye makerovers",
        "price": "₹2000/-",
        "company": 'Eye Care',
        "rating": "4.9",
        "asset": 'assets/product2.png'
      },
    ];

    TextTheme textTheme = Theme.of(context).textTheme;

    return products
        .map((e) => GestureDetector(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(),)),
          child: Container(
                height: 126,
                width: double.infinity,
                padding: const EdgeInsetsDirectional.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        e['asset'] ?? "",
                        fit: BoxFit.cover,
                        width: 106,
                        height: 106,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  e['title'] ?? "Makeup and styling makeovers",
                                  textAlign: TextAlign.start,
                                  softWrap: true,
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    e['rating'] ?? "",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(width: 2),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            e['company'] ?? "",
                            style: textTheme.bodyMedium!.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Text(
                            e['price'] ?? "",
                            style: textTheme.bodyMedium!.copyWith(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
        ))
        .toList();
  }
}
