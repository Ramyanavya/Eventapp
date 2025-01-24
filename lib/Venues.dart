import 'package:event_dart/categories.dart';
import 'package:flutter/material.dart';

class Venues extends StatefulWidget {
  const Venues({super.key});

  @override
  State<Venues> createState() => _VenuesState();
}

class _VenuesState extends State<Venues> {
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


  final List<Map<String, String>> venueslist=[
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587311/istockphoto-471906412-612x612_tacpwa.jpg',
      'name': 'Event Venue',
      'location': 'Hyderabad',
      'price': 'Starts from ₹50,000',
      'rating': '4.0',
      'type': 'Wedding',
      'description1':'Overview',
      'description':'These spaces range from grand banquet halls and rustic barns to picturesque outdoor gardens. They are often chosen based on capacity, ambiance, and location to reflect the couple’s style and accommodate guests comfortably.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729572831/istockphoto-479977238-612x612_hybkv3.jpg',
      'name': 'Outdoor Venue',
      'location': 'Chennai',
      'price': 'Starts from ₹30,000',
      'rating': '4.2',
      'type': 'Wedding',
      'description1':'Overview',
      'description':'Professional spaces like conference centers, hotels, and upscale restaurants are commonly selected for meetings, product launches, or networking events. These venues provide the technology and facilities required for business needs, like AV equipment and Wi-Fi.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1729587413/wedding_stage_decoration_h0xjh5.jpg',
      'name': 'Sports Venue',
      'location': 'Benagaluru',
      'price': 'Starts from ₹20,000',
      'rating':'3.9',
      'type': 'Birthday',
      'description1':'Overview',
      'description':'For birthdays, anniversaries, or social gatherings, popular choices include lounges, rooftop bars, beach resorts, or unique themed locations. These venues offer flexibility in décor and amenities, catering to both small and large groups.'
    },
    {
      'image': 'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729749825/plan5_tnrlbp.jpg',
      'name': 'Concert Venue',
      'location': 'Hyderabad',
      'price': 'Starts from ₹50,000',
      'rating': '4.5',
      'type': 'Wedding',
      'description1':'Overview',
      'description':'For candid photoshoots, portraits, or commercial productions, venues are often selected for their visual appeal. Studios, scenic outdoor locations, or architecturally interesting indoor settings are preferred for the perfect aesthetic backdrop.'
    },
    {
      'image': 'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729659492/rs4_fo5rfs.jpg',
      'name': 'Restaurants or cafes',
      'location': '',
      'price': 'Starts from ₹40,000',
      'rating': '4.2',
      'type': 'Candid',
      'description1':'Overview',
      'description':'For festivals, expos, or multi-day events, convention centers and stadiums provide ample space for vendors, breakout sessions, and larger crowds.'
    },
    {
      'image': 'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729577728/banner4_xnnsmv.jpg',
      'name': 'Cultural Venue',
      'location': '',
      'price': 'Starts from ₹30,000',
      'rating': '4.0',
      'type': 'Candid',
      'description1':'Overview',
      'description':'For candid photoshoots, portraits, or commercial productions, venues are often selected for their visual appeal. Studios, scenic outdoor locations, or architecturally interesting indoor settings are preferred for the perfect aesthetic backdrop.'
    },
    {
      'image': 'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729919596/ven1_derjjv.jpg',
      'name': 'Themed and unique',
      'location': '',
      'price': 'Starts from ₹50,000',
      'rating': '4.7',
      'type': 'Potrait',
      'description1':'Overview',
      'description':'For birthdays, anniversaries, or social gatherings, popular choices include lounges, rooftop bars, beach resorts, or unique themed locations. These venues offer flexibility in décor and amenities, catering to both small and large groups.'
    },
    {
      'image': 'https://res.cloudinary.com/dwja7zmvm/image/upload/v1729919602/ven2_kkpjf8.jpg',
      'name': 'Outdoor Venue',
      'location': '',
      'price': 'Starts from ₹20,000',
      'rating': '4.5',
      'type': 'Wedding',
      'description1':'Overview',
      'description':'For festivals, expos, or multi-day events, convention centers and stadiums provide ample space for vendors, breakout sessions, and larger crowds.'
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
    filteredBudgetList = venueslist;
  }

  void filtervenues() {
    setState(() {
      filteredBudgetList = venueslist;
      if (selectedBudget != 'Budget') {
        filteredBudgetList = filteredBudgetList.where((venue) {
          switch (selectedBudget) {
            case 'Under ₹20,000':
              return venue['price']!.contains('₹10,000') || venue['price']!.contains('₹20,000');
            case '₹20,000 - ₹50,000':
              return venue['price']!.contains('₹20,000') || venue['price']!.contains('₹30,000') || venue['price']!.contains('₹40,000') || venue['price']!.contains('₹50,000');
            case '₹50,000 - ₹1,00,000':
              return venue['price']!.contains('₹50,000') || venue['price']!.contains('₹60,000') || venue['price']!.contains('₹70,000') || venue['price']!.contains('₹80,000') || venue['price']!.contains('₹90,000') || venue['price']!.contains('₹1,00,000');
            case 'Above ₹1,00,000':
              return venue['price']!.contains('₹1,00,000');
            default:
              return true;
          }
        }).toList();
      }
      if (selectedType != 'Type') {
        filteredBudgetList = filteredBudgetList.where((venue) {
          return venue['type'] == selectedType;
        }).toList();
      }
      if (selectedLocation != 'Location') {
        filteredBudgetList = filteredBudgetList.where((venue) => venue['location'] == selectedLocation).toList();
      }


      if (selectedRating != 'Rating 4.0+') {
        filteredBudgetList = filteredBudgetList.where((venue) {
          double rating = double.tryParse(venue['rating'] ?? '0') ?? 0.0; // Safe parse
          double selectedRatingValue = double.parse(selectedRating.split('+')[0]);
          return rating >= selectedRatingValue;
        }).toList();
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Venues',
          style: TextStyle(color: Colors.black),
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
                filtervenues();
              });
            }),
            SizedBox(width: 8),
            Dropdown(selectedType, typeOptions, (newValue) {
              setState(() {
                selectedType = newValue!;
                filtervenues();
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
            Expanded(
              child: ListView.builder(
                itemCount: filteredBudgetList.length,
                itemBuilder: (context, index) {
                  return venuecard(filteredBudgetList[index], context
                  );
                },
              ),
            ),
    ]
      )
    );
  }
}


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

class venuesdetailspage extends StatelessWidget {
  final Map<String, String> venues;
  venuesdetailspage({required this.venues});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(venues['name']!),
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
                    venues['image']!,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  venues['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 8),
                Text(
                  'Price: ${venues['price']}',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 24),
                    SizedBox(width: 4),
                    Text(
                      venues['rating']!,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  venues['description1'] ?? 'No additional description provided.',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  venues['description'] ?? 'No additional description provided.',
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
                          content: Text('Do you want to book this Venue?'),
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
                              child: Text('Book Now'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text('Book Appointment'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ) ;
  }
}

Widget venuecard(Map<String, String> venues, BuildContext context){
  return GestureDetector(
    onTap: () async {
      final newBooking = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>venuesdetailspage(venues: venues)
        ),
      );

      if (newBooking != null) {

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Booked ${newBooking.venuesName} successfully!'),
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
                  venues['image']!,
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
                  venues['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(venues['location']!),
                SizedBox(height: 4),
                Text(
                  venues['price']!,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 4),
                    Text(
                      venues['rating']!,
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





