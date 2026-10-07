
import 'package:flutter/material.dart';
import 'package:meals2/models/category.dart';


class CategoryGridItem extends StatelessWidget{
  const CategoryGridItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
   return Container(
    decoration: BoxDecoration(
      gradient:LinearGradient(
        colors: [
          category.color.withValues(alpha: 0.55),
          category.color.withValues(alpha: 0.9),
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      ),
    ),
    child: Text(category.title,
    style: Theme.of(context).textTheme.titleLarge!.copyWith(
      color: Theme.of(context).colorScheme.onSurface,
    ),
    ),
   ); 
  }
}