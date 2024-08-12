import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:study_in_banglore/application/bussiness_logic/bloc/colleges/colleges_bloc.dart';
import 'package:study_in_banglore/application/presentation/colleges/widgets/courses_widget.dart';
import 'package:study_in_banglore/application/presentation/colleges/widgets/elevated_buttons.dart';
import 'package:study_in_banglore/application/presentation/utils/controller/expansion_controller.dart';

import 'package:study_in_banglore/application/presentation/utils/customs/cusom_app_bar.dart';
import 'package:study_in_banglore/application/presentation/utils/snack_bar/snack_bar.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';
import 'package:study_in_banglore/domain/core/constant/const.dart';
import 'package:study_in_banglore/domain/models/colleges/college_details/college.dart';
import 'package:study_in_banglore/domain/models/colleges/college_details/college_query_model.dart';
import 'package:study_in_banglore/domain/models/colleges/college_details/facility.dart';

class CollegesDetailsScreen extends StatefulWidget {
  final int id;
  const CollegesDetailsScreen({
    super.key,
    required this.id,
  });
  @override
  _CollegesDetailsScreenState createState() => _CollegesDetailsScreenState();
}

class _CollegesDetailsScreenState extends State<CollegesDetailsScreen> {
  bool isFacilitiesExpanded = false;
  bool isDescriptionExpanded = false;
  bool isCoursesExpanded = false;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    var height = screenSize.height;
    var width = screenSize.width;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CollegesBloc>().add(
            CollegesEvent.collegesDetails(
                queryModel: CollegeQueryModel(id: widget.id,)),
          );
    });
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: CustomAppBar(
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back, color: AppColors.kWhite),
            ),
            title: 'College Details',
          ),
        ),
        body: SingleChildScrollView(
            child: BlocConsumer<CollegesBloc, CollegesState>(
                listener: (context, state) {
          if (state.hasError) {
            showSnack(
                context: context,
                message: state.message!,
                color: AppColors.kRed);
          }
        }, builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: LoadingAnimationWidget.inkDrop(
                  color: AppColors.kGrey,
                  size: 25,
                ),
              ),
            );
          } else if (state.collegesDetails != null &&
              state.collegesDetails!.data != null &&
              state.collegesDetails!.data!.college != null) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: screenSize.height * 0.3,
                      width: width,
                      child:
                          state.collegesDetails!.data!.college!.bannerImage !=
                                  null
                              ? Image.network(
                                  state.collegesDetails!.data!.college!
                                      .bannerImage!,
                                  height: screenSize.height * 0.2,
                                  fit: BoxFit.cover,
                                )
                              : Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: LoadingAnimationWidget.inkDrop(
                                      color: AppColors.kGrey,
                                      size: 25,
                                    ),
                                  ),
                                )),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        state.collegesDetails!.data!.college!.logo != null
                            ? Image.network(
                                height: 50,
                                state.collegesDetails!.data!.college!.logo!,
                              )
                            : Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: LoadingAnimationWidget.inkDrop(
                                    color: AppColors.kBlack,
                                    size: 10,
                                  ),
                                ),
                              ),
                        kWidth10,
                        Expanded(
                          child: Text(
                            state.collegesDetails!.data!.college!.college!,
                            maxLines: 2,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: height * 0.01,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.grey[100],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(children: [
                      Container(
                        height: height * 0.1 / 2,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.location_on),
                        ),
                      ),
                      kWidth5,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Place',
                            style: TextStyle(color: AppColors.kGrey),
                          ),
                          Text(
                            state.collegesDetails!.data!.college!.place ??
                                'Kochi',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Container(
                          height: height * 0.1 / 2,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.flag_outlined),
                          ),
                        ),
                      ),
                      kWidth5,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Established',
                            style: TextStyle(color: AppColors.kGrey),
                          ),
                          Text(
                            state.collegesDetails!.data!.college!.established!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(children: [
                      Container(
                        height: height * 0.1 / 2,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.star_outline),
                        ),
                      ),
                      kWidth5,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ranking',
                            style: TextStyle(color: AppColors.kGrey),
                          ),
                          Text(
                            "${state.collegesDetails!.data!.college!.ranking!.round().toString()} - NIRF",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 85),
                        child: Container(
                          height: height * 0.1 / 2,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_outline),
                          ),
                        ),
                      ),
                      kWidth5,
                      Column(
                        children: [
                          const Text(
                            'Rating',
                            style: TextStyle(color: AppColors.kGrey),
                          ),
                          Text(
                            "${state.collegesDetails!.data!.college!.ranking!.toString()}/5.0",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  Facilities(
                    facility: state.collegesDetails!.data!.facilities!,
                    name: state.collegesDetails!.data!.college!.college!,
                    id: widget.id,
                  ),
                  Description(
                    college: state.collegesDetails!.data!.college!,
                  ),
                  CoursesWidget(
                    id: state.collegesDetails!.data!.college!.id!,
                  )
                ]);
          } else {
            return const Center(
              child: Text("College Details not available "),
            );
          }
        })));
  }
}

class Facilities extends GetView<ExpansionPanelController> {
  Facilities(
      {super.key,
      required this.facility,
      required this.name,
      required this.id});
  List<Facility> facility;
  final int id;
  String name;
  @override
  ExpansionPanelController get controller => ExpansionPanelController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Obx(() => ExpansionTile(
              title: const Text(
                "Facilities",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(controller.isExpanded.value
                  ? Icons.arrow_drop_down
                  : Icons.arrow_drop_up),
              children: [
                SizedBox(
                  height: screenSize.height * 0.4,
                  child: ListView.builder(
                    itemCount: facility.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text(facility[index].facility!)],
                        ),
                      );
                    },
                  ),
                )
              ],
              onExpansionChanged: (bool expanded) {
                controller.toggleExpansion();
              },
            )),
        Stack(
          children: [
            ElevatedButtonsWidget(
              id: id,
              name: name,
            )
          ],
        )
      ],
    );
  }
}

class Description extends GetView<ExpansionPanelController> {
  Description({super.key, required this.college});
  College college;
  @override
  ExpansionPanelController get controller => ExpansionPanelController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => ExpansionTile(
              title: const Text(
                "Description",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(controller.isExpanded.value
                  ? Icons.arrow_drop_down
                  : Icons.arrow_drop_up),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(college.description!),
                    ],
                  ),
                ),
              ],
              onExpansionChanged: (bool expanded) {
                controller.toggleExpansion();
              },
            )),
      ],
    );
  }
}
