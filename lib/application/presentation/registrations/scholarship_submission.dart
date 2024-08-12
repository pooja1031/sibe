import 'package:flutter/material.dart';

import '../../../domain/core/color/colors.dart';

class ScholarshipSubmission extends StatelessWidget {
  ScholarshipSubmission({super.key});
  var height, width;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.15,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                    const Text(
                      'Scholarship Submission',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
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
                          height: 10,
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              height: 50,
              width: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(AppColors.primaryColor),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(color: AppColors.kWhite),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
