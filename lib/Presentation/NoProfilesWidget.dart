import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoProfiles extends StatelessWidget {
  const NoProfiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.all(25.0.r),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(15.r),
              boxShadow: const [BoxShadow(
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
                Image.network('https://img.freepik.com/free-vector/empty-concept-illustration_114360-1188.jpg?w=740&t=st=1672911040~exp=1672911640~hmac=442f6963b87dff1b70f7b1a202fba57127da1b762ddc8f3d20d6a771ade01a85',
                    height: 225.h,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                    frameBuilder: (context, child, frame, _) {
                      if (frame == null) {
                        return Center(
                          child: Container(
                              height: 20.h,
                              width: 20.w,
                              child: CircularProgressIndicator()),
                        );
                      }
                      return child;
                    }),


              ),
              Positioned.fill(
                  top: 215.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Container(
                      color: Colors.white,
                      height: double.maxFinite,
                      width: double.infinity,
                      child: Center(child: Text('Woops! \n No New Profiles!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25.sp
                        ),)),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
