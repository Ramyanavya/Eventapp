
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatelessWidget {
  final List<String> bannerImages = [
    'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729577677/banner1_si1nvt.jpg',
    'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729577692/banner2_wirhef.jpg',
    'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729577718/banner3_mfi4me.jpg',
    'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729577728/banner4_xnnsmv.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100.h,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(left: 16.w, top: 50.h, right: 16.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red, size: 18),
                      SizedBox(width: 5.w),
                      Text(
                        "Bengaluru",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Majunath Nagar, Bosesdwhar...",
                    style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.notifications_none, color: Colors.black),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              // Search Bar
              _buildSearchBar(),
              SizedBox(height: 20.h),
              // Carousel Banner Section
              _buildCarouselBanner(),
              SizedBox(height: 20.h),
              // Recent Stories Section
              _buildSectionTitle('Recent Stories', 'View all'),
              SizedBox(height: 10.h),
              _buildRecentStories(),
              SizedBox(height: 20.h),
              // Categories Section
              _buildSectionTitle('Categories', 'View all'),
              SizedBox(height: 10.h),
              _buildCategories(), // Circular Categories
              SizedBox(height: 20.h),
              // Nearest Venues (Placeholder for more sections)
              _buildSectionTitle('Nearest Venues', 'View all'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search by category or name',
        filled: true,
        fillColor: Colors.grey[200],
        prefixIcon: Icon(Icons.search, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildCarouselBanner() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 250.h,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1.0,
      ),
      items: bannerImages.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Event plan starts from 25,000",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      "With best certain service",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildSectionTitle(String title, String actionText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            actionText,
            style: TextStyle(
              color: Colors.red,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRecentStories() {
    return SizedBox(
      height: 200.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildStoryCard(
              'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729659491/rs5_jajwei.jpg'),
          SizedBox(width: 10.w),
          _buildStoryCard(
              'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729659451/rs3_f4brkj.jpg'),
          SizedBox(width: 10.w),
          _buildStoryCard(
              'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729659492/rs4_fo5rfs.jpg'),
        ],
      ),
    );
  }

  Widget _buildStoryCard(String imagePath) {
    return Container(
      width: 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.red, width: 2.w),
        image: DecorationImage(
          image: NetworkImage(imagePath), // Replace with your story image
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildCategories() {
    return SizedBox(
      height: 120.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCircularCategory(
              'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587311/istockphoto-471906412-612x612_tacpwa.jpg'),
          //SizedBox(width: 2.w),
          _buildCircularCategory(
              'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587339/istockphoto-650655146-612x612_rueaac.jpg'),
          // SizedBox(width: 2.w),
          _buildCircularCategory(
              'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587372/istockphoto-610259354-612x612_zoynhc.jpg'),
          // SizedBox(width: 10.w),
          _buildCircularCategory(
              'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587864/Entertainment-Trends-1024x683_vcroqc.jpg'),
        ],
      ),
    );
  }

  Widget _buildCircularCategory(String imagePath) {
    return Container(
      width: 80.w,
      height: 80.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.red, width: 2.w),
        image: DecorationImage(
          image: NetworkImage(imagePath), // Replace with your category image
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}