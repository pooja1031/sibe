import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:study_in_banglore/application/presentation/home/homescreen.dart';
import 'package:study_in_banglore/application/presentation/search/search.dart';
import 'package:study_in_banglore/application/presentation/user_support/user_support.dart';
import 'package:study_in_banglore/domain/core/color/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 3, vsync: this);
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late double sWidth;
    final size = MediaQuery.of(context).size;
    sWidth = size.width;
    return Scaffold(
      body: BottomBar(
        fit: StackFit.expand,
        icon: (width, height) => Center(
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: null,
            icon: Icon(
              Icons.arrow_upward_rounded,
              color: AppColors.kBlack,
              size: width,
            ),
          ),
        ),
        borderRadius: BorderRadius.circular(500),
        duration: const Duration(seconds: 1),
        curve: Curves.decelerate,
        showIcon: true,
        barColor: AppColors.primaryColor,
        start: 2,
        end: 0,
        offset: 10,
        barAlignment: Alignment.bottomCenter,
        iconHeight: 35,
        iconWidth: 35,
        reverse: false,
        // barDecoration: BoxDecoration(
        //   color: Colors.transparent,
        //   borderRadius: BorderRadius.circular(500),
        // ),
        iconDecoration: BoxDecoration(
          color: AppColors.kWhite,
          borderRadius: BorderRadius.circular(500),
        ),
        hideOnScroll: true,
        scrollOpposite: false,
        onBottomBarHidden: () {},
        onBottomBarShown: () {},
        body: (context, controller) => TabBarView(
            controller: tabController,
            dragStartBehavior: DragStartBehavior.down,
            physics: const BouncingScrollPhysics(),
            children: const [
              HomeScreen(),
              SearchScreen(),
              UserSupportScreen()
            ]),
        child: SizedBox(
          height: sWidth * 0.17,
          child: TabBar(
            controller: tabController,
            unselectedLabelColor: AppColors.kWhite,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                icon: currentPage == 0
                    ? const CircleAvatar(
                        backgroundColor: AppColors.kWhite,
                        child: Icon(Icons.home),
                      )
                    : const Icon(Icons.home),
              ),
              Tab(
                icon: currentPage == 1
                    ? const CircleAvatar(
                        backgroundColor: AppColors.kWhite,
                        child: Icon(Icons.search),
                      )
                    : const Icon(Icons.search),
              ),
              Tab(
                icon: currentPage == 2
                    ? const CircleAvatar(
                        backgroundColor: AppColors.kWhite,
                        child: Icon(Icons.settings),
                      )
                    : const Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
