import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15)),
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 25,
            )),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15)),
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 25,
            ))
      ],
    );
  }
}
