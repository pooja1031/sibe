import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:study_in_banglore/application/presentation/colleges/apply_college.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:url_launcher/url_launcher.dart';

class ElevatedButtonsWidget extends StatelessWidget {
  ElevatedButtonsWidget({super.key, required this.id, required this.name});
  final int id;
  String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  WidgetStateProperty.all<Color>(AppColors.primaryColor),
              fixedSize: WidgetStateProperty.all<Size>(const Size(120, 40))),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => ApplyCollegeScreen(
                      collegeId: id,
                      name: name,
                    )));
          },
          child: const Text('Apply', style: TextStyle(color: AppColors.kWhite)),
        ),
        kWidth10,
        ElevatedButton.icon(
          style: ButtonStyle(
            fixedSize: WidgetStateProperty.all<Size>(const Size(120, 40)),
            backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
          ),
          onPressed: () {
            // _shareCollegeDetailsToWhatsApp(context, id);
          },
          label: const Text(
            'Share',
            style: TextStyle(color: AppColors.kWhite),
          ),
          icon: const FaIcon(FontAwesomeIcons.whatsapp),
        ),
      ],
    );
  }

  void _shareCollegeDetailsToWhatsApp(
      BuildContext context, int collegeId) async {
    final deepLink = Uri.parse(
        'https://your_dynamic_link_url.com/collegeDetails?collegeId=$collegeId');
    final textToShare = 'Check out this college: $deepLink';
    final whatsappUrl = Uri.parse('whatsapp://send?text=$textToShare');

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('WhatsApp is not installed!'),
        ),
      );
    }
  }

//  Uri generateDeepLinkForCollege(int collegeId) {
//   final uri = .generateURI(
//     routeName: Routes.collegeDetails,
//     parameters: {'collegeId': collegeId},
//   );
//   return uri;
// }
}
