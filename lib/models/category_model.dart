import 'package:flutter/material.dart';

class CategoryModel {
  String id;
  String name;
  IconData icon;
  String imageName;


  CategoryModel({
    required this.id,
    required this.icon,
    required this.imageName,
    required this.name,
});
  static List <CategoryModel> categories = [
    CategoryModel(
        id: '1',
        icon: Icons.sports_basketball_outlined ,
        imageName: 'sport',
        name:'Sport'
    ),

    CategoryModel(
        id: '2',
        icon: Icons.cake_outlined ,
        imageName: 'birthday',
        name:'Birthday'
    ),

    CategoryModel(
        id: '3',
        icon: Icons.more_time ,
        imageName: 'meeting',
        name:'Meeting'
    ),

  ];
}
