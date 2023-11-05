import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_firstcoz/screens/cart_page.dart';
import 'package:task_firstcoz/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_firstcoz/screens/product_page.dart';

import 'screens/cart_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Firstcoz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        bottomSheetTheme:
        const BottomSheetThemeData(surfaceTintColor: Colors.white),
          textTheme: GoogleFonts.poppinsTextTheme(), useMaterial3: true),
      home: const HomePage(),
    );
  }
}
