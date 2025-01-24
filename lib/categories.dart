import 'package:event_dart/Venues.dart';
import 'package:event_dart/decoration.dart';
import 'package:event_dart/photographer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesPage extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587372/istockphoto-610259354-612x612_zoynhc.jpg', 'label': 'Photographer'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587339/istockphoto-650655146-612x612_rueaac.jpg', 'label': 'Caterers'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587311/istockphoto-471906412-612x612_tacpwa.jpg', 'label': 'Venues'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587413/wedding_stage_decoration_h0xjh5.jpg', 'label': 'Decor'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587473/download_vj0pwm.jpg', 'label': 'Transportation'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587655/20120502-BrahminShrimat_Shivananda_Saraswati_Swami_Maharaj_za0mml.jpg', 'label': 'Pandit'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1721728840/bridmake1_pmzvwc.jpg', 'label': 'Bridal Wear'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729588412/123784-anamika-khanna_sdlaxr.jpg', 'label': 'Groom Wear'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1721728836/bridmak4_zyt90a.jpg', 'label': 'Jewelry & Makeup'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587734/1433541424559_xuqbnc.webp', 'label': 'Cakes'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587841/canva-pink-floral-wedding-invitation-M_t7CIOKxsU_eil3bf.jpg', 'label': 'Invitation'},
    {'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587864/Entertainment-Trends-1024x683_vcroqc.jpg', 'label': 'Entertainment'},
  ];

  void navigateToCategoryScreen(BuildContext context, String label) {
    if (label == 'Venues') {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Venues()));
    } else if (label == 'Photographer') {
      Navigator.push(context, MaterialPageRoute(builder: (_) => PhotographerListPage()));
    }
    else if (label == 'Decor') {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Decorationpage()));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories',
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold)
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 32),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 18,
            mainAxisSpacing: 30,
            childAspectRatio: 0.8,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => navigateToCategoryScreen(context, categories[index]['label']!),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.network(
                      categories[index]['image']!,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    categories[index]['label']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
