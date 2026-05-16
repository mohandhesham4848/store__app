import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store__app/features/home/data/models/category_model.dart';
import 'package:store__app/features/home/logic/cubit/prouduct_cubit.dart';
import 'package:store__app/features/home/presentation/models/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          /// Electronics
          GestureDetector(
            onTap: () {
              context.read<ProuductCubit>().getCategoryProducts('electronics');
            },
            child: CategoryItem(
              categoryModel: CategoryModel(
                title: 'electronics',
                imagePath: categoryImages['electronics']!,
              ),
            ),
          ),

          /// Jewelery
          GestureDetector(
            onTap: () {
              context.read<ProuductCubit>().getCategoryProducts('jewelery');
            },
            child: CategoryItem(
              categoryModel: CategoryModel(
                title: 'jewelery',
                imagePath: categoryImages['jewelery']!,
              ),
            ),
          ),

          /// Men's Clothing
          GestureDetector(
            onTap: () {
              context
                  .read<ProuductCubit>()
                  .getCategoryProducts("men's clothing");
            },
            child: CategoryItem(
              categoryModel: CategoryModel(
                title: "men's clothing",
                imagePath: categoryImages["men's clothing"]!,
              ),
            ),
          ),

          /// Women's Clothing
          GestureDetector(
            onTap: () {
              context
                  .read<ProuductCubit>()
                  .getCategoryProducts("women's clothing");
            },
            child: CategoryItem(
              categoryModel: CategoryModel(
                title: "women's clothing",
                imagePath: categoryImages["women's clothing"]!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const Map<String, String> categoryImages = {
  "electronics": "https://images.unsplash.com/photo-1519389950473-47ba0277781c",
  "jewelery": "https://images.unsplash.com/photo-1617038260897-41a1f14a8ca0",
  "men's clothing":
      "https://as2.ftcdn.net/v2/jpg/05/18/42/83/1000_F_518428308_unXnLYmfs2EmUCmkWwpLTxAfiGZ1wNA7.jpg",
  "women's clothing":
      "https://images.unsplash.com/photo-1496747611176-843222e1e57c",
};
