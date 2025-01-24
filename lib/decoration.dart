import 'package:flutter/material.dart';

import 'categories.dart';

class Decorationpage extends StatefulWidget {
  const Decorationpage({super.key});
  @override
  State<Decorationpage> createState() => _DecorationpageState();
}
class _DecorationpageState extends State<Decorationpage> {

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


  final List<Map<String, String>> decoration=[

    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1730216197/749_fvz0yu.jpg',
      'name': 'Birthday decoration',
      'location': 'Hyderabad',
      'price': 'Under ₹20,000',
      'rating': '4.0',
      'type': 'Birthday',
      'description1':'Overview',
      'description':'Engagement decor sets a romantic and elegant tone for the celebration of a couple’s commitment. Popular elements include floral arrangements, draped fabric, soft lighting, and a backdrop with the couples initials or engagement date.'
    },

    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1730216099/images_g5dlee.jpg',
      'name': 'Aniversary decoration',
      'location': 'Mumbai',
      'price': '₹50,000 - ₹1,00,000',
      'rating': '5.0',
      'type': 'Wedding',
      'description1':'Overview',
      'description':'Anniversary decor celebrates years of love and togetherness. It often includes a mix of traditional elegance and personal touches like photo walls, custom backdrops, and themed color palettes based on the anniversary year (e.g., silver for 25th, gold for 50th).'
    },

    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1730216267/download_iwqclr.jpg',
      'name': 'Engagement decoration',
      'location': 'Chennai',
      'price': '₹50,000 - ₹1,00,000',
      'rating': '4.3',
      'type': 'Wedding',
      'description1':'Overview',
      'description':'Baby showers are often whimsical and cute, with decor that celebrates the upcoming arrival. Pastel colors, baby-themed props (like pacifiers, baby bottles, and diapers), and soft, comforting elements are common.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1730216418/images_etg7br.jpg',
      'name': 'Wedding Anivesrsary decoration',
      'location': 'Hyderabad',
      'price': '₹20,000 - ₹50,000',
      'rating': '4.7',
      'type': 'Candid',
      'description1':'Overview',
      'description':''
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1730216487/1690290796_webp_original_aqe55i.webp',
      'name': 'Reception decoration',
      'location': 'Mumbai',
      'price': '₹50,000 - ₹1,00,000',
      'rating': '5.0',
      'type': 'Candid',
      'description1':'Overview',
      'description':'A bridal shower or "Bride-to-Be" celebration is all about feminine, elegant, and often playful decor that honors the upcoming bride. Colors like blush pink, gold, white, and floral accents are popular.'
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1730216576/10556203a_wcwggi.webp',
      'name': 'Baby shower decoration',
      'location': 'Portrait',
      'price': 'Under ₹20,000',
      'rating': '3.9',
      'type': 'Portrait',
      'description1':'Overview',
      'description':''
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1730216956/BRIDETOBE3_lbkusa.webp',
      'name': 'Bride to be decoration',
      'location': 'Hyderabad',
      'price': 'Under ₹20,000',
      'rating': '4.0',
      'type': 'Wedding',
      'description1':'Overview',
      'description':''
    },
    {
      'image': 'https://res.cloudinary.com/dinfsflm5/image/upload/v1730216569/images_s8uxmz.jpg',
      'name': 'Haldi decoration',
      'location': 'Chennai',
      'price': '₹20,000 - ₹50,000',
      'rating': '3.6',
      'type': 'Wedding',
      'description1':'Overview',
      'description':''
    },
    {
      'image': '',
      'name': 'Groom to be decoration',
      'location': '',
      'price': 'Under ₹20,000',
      'rating': '',
      'type': 'Wedding',
      'description1':'Overview',
      'description':''
    },
    {
      'image': '',
      'name': 'Mehendi decoration',
      'location': '',
      'price': '₹20,000 - ₹50,000',
      'rating': '',
      'type': 'Wedding',
      'description1':'Overview',
      'description':''
    },


  ];

  List filteredBudgetList = [];

  @override
  void initState() {
    super.initState();
    filteredBudgetList = decoration;
  }

  void filterdecoration() {
    setState(() {
      filteredBudgetList = decoration;
      if (selectedBudget != 'Budget') {
        filteredBudgetList = filteredBudgetList.where((decor) {
          switch (selectedBudget) {
            case 'Under ₹20,000':
              return decor['price']!.contains('₹10,000') || decor['price']!.contains('₹20,000');
            case '₹20,000 - ₹50,000':
              return decor['price']!.contains('₹20,000') || decor['price']!.contains('₹30,000') || decor['price']!.contains('₹40,000') || decor['price']!.contains('₹50,000');
            case '₹50,000 - ₹1,00,000':
              return decor['price']!.contains('₹50,000') || decor['price']!.contains('₹60,000') || decor['price']!.contains('₹70,000') || decor['price']!.contains('₹80,000') || decor['price']!.contains('₹90,000') || decor['price']!.contains('₹1,00,000');
            case 'Above ₹1,00,000':
              return decor['price']!.contains('₹1,00,000');
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
            'Decoration',
            style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
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
                          filterdecoration();
                        });
                      }),
                      SizedBox(width: 8),
                      Dropdown(selectedType, typeOptions, (newValue) {
                        setState(() {
                          selectedType = newValue!;
                          filterdecoration();
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
                    return decorcard(filteredBudgetList[index], context
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


class decordetailspage extends StatelessWidget {
  final Map<String, String> decor;
  decordetailspage({required this.decor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(decor['name']!),
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
                    decor['image']!,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  decor['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 8),
                Text(
                  'Price: ${decor['price']}',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 24),
                    SizedBox(width: 4),
                    Text(
                      decor['rating']!,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  decor['description1'] ?? 'No additional description provided.',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  decor['description'] ?? 'No additional description provided.',
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
                    child: Text('Book Appointment',style: TextStyle(color: Colors.white),),
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
    ) ;
  }
}



Widget decorcard(Map<String, String> decor, BuildContext context){
  return GestureDetector(
    onTap: () async {
      final newBooking = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>decordetailspage(decor: decor)
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
                  decor['image']!,
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
                  decor['name']!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(decor['location']!),
                SizedBox(height: 4),
                Text(
                  decor['price']!,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 4),
                    Text(
                      decor['rating']!,
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



