import 'package:flutter/material.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class Submit extends StatelessWidget {
  const Submit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //height: MediaQuery.of(context).size.height * 0.3,
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://cfcga.org/wp-content/uploads/2017/06/scholar-stock.png",
                          height: 120,
                          width: 120,
                        ),
                        const Text(
                          "STUDY IN BANGLORE",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  //height: MediaQuery.of(context).size.height * 0.35,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.greenAccent,
                ),
              ],
            ),
            Positioned(
              //top: MediaQuery.of(context).size.height * 0.3 / 2 -75 + 80, // Half of the purple container's height minus half of the green container's height
              right: 0.0,
              top: 200,
              left: 0.0,
              bottom: 10,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height * 0.4,
                // Adjust as needed
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      4,
                      (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Text(
                                'Text ${index + 1}', // Heading for the TextField
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey[200],
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search for course',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  //filled: Colors.grey[100],
                                  hintStyle: TextStyle(fontSize: 18.0),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              right: 50,
              left: 50,
              child: Container(
                height: 50,
                width: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[200],
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                        AppColors.primaryColor),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
