import 'package:assignment/Presentation/NoProfilesWidget.dart';
import 'package:assignment/Profiles/ProfileModel.dart';
import 'package:assignment/presentation/ProfileWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:assignment/presentation/BackgroundContainerWidget.dart';
import 'package:assignment/Profiles/profiles.dart';
import 'BottonNavBarWidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({Key? key}) : super(key: key);

  @override
  _HomeScreeenState createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {

  final PageController _pageController = PageController();
  var CurrentIndex;
  bool isLoaded = false;

  void DataNullCheck(){
    if(profiles.isEmpty ){
      setState(() {
        isLoaded = false;
      });
    } else {
      setState(() {
        isLoaded = true;
      });
    }
  }


  @override
  void initState() {
    super.initState();
    DataNullCheck();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color(0xff4dc0f6)));
  }

  void _passedFunction(int input) {
    print(input.toString());
    //profiles.removeAt(input);
    setState(() {
      profiles.removeAt(input);
      DataNullCheck();
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ScrollConfiguration(
          behavior:  MyBehavior(),
          child: Stack(
            children: [
              const BackgroundContainer(),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 15.w,right: 15.w,top: 15.h),
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(icon: Icon(Icons.arrow_back),color: Colors.white,iconSize: 22.r, onPressed: () {
                              setState(() {
                                profiles.removeAt(CurrentIndex);
                                DataNullCheck();
                              });
                            },),
                             Text('Food Buddy',
                              style: TextStyle(
                                fontFamily: 'Sans',
                                fontSize: 22.0.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(icon: const Icon(Icons.settings_backup_restore_sharp),color: Colors.white,iconSize: 23.r, onPressed: () {
                              _pageController.animateToPage(CurrentIndex-1,  duration: const Duration(seconds: 1),
                                  curve: Curves.easeIn);
                            },),
                            IconButton(icon: const Icon(Icons.menu),color: Colors.white,iconSize: 23.r ,onPressed: () {  },),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: double.maxFinite,
                      child:
                      isLoaded? PageView.builder(
                          scrollDirection: Axis.vertical,
                          controller: _pageController,
                          physics: const PageScrollPhysics(),
                          itemBuilder: (context, index){
                            return VisibilityDetector(
                              key: Key(index.toString()),
                              onVisibilityChanged: (VisibilityInfo info) {
                                if (info.visibleFraction == 1) {
                                  setState(() {
                                    CurrentIndex = index;
                                  });
                                }
                              },
                              child:
                              ProfileWidget(profiles[index],_passedFunction,index),
                            );
                          },
                          itemCount: profiles.length): const NoProfiles(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}


// disabled default blue swatch animation
class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}