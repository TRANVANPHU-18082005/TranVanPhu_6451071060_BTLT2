class CategoryItem {
  final String name;
  final String icon; // For emojis like 🍎, 🍌, 🍊

  CategoryItem({required this.name, required this.icon});
}

class Category {
  final String title;
  final List<CategoryItem> items;
  bool isExpanded;

  Category({
    required this.title,
    required this.items,
    this.isExpanded = false,
  });
}
