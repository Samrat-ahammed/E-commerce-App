import 'package:ecommerceapp/screens/Home/Widgets/CustomAppBar.dart';
import 'package:ecommerceapp/screens/Home/Widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 217, 217),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              // for custom app bar
              CustomAppBar(),
              SizedBox(
                height: 20,
              ),
              // for search bar
              MySearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
