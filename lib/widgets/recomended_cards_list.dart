import 'package:flutter/material.dart';
import 'package:task_firstcoz/screens/product_page.dart';

class RecomendedCardList extends StatelessWidget {
  RecomendedCardList({Key? key}) : super(key: key);

  final List<Map<String, String>> result = [
    {
      "title": "Abhigyaana Makeovers",
      "price": "₹2320/-",
      "asset": 'assets/person1.png'
    },
    {
      "title": "Luxe hairstyling and makeup",
      "price": "₹1950/-",
      "asset": 'assets/person2.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 317,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2, // You can change this to the number of cards you want.
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(),
                )),
            child: Container(
              margin: EdgeInsets.only(left: 15),
              padding: const EdgeInsets.all(14),
              width: 226,
              height: 317, // Adjust the height as needed
              decoration: BoxDecoration(
                // boxShadow: const [
                //   BoxShadow(spreadRadius: 0.1, color: Colors.grey, blurRadius: 5),
                // ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.maxFinite,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        result[index]['asset'] ?? "",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  result[index]['title'] ?? "",
                                  textAlign: TextAlign.start,
                                  softWrap: true,
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 15),
                                  SizedBox(width: 2),
                                  Text(
                                    "4.9",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            result[index]['price']??"",
                            style: textTheme.titleMedium!.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
