import 'package:flutter/material.dart';
import 'package:task_firstcoz/screens/cart_page.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Package Details",
          style: textTheme.bodyMedium!.copyWith(),
        ),
        actions: const [
          Icon(Icons.favorite_border_rounded),
          SizedBox(
            width: 12,
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, bottom: 14),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ));
            },
            style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 13, 32, 99)),
                padding: MaterialStatePropertyAll(EdgeInsets.all(13))),
            child: const Text(
              'ADD TO CART',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.1,
                  fontSize: 15,
                  fontWeight: FontWeight.w900),
            )),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 481,
                width: 354,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          'assets/person1.png',
                          fit: BoxFit.cover,
                          height: 332,
                        )),
                    _buildStarts(),
                    Expanded(
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Abhigyna Makeovers",
                              style: textTheme.bodyMedium!.copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Base Price",
                              style: textTheme.bodyMedium!
                                  .copyWith(fontSize: 12, color: Colors.grey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "₹2320/-",
                                  style: textTheme.bodyMedium!.copyWith(
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  "With Tax",
                                  style: textTheme.bodyMedium!.copyWith(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              _descriptionBuilder()
            ],
          ),
        ),
      ),
    );
  }

  _buildStarts() {
    return Row(
      children: [
        ...[1, 2, 3, 4, 5].map((e) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              child: Icon(Icons.star, color: Colors.yellow, size: 15),
            )),
        const SizedBox(width: 4),
        const Text(
          '4.9',
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }

  _descriptionBuilder() {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(0),
              child: Text(
                "Description",
                style: TextStyle(
                    letterSpacing: 1.1,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 14),
            const Padding(
                padding: EdgeInsets.all(0),
                child: Text(
                    'The Abhigyna makeovers were currently the popular makeovers in India. Our company will provide services to your doorstep.')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.call_outlined,
                          size: 24,
                        ),
                        Text(
                          'Call',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 24,
                        ),
                        Text(
                          'Directions',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(width: 25),
                    Column(
                      children: [
                        Icon(
                          Icons.file_upload_outlined,
                          size: 24,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: const Border.fromBorderSide(
                                  BorderSide(color: Colors.black, width: 1))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star_border_rounded,
                                size: 20,
                              ),
                              SizedBox(width: 2),
                              Text('4.9',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold))
                            ],
                          )),
                      const SizedBox(height: 2),
                      const Text('5K + ratings', style: TextStyle(fontSize: 10))
                    ],
                  ),
                )
              ],
            )

            //discounts
            ,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 117,
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: const Color.fromARGB(255, 232, 229, 229),
                          width: 1)),
                  child:   Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/discount.png'),
                            Text(
                              "50% off",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Text(
                          "use code FREE50",
                          style: TextStyle(fontSize: 10),
                        )
                      ]),
                ),
                //  discount 2
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: const Color.fromARGB(255, 232, 229, 229),
                          width: 1)),
                  child:   Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                               Image.asset('assets/discount.png'),
                            SizedBox(width: 4),
                            Text(
                              "60% off on Debit Card",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Text(
                          "No coupon required",
                          style: TextStyle(fontSize: 10),
                        )
                      ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
