import 'package:flutter/material.dart';
import 'package:task_firstcoz/widgets/custom_search_bar.dart';
import 'package:task_firstcoz/widgets/custom_tab_bar.dart';
import 'package:task_firstcoz/widgets/popular_products_list.dart';
import 'package:task_firstcoz/widgets/recomended_cards_list.dart';
import 'package:task_firstcoz/widgets/welcom_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottomOpacity: 1,
        // leading: const Icon(Icons.menu,size: 24,),
        title: const Text("Home"),
        centerTitle: true,
        actions: [
          CircleAvatar(
            radius: 22,
            child: Image.asset('assets/profile.png'),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      drawer:Drawer(),
      body:   SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeTextWidget(),
            CustomSearchBar(),
            CustomTabBar(),
            RecomendedCardList(),
            PopularProductsList(),
          ],
        ),
      ),

      bottomNavigationBar:
          BottomNavigationBar(showSelectedLabels: false, items: const [
        BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.grid_view_rounded,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.favorite_border_rounded,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.category_outlined,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.person_outline_outlined,
              color: Colors.black,
            )),
      ]),
    );
  }
}
