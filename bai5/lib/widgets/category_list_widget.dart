import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../utils/app_data.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({super.key});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  late List<Category> _categories;

  @override
  void initState() {
    super.initState();
    _categories = getAppCategories();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(16.0),
        child: ExpansionPanelList(
          elevation: 1,
          expandedHeaderPadding: const EdgeInsets.all(0),
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _categories[index].isExpanded = isExpanded;
            });
          },
          children: _categories.map<ExpansionPanel>((Category category) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(
                    category.title,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                );
              },
              body: Column(
                children: category.items.map((item) {
                  return ListTile(
                    leading: Text(
                      item.icon,
                      style: const TextStyle(fontSize: 24),
                    ),
                    title: Text(item.name),
                  );
                }).toList(),
              ),
              isExpanded: category.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}
