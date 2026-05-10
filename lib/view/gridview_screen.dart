import 'package:flutter/material.dart';
import '../model/grid_item_model.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({super.key});

  static const routeName = '/grid';

  static final List<GridItemModel> items = [
    GridItemModel(image: 'assets/images/img1.jpeg', name: 'Nature'),
    GridItemModel(image: 'assets/images/img2.jpeg', name: 'Mountain'),
    GridItemModel(image: 'assets/images/img3.jpeg', name: 'River'),
    GridItemModel(image: 'assets/images/img4.jpg', name: 'Forest'),
    GridItemModel(image: 'assets/images/img5.jpg', name: 'Beach'),
    GridItemModel(image: 'assets/images/img6.jpeg', name: 'Sunset'),
    GridItemModel(image: 'assets/images/img7.jpeg', name: 'Flowers'),
    GridItemModel(image: 'assets/images/img8.jpeg', name: 'Road'),
    GridItemModel(image: 'assets/images/img9.jpeg', name: 'City'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final item = items[index];

            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      item.image,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Text(
                      item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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