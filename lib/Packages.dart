import 'package:flutter/material.dart';

class PackageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Packages'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          packageCard(
            title: 'Basic Package',
            price: 'Starts from Rs. 25,000',
            details: [
              'Event Venue Booking',
              'Vendor Recommendations',
              'Basic Decor Package'
            ],
            imageUrl: 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729751078/Engagement-Photography-1-scaled-e1661264212117_twgkdb.jpg', // Replace with real image
            color: Colors.blue.shade100,
          ),
          packageCard(
            title: 'Star Package',
            price: 'Starts from Rs. 90,000',
            details: [
              'Full-Service Event Planning',
              'Customized Theme Development',
              'Premium Decor Package'
            ],
            imageUrl: 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729749054/Captivating-Baby-Birthday-Photoshoot-Ideas-at-Home_tc4one.jpg', // Replace with real image
            color: Colors.orange.shade100,
          ),
          packageCard(
            title: 'Premium Package',
            price: 'Starts from Rs. 49,000',
            details: [
              'Detailed Event Planning',
              'Full Coordination On-Site',
              'Basic Decor Package'
            ],
            imageUrl: 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729749067/11668493159_p77vmd.jpg', // Replace with real image
            color: Colors.green.shade100,
          ),
          packageCard(
            title: 'Star Package',
            price: 'Starts from Rs. 90,000',
            details: [
              'Full-Service Event Planning',
              'Customized Theme Development',
              'Premium Decor Package'
            ],
            imageUrl: 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729749054/Captivating-Baby-Birthday-Photoshoot-Ideas-at-Home_tc4one.jpg', // Replace with real image
            color: Colors.orange.shade100,
          ),
          packageCard(
            title: 'Basic Package',
            price: 'Starts from Rs. 25,000',
            details: [
              'Event Venue Booking',
              'Vendor Recommendations',
              'Basic Decor Package'
            ],
            imageUrl: 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729751078/Engagement-Photography-1-scaled-e1661264212117_twgkdb.jpg', // Replace with real image
            color: Colors.blue.shade100,
          ),
        ],
      ),
      
    );
  }

  Widget packageCard({
    required String title,
    required String price,
    required List<String> details,
    required String imageUrl,
    required Color color,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(15),
        
        child: Row(
          children: [
           Container(
             height: 130,
             width: 90,
             color: Colors.red,
             child:  Image.network(
               imageUrl,
               height: 100,
               width: 80,
               fit: BoxFit.cover,
             ),
           ),
            SizedBox(width: 15),
            Expanded(
              child: SingleChildScrollView(scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      price,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: details.map((detail) => Row(
                        children: [
                          Icon(Icons.check_circle, size: 16, color: Colors.green),
                          SizedBox(width: 5),
                          Text(detail),
                        ],
                      )).toList(),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Button functionality
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red, // Button color
                      ),
                      child: Text('View Details',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
