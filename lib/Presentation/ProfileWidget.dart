import 'package:assignment/Profiles/ProfileModel.dart';
import 'package:flutter/material.dart';
import 'package:assignment/Profiles/profiles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWidget extends StatefulWidget {
  Profile profile;
  Function passedFunction;
  int CurrentProfileIndex;
  ProfileWidget(this.profile,this.passedFunction,this.CurrentProfileIndex,{super.key});

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(25.0.r),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.circular(15.r),
            boxShadow:  [BoxShadow(
              color: Colors.grey,
              blurRadius: 25,
              offset: Offset(10, 10),
            )]
        ),
        height: 550.h,
        width: 300.w,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child:
              Image.network(widget.profile.img_link,
                  height: 230.h,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                  frameBuilder: (context, child, frame, _) {
                    if (frame == null) {
                      return Center(
                        child: Container(
                            height: 20.h,
                            width: 20.w ,
                            child: CircularProgressIndicator()),
                      );
                    }
                    return child;
                  }),


            ),
            Positioned.fill(
                top: 205.h,
                child: ClipRRect(
                  borderRadius:  BorderRadius.all(Radius.circular(15.r)),
                  child: Container(
                    color: Colors.white,
                    height: double.maxFinite,
                    width: double.infinity,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 22.w,right: 22.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Container(
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '${widget.profile.name}, ',
                                            style:  TextStyle(
                                              fontFamily: 'Sans',
                                                overflow: TextOverflow.ellipsis,
                                                color: Color(0xFF31343c),
                                                fontWeight: FontWeight.w800,
                                                fontSize: 25.sp)),
                                        TextSpan(
                                          text: widget.profile.age.toString(),
                                          style:  TextStyle(
                                            fontFamily: 'Sans',
                                            fontSize: 20.sp,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              Row(
                                children:  [
                                   Icon(Icons.location_on_rounded,color: Colors.grey,size: 22.r),
                                 // SizedBox(width: 3),
                                  RichText(
                                    text:  TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '5',
                                            style: TextStyle(
                                                fontFamily: 'Sans',
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 20.sp)),
                                        TextSpan(
                                          text: ' km',
                                          style: TextStyle(
                                            fontFamily: 'Sans',
                                            fontSize: 18.sp,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                           SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:  [

                              Chip(
                                //elevation: 20,
                                padding: EdgeInsets.all(3.r),
                                backgroundColor: Colors.yellow,
                                shadowColor: Colors.black, //CircleAvatar
                                label: Text(
                                  'Blogging',
                                  style: TextStyle(fontSize: 15.sp,
                                    fontFamily: 'Sans',),
                                ), //Text
                              ),
                              SizedBox(width: 5.w ,),
                              Chip(
                                //elevation: 20,
                                padding: EdgeInsets.all(3.r),
                                backgroundColor: Colors.yellow,
                                shadowColor: Colors.black, //CircleAvatar
                                label: Text(
                                  'Photography',
                                  style: TextStyle(fontSize: 15.sp,fontFamily: 'Sans'),
                                ), //Text
                              ),
                              SizedBox(width: 5.w ,),
                              Chip(
                                //elevation: 20,
                                padding: EdgeInsets.all(3.r),
                                backgroundColor: Colors.yellow,
                                shadowColor: Colors.black, //CircleAvatar
                                label: Text(
                                  'Vlogging',
                                  style: TextStyle(fontSize: 15.sp,fontFamily: 'Sans'),
                                ), //Text
                              ),
                            ],
                          ),
                           SizedBox(height: 10.h),
                           Text('When his brother is killed in a robbery, paraplegic Marine Jake Sully decides to take his place in a mission on the distant world of Pandora. ',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 17.sp,
                            fontFamily: 'Sans'
                          ),),
                           SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Looking For',
                                  style: TextStyle(
                                    fontFamily: 'Sans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.sp
                                  ),),
                                   SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children:  [

                                      Chip(
                                        side: BorderSide(
                                          color: Colors.grey
                                        ),
                                        //elevation: 20,
                                        padding: EdgeInsets.all(3.r),
                                        backgroundColor: Colors.white,
                                        shadowColor: Colors.black, //CircleAvatar
                                        label: Text(
                                          'Team',
                                          style: TextStyle(fontSize: 15.sp,fontFamily: 'Sans'),
                                        ), //Text
                                      ),
                                      SizedBox(width: 5.w ,),
                                      Chip(
                                        side: BorderSide(
                                            color: Colors.grey
                                        ),
                                        //elevation: 20,
                                        padding: EdgeInsets.all(3.r),
                                        backgroundColor: Colors.white,
                                        shadowColor: Colors.black, //CircleAvatar
                                        label: Text(
                                          'Friends',
                                          style: TextStyle(fontSize: 15.sp,fontFamily: 'Sans'),
                                        ), //Text
                                      ),
                                      SizedBox(width: 5.w,),
                                      Chip(
                                        side: BorderSide(
                                            color: Colors.grey
                                        ),
                                        //elevation: 20,
                                        padding: EdgeInsets.all(3.r),
                                        backgroundColor: Colors.white,
                                        shadowColor: Colors.black, //CircleAvatar
                                        label: Text(
                                          'Coffee',
                                          style: TextStyle(fontSize: 15.sp,fontFamily: 'Sans'),
                                        ), //Text
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: (){
                                  widget.passedFunction(widget.CurrentProfileIndex);
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xff4dc0f6),
                                          Color(0xff2d8eee)
                                        ]
                                    ),
                                  ),
                                  child:  Padding(
                                    padding: EdgeInsets.all(8.0.r),
                                    child:
                                    Icon(Icons.person_add_rounded,color: Colors.white,size: 22.r,),
                                  ),
                                ),
                              )
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
