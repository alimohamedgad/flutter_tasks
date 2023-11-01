// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_task/core/app_Image/app_image.dart';

class CategoriesModel {
  final String image;
  final String name;
  CategoriesModel({
    required this.image,
    required this.name,
  });
}

List<CategoriesModel> categoriesList = [
  CategoriesModel(
    image: AppImage.constructions,
    name: 'Constructions',
  ),
  CategoriesModel(
    image: AppImage.insurances,
    name: 'Insurances',
  ),
  CategoriesModel(
    image: AppImage.legal,
    name: 'Legal',
  ),
  CategoriesModel(
    image: AppImage.buySell,
    name: 'Buy & Sell',
  ),
  CategoriesModel(
    image: AppImage.accounting,
    name: 'Accounting Services',
  ),
];
