import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with TickerProviderStateMixin {
  List<CartItem> cartItems = [
    CartItem(
      asset: 'assets/person1.png',
      itemName: "Abigyna Makeovers",
      category: "Face Care",
      price: 2320.0,
      quantity: 1,
    ),
    CartItem(
      asset: 'assets/product2.png',
      itemName: "Makeup and styling makeoverss",
      category: "Body Care",
      price: 2000.0,
      quantity: 1,
    ),
  ];

  double totalCheckoutPrice = 0.0;
  void _calculateTotalPrice() {
    double totalPrice = cartItems
        .map((item) => item.price * item.quantity)
        .reduce((a, b) => a + b);
    setState(() {
      totalCheckoutPrice = totalPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalCheckoutPrice = cartItems
        .map((item) => item.price * item.quantity)
        .reduce((a, b) => a + b);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Cart',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1.1),
        ),
        centerTitle: true,
        actions: [
          const Icon(Icons.more_vert),
          SizedBox(
            width: 12,
          )
        ],
      ),
      bottomNavigationBar: BottomSheet(
        showDragHandle: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        dragHandleColor: Colors.grey[300],
        animationController: AnimationController(
          vsync: this,
          duration:
              const Duration(milliseconds: 300), // You can adjust the duration
        ),
        onClosing: () {},
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, bottom: 14),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12)),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total:',
                        style: TextStyle(
                          fontSize: 13,
                          letterSpacing: 1.02,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹${totalCheckoutPrice.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 13, 32, 99)),
                          padding:
                              MaterialStatePropertyAll(EdgeInsets.all(13))),
                      child: const Text(
                        'ADD TO CART',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.1,
                            fontSize: 15,
                            fontWeight: FontWeight.w900),
                      )),
                ),
              ],
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              _deliveryAddress(),
              const SizedBox(height: 15),
              _paymentMethodBuilder(),
              const SizedBox(height: 15),
              Column(children: [
                _titleBuilder(title: "My Cart", edit: false),
                const SizedBox(height: 15),
                Column(
                  children: cartItems,
                ),
                const SizedBox(height: 15),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  _deliveryAddress() {
    return Column(
      children: [
        _titleBuilder(title: "Delivery Address"),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.all(14),
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Row(
            children: [
              SizedBox(
                width: 145,
                height: double.maxFinite,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/map.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Marina , bhanu towers, 12/8AB",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Chennai, India",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Row _titleBuilder({required String title, bool? edit = true}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        edit == true
            ? const Icon(
                Icons.edit_outlined,
                size: 25,
              )
            : const SizedBox.shrink()
      ],
    );
  }

  _paymentMethodBuilder() {
    return Column(children: [
      _titleBuilder(title: "Payment Method"),
      const SizedBox(height: 15),
      Container(
          height: 80,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Row(
            children: [
              SizedBox(
                width: 80,
                height: double.maxFinite,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child:Image.asset(
                    'assets/payment.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Credit Card",
                      style: TextStyle(fontSize: 12, letterSpacing: 1.01),
                    ),
                    Text(
                      "2188 4829 4721 8419",
                      style: TextStyle(fontSize: 12, letterSpacing: 1.05),
                    )
                  ],
                ),
              )
            ],
          ))
    ]);
  }

//   _myCartBuilder() {

// }
}

class CartItem extends StatefulWidget {
  final String itemName;
  final String category;
  final double price;
  int quantity;
  final String asset;
  CartItem({
    required this.asset,
    required this.itemName,
    required this.category,
    required this.price,
    required this.quantity,
  });

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      height: 136,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 106,
            height: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.asset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.itemName,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.category,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹${(widget.price * widget.quantity).toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (widget.quantity > 1) {
                                  widget.quantity--;
                                }
                              });
                            },
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(widget.quantity.toString()),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                widget.quantity++;
                              });
                            },
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
