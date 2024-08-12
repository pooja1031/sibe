import 'package:flutter/material.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class AccommadationDetails extends StatelessWidget {
  AccommadationDetails({super.key});
  var height, width;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    height = screenSize.height;
    width = screenSize.width;
    return Scaffold(
      body: Column(
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
                    'Accomadation Near Me',
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
          SizedBox(
            height: screenSize.height * 0.3,
            width: width,
            child: Image.network(
              "https://wallpaperaccess.com/full/2137313.jpg",
              height: screenSize.height * 0.2,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "ibis academy Bnglore bdhbcdn bcdhxdb",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  maxLines: 2,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Text("RATING"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Text("2km away"),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  2,
                  (index) => Container(
                    height: height * 0.07,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                          style: BorderStyle.solid, color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Icon(Icons.call),
                        ),
                        const Text(
                          "Call",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    2,
                    (index) => Container(
                          height: height * 0.07,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            border: Border.all(
                                style: BorderStyle.solid, color: Colors.grey),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Icon(Icons.call),
                              ),
                              const Text(
                                "Call",
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
