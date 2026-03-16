import '../models/category_model.dart';

List<Category> getAppCategories() {
  return [
    Category(
      title: 'Fruits',
      items: [
        CategoryItem(name: 'Apple', icon: '🍎'),
        CategoryItem(name: 'Banana', icon: '🍌'),
        CategoryItem(name: 'Orange', icon: '🍊'),
      ],
      isExpanded: true, // Default to true based on the image
    ),
    Category(
      title: 'Vegetables',
      items: [
        CategoryItem(name: 'Carrot', icon: '🥕'),
        CategoryItem(name: 'Broccoli', icon: '🥦'),
      ],
    ),
    Category(
      title: 'Drinks',
      items: [
        CategoryItem(name: 'Water', icon: '💧'),
        CategoryItem(name: 'Juice', icon: '🧃'),
      ],
    ),
  ];
}
