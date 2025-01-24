import 'package:event_dart/categories.dart';
import 'package:flutter/material.dart';

class PhotographerListPage extends StatefulWidget {
  @override
  _PhotographerListPageState createState() => _PhotographerListPageState();
}

class _PhotographerListPageState extends State<PhotographerListPage> {
  String selectedBudget = 'Budget';
  String selectedType = 'Type';
  String selectedLocation = 'Location';
  String selectedRating = 'Rating 4.0+';
  String description= "";
  String description1= "";


  final List<String> budgetOptions = [
    'Budget',
    'Under ₹20,000',
    '₹20,000 - ₹50,000',
    '₹50,000 - ₹1,00,000',
    'Above ₹1,00,000'
  ];

  final List<String> typeOptions = [
    'Type',
    'Wedding',
    'Birthday',
    'Candid',
    'Portrait'
  ];

  final List<String> locationOptions = [
    'Location',
    'Bengaluru',
    'Hyderabad',
    'Chennai',
    'Mumbai'
  ];

  final List<String> ratingOptions = [
    'Rating 4.0+',
    '4.5+',
    '4.0+',
    '3.5+'
  ];

  final List<Map<String, String>> photographerList = [
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729748768/ptaufiq-indian-wedding-rajkot-India-ceremony-couple-portraits_augj0u.jpg',
      'name': 'Marriage Photography',
      'location': 'Basavanagudi, Bengaluru',
      'price': 'Starts from ₹20,000',
      'rating': '4.2',
      'type': 'Wedding',
      'description1':'Overview',
      'description':"Capture the beautiful moments of your marriage with professional photography services. Specializing in traditional and candid styles to preserve your precious memories"



    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729748745/AV-wed15_ducdh7.jpg',
      'name': 'Wedding Photography',
      'location': 'Marathahalli, Bengaluru',
      'price': 'Starts from ₹30,000',
      'rating': '4.2',
      'type': 'Wedding',
      'description1':'Overview',
      'description': 'High-quality wedding photography to document your big day. Choose from a variety of styles to match the tone and style of your wedding.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729748768/ptaufiq-indian-wedding-rajkot-India-ceremony-couple-portraits_augj0u.jpg',
      'name': 'Marriage Photography',
      'location': 'Basavanagudi, Bengaluru',
      'price': 'Starts from ₹20,000',
      'rating': '4.2',
      'type': 'Wedding',
      'description1':'Overview',
      'description': 'High-quality wedding photography to document your big day. Choose from a variety of styles to match the tone and style of your wedding.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729748745/AV-wed15_ducdh7.jpg',
      'name': 'Wedding Photography',
      'location': 'Marathahalli, Bengaluru',
      'price': 'Starts from ₹30,000',
      'rating': '4.2',
      'type': 'Wedding',
      'description1':'Overview',
      'description': 'High-quality wedding photography to document your big day. Choose from a variety of styles to match the tone and style of your wedding.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729749035/arp00582-copy_xf9459.webp',
      'name': 'Craft Photography',
      'location': 'Marathahalli, Bengaluru',
      'price': 'Starts from ₹30,000',
      'rating': '4.2',
      'type': 'Birthday',
      'description1':'Overview',
      'description': 'High-quality wedding photography to document your big day. Choose from a variety of styles to match the tone and style of your wedding.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729751247/Candid-Wedding-photographer-Tamarind-Tree-0002_hozckx.jpg',
      'name': 'Craft Photography',
      'location': 'Marathahalli, Bengaluru',
      'price': 'Starts from ₹30,000',
      'rating': '4.2',
      'type': 'Candid',
      'description1':'Overview',
      'description': 'High-quality wedding photography to document your big day. Choose from a variety of styles to match the tone and style of your wedding.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729749067/11668493159_p77vmd.jpg',
      'name': 'Craft Photography',
      'location': 'Marathahalli, Bengaluru',
      'price': 'Starts from ₹30,000',
      'rating': '4.0',
      'type': 'Birthday',
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729662853/Wedding-Day-Photos_gjekqc.jpg',
      'name': 'Craft Photography',
      'location': 'Marathahalli, Bengaluru',
      'price': 'Starts from ₹30,000',
      'rating': '4.2',
      'type': 'Potrait',
      'description1':'Overview',
      'description': 'High-quality wedding photography to document your big day. Choose from a variety of styles to match the tone and style of your wedding.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729748651/Candid-vs.-Traditional-Wedding-Photography-Find-Your-Perfect-Style-Yabesh-Photography-1200x675_ot5fkk.jpg',
      'name': 'Craft Photography',
      'location': 'Marathahalli, Bengaluru',
      'price': 'Starts from ₹30,000',
      'rating': '4.2',
      'type': 'Wedding',
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729749054/Captivating-Baby-Birthday-Photoshoot-Ideas-at-Home_tc4one.jpg',
      'name': 'Craft Photography',
      'location': 'Marathahalli, Bengaluru',
      'price': 'Starts from ₹30,000',
      'rating': '4.2',
      'type': 'Birthday',
      'description1':'Overview',
      'description': 'High-quality wedding photography to document your big day. Choose from a variety of styles to match the tone and style of your wedding.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729662853/Wedding-Day-Photos_gjekqc.jpg',
      'name': 'Craft Photography',
      'location': 'Marathahalli, Bengaluru',
      'price': 'Starts from ₹30,000',
      'rating': '4.2',
      'type': 'Wedding',
      'description1':'Overview',
      'description': 'High-quality wedding photography to document your big day. Choose from a variety of styles to match the tone and style of your wedding.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729662853/Wedding-Day-Photos_gjekqc.jpg',
      'name': 'Craft Photography',
      'location': 'Marathahalli, Bengaluru',
      'price': 'Starts from ₹30,000',
      'rating': '4.2',
      'type': 'Candid',
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729749155/71643835_553839295156373_2649169122759278592_o_ndtin8.webp',
      'name': 'First Birthday',
      'location': 'Benagaluru',
      'price': 'Starts from ₹20,000 ',
      'rating': '5.0',
      'type': 'Birthday',
      'description1':'Overview',
      'description':"Capture the beautiful moments of your Birthday with professional photography services. Specializing in traditional and candid styles to preserve your precious memories"
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729749067/11668493159_p77vmd.jpg',
      'name': 'Birthday Party',
      'location': 'Benagaluru',
      'price': 'Starts from ₹30,000',
      'rating': '',
      'type': 'Birthday',
    },
    {
      'image': '',
      'name': '',
      'location': '',
      'price': '',
      'rating': '',
      'type': '',
      'description1':'',
      'description':''
    },
  ];

  List filteredBudgetList = [];

  @override
  void initState() {
    super.initState();
    filteredBudgetList = photographerList;
  }

  void filterPhotographers() {
    setState(() {
      filteredBudgetList = photographerList;
      if (selectedBudget == 'Under ₹20,000') {
        filteredBudgetList = filteredBudgetList.where((photographer) {
          return photographer['price']!.contains('₹20,000') ||
              photographer['price']!.contains('₹10,000');
        }).toList();
      } else if (selectedBudget == '₹20,000 - ₹50,000') {
        filteredBudgetList = filteredBudgetList.where((photographer) {
          return photographer['price']!.contains('₹20,000') ||
              photographer['price']!.contains('₹30,000') ||
              photographer['price']!.contains('₹40,000');
        }).toList();
      }
      if (selectedType != 'Type') {
        filteredBudgetList = filteredBudgetList.where((photographer) {
          return photographer['type'] == selectedType;
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Photographer',
          style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesPage()));
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.black),),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),

        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Dropdown(selectedBudget, budgetOptions, (newValue) {
                    setState(() {
                      selectedBudget = newValue!;
                      filterPhotographers();
                    });
                  }),
                  SizedBox(width: 8),
                  Dropdown(selectedType, typeOptions, (newValue) {
                    setState(() {
                      selectedType = newValue!;
                      filterPhotographers();
                    });
                  }),
                  SizedBox(width: 8),
                  Dropdown(selectedLocation, locationOptions, (newValue) {
                    setState(() {
                      selectedLocation = newValue!;
                    });
                  }),
                  SizedBox(width: 8),
                  Dropdown(selectedRating, ratingOptions, (newValue) {
                    setState(() {
                      selectedRating = newValue!;
                    });
                  }),
                ],
              ),
            ),
          ),
          // Photographer list section
          Expanded(
            child: ListView.builder(
              itemCount: filteredBudgetList.length,
              itemBuilder: (context, index) {
                return PhotographerCard(filteredBudgetList[index], context
                );
              },
            ),
          ),
        ],
      ),
    );
  }


  // Dropdown widget helper
  Widget Dropdown(String currentValue, List<String> options, ValueChanged<String?> onChanged) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: currentValue,
          icon: Icon(Icons.arrow_drop_down, color: Colors.black),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.black, fontSize: 16),
          onChanged: onChanged,
          items: options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Colors.black),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class PhotographerDetailsPage extends StatelessWidget {
  final Map<String, String> photographer;

  PhotographerDetailsPage({required this.photographer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photographer['name']!),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    photographer['image']!,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  photographer['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 8),
                Text(
                  'Price: ${photographer['price']}',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 24),
                    SizedBox(width: 4),
                    Text(
                      photographer['rating']!,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),

                  ],
                ),
                SizedBox(height: 16),
                Text(
                  photographer['description1'] ?? 'No additional description provided.',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  photographer['description'] ?? 'No additional description provided.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Booking Confirmation'),
                          content: Text('Do you want to book this photographer?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Book Now',style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text('Book Appointment',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


Widget PhotographerCard(Map<String, String> photographer, BuildContext context) {
  return GestureDetector(
    onTap: () async {
      final newBooking = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PhotographerDetailsPage(photographer: photographer),
        ),
      );

      if (newBooking != null) {

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Booked ${newBooking.photographerName} successfully!'),
        ));
      }
    },
    child: Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.network(
                  photographer['image']!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  photographer['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(photographer['location']!),
                SizedBox(height: 4),
                Text(
                  photographer['price']!,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 4),
                    Text(
                      photographer['rating']!,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}


// class Booking {
//   final String photographerName;
//   final String location;
//   final String price;
//   final String rating;
//
//   Booking({
//     required this.photographerName,
//     required this.location,
//     required this.price,
//     required this.rating,
//   });
// }
//
// class BookingsPage extends StatefulWidget {
//   final List<Booking> bookings;
//
//   const BookingsPage({Key? key, required this.bookings}) : super(key: key);
//
//   @override
//   State<BookingsPage> createState() => _BookingsPageState();
// }
//
// class _BookingsPageState extends State<BookingsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Bookings"),
//         centerTitle: true,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: widget.bookings.isEmpty
//           ? Center(
//         child: Text("No bookings yet.", style: TextStyle(fontSize: 18)),
//       )
//           : ListView.builder(
//         itemCount: widget.bookings.length,
//         itemBuilder: (context, index) {
//           final booking = widget.bookings[index];
//           return ListTile(
//             title: Text(booking.photographerName),
//             subtitle: Text(
//               "${booking.location} - ${booking.price} - Rating: ${booking.rating}",
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
//
