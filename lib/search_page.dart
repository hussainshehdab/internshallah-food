import 'package:flutter/material.dart';

import 'food_card.dart';

class FoodSearchPage extends StatelessWidget {
  final List<Map<String, dynamic>> foodItems = [
    {
      'name': 'Oni Sandwich',
      'description': 'Spicy chicken sandwich',
      'price': 6.72,
      'calories': 69,
      'image': 'assets/sandwitches.jpg'
    },
    {
      'name': 'Dan Noodles',
      'description': 'Spicy fruit mixed',
      'price': 8.86,
      'calories': 120,
      'image': 'assets/noddles.jpg'
    },
    {
      'name': 'Chicken Dimsum',
      'description': 'Spicy chicken dimsum',
      'price': 6.99,
      'calories': 65,
      'image': 'assets/dimsum.jpg'
    },
    {
      'name': 'Egg Pasta',
      'description': 'Spicy chicken pasta',
      'price': 9.80,
      'calories': 78,
      'image': 'assets/eggpasta.jpg'
    },
    {
      'name': 'Pizza',
      'description': 'Spicy chicken dimsum',
      'price': 12.99,
      'calories': 190,
      'image': 'assets/pizza.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Food'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: const [
          SizedBox(
            height: 50,
            width: 50,
            child: Card(
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.boy),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search Food',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Card(
                  elevation: 5,
                  color: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.filter_list, color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Found 80 results',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.7,
                ),
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  final item = foodItems[index];
                  return FoodItemCard(item: item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
