import 'package:flutter/material.dart';
import 'package:study_in_banglore/application/presentation/home/widgets/apply_screens/apply_counselling.dart';
import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';

class FreeCounselling extends StatelessWidget {
  const FreeCounselling({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back)),
              title: 'One on One Free Counselling')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  width: screenSize.width * 0.8,
                  height: screenSize.width * 0.7,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('asset/Layer_1 (1).png'))),
                ),
              ),
              const Text(
                'Meet Our Career Councillor',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              kHeight150,
              ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all<Size>(const Size(250, 50)),
                      backgroundColor: WidgetStateProperty.all<Color>(
                          AppColors.primaryColor)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ApplyCousellingScreen(),
                    ));
                  },
                  child:
                      const Text('Apply', style: TextStyle(color: AppColors.kWhite)))
            ],
          ),
        ),
      ),
    );
  }
}
