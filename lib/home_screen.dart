import 'package:flutter/material.dart';
import 'package:theme_flutter/product_card.dart';
import 'app_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: AppColors.primaryYellow,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/user.jpg'),
                      ),
                      Icon(Icons.menu, color: AppColors.darkText, size: 28),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Hello , PayMax',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'What do you want to buy?',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  _CategoryItem(icon: Icons.chair, label: 'Sofas'),
                   _CategoryItem(icon:Icons.table_restaurant, label: 'Table'),
                  _CategoryItem(icon: Icons.inventory_2, label: 'Wardrobe'),
                  _CategoryItem(icon: Icons.bed	, label: 'Bed'),
                 
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  ProductCard(
                    imageUrl: 'assets/sofa.jpg',
                    title: 'FinnNavian',
                    description:
                        'Scandinavian small sized double sofa imported leather',
                    price: 248,
                  ),
                  ProductCard(
                    imageUrl: 'assets/chair.jpg',
                    title: 'Classic Chair',
                    description: 'Elegant wooden chair with black matte finish',
                    price: 180,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _CategoryItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon, size: 30), const SizedBox(height: 5), Text(label)],
    );
  }
}
