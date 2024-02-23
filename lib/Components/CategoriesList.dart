import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        // title: Text('Categories'),
      ),
      body: CategoriesList(),
    ),
  ));
}

class CategoriesList extends StatefulWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryItem(
            categoryName: 'All',
            isSelected: selectedCategory == 'All',
            onSelect: () {
              setState(() {
                selectedCategory = 'All';
              });
            },
          ),
          CategoryItem(
            categoryName: 'Jacket',
            isSelected: selectedCategory == 'Jacket',
            onSelect: () {
              setState(() {
                selectedCategory = 'Jacket';
              });
            },
          ),
          CategoryItem(
            categoryName: 'Shirt',
            isSelected: selectedCategory == 'Shirt',
            onSelect: () {
              setState(() {
                selectedCategory = 'Shirt';
              });
            },
          ),
          CategoryItem(
            categoryName: 'Knit',
            isSelected: selectedCategory == 'Knit',
            onSelect: () {
              setState(() {
                selectedCategory = 'Knit';
              });
            },
          ),
          CategoryItem(
            categoryName: 'Trouser',
            isSelected: selectedCategory == 'Trouser',
            onSelect: () {
              setState(() {
                selectedCategory = 'Trouser';
              });
            },
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final bool isSelected;
  final VoidCallback onSelect;

  const CategoryItem({
    Key? key,
    required this.categoryName,
    required this.isSelected,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ElevatedButton(
        onPressed: onSelect,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            isSelected ? Colors.black : Color.fromARGB(255, 247, 247, 247),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide.none,
            ),
          ),
          elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return 10.0;
              }
              return 0.0;
            },
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            categoryName,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color.fromARGB(255, 12, 12, 12),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
