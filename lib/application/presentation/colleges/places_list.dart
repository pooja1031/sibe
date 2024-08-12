import 'package:flutter/material.dart';

import '../../../domain/core/color/colors.dart';

class Places extends StatelessWidget {
  const Places({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 2),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Text(
                      'Places',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: 'Search for course',
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 18.0),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                ),
              ),
            ),
            Column(
              children: List.generate(
                10,
                (index) => ListTile(
                  leading: Image.network(
                      "https://clipartcraft.com/images/cornell-university-logo-emblem-4.png"),
                  title: const Text(
                    'Sanjay Gandhi Institue of trauma and orthapade',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: const Text(
                    'Banglore',
                    style: TextStyle(color: Colors.black),
                  ),
                  contentPadding: const EdgeInsets.all(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
