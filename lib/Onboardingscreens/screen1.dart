import 'package:event_dart/Homescreen.dart';
import 'package:event_dart/Onboardingscreens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  int currentPage = 0;
  final pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: pageController,
        onPageChanged: (int i) {
          setState(() {
            currentPage = i;
          });
        },
        children: [
          Onboardingpages(
              'https://res.cloudinary.com/dinfsflm5/image/upload/v1729574417/e24ca444ce96c27c108419ce1e7911cf_sclt2a.jpg',
              'Plan your event',
              'Plan Your event with interesting features like AI and much more, smoothly.'),
          Onboardingpages(
              'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587413/wedding_stage_decoration_h0xjh5.jpg',
              'Find Your Perfect Spot',
              'Compare availability, pricing, and reviews to select your best venue and vendors.'),
          Onboardingpages(
              'https://res.cloudinary.com/dinfsflm5/image/upload/v1729574417/e24ca444ce96c27c108419ce1e7911cf_sclt2a.jpg',
              'Effortless Event',
              'Connect with venue and event managers for seamless event planning and management.'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: TextButton(
              onPressed: () {
                pageController.animateToPage(
                  2,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return buildCarouselIndicator(index == currentPage);
            }),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                if (currentPage < 2) {
                  pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }
                else {
                  // Navigate to the next page when the last onboarding page is reached
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomePage()));
                }
              },
              shape: CircleBorder(),
              child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20.sp),
            ),
          ),
        ],
      ),
    );
  }

  Widget Onboardingpages(String imageUrl, String title, String description) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r), // Responsive radius
                  topLeft: Radius.circular(30.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 30.w, vertical: 20.h),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildCarouselIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      width: isActive ? 12.w : 8.w,
      height: isActive ? 12.h : 8.h,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
