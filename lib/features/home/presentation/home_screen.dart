import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store__app/core/constants/app_colors.dart';
import 'package:store__app/core/widgets/textfield_button.dart';
import 'package:store__app/features/home/logic/cubit/prouduct_cubit.dart';
import 'package:store__app/features/home/logic/cubit/prouduct_states.dart';
import 'package:store__app/features/home/presentation/models/category_list.dart';
import 'package:store__app/features/home/presentation/models/proudct_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  'assets/Rectangle.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: -120,
                  top: -60,
                  child: Image.asset(
                    'assets/Ellipse 7.png',
                    width: 268,
                  ),
                ),
                Positioned(
                  right: -20,
                  top: 40,
                  child: Image.asset(
                    'assets/Ellipse 8.png',
                    width: 110,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 67),
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'mohanad',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 27),
                      Text(
                        'Popular Categories',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: CategoryList(),
                      ),
                      SizedBox(height: 60),
                    ],
                  ),
                ),
                const Positioned(
                  bottom: -25,
                  left: 36,
                  right: 36,
                  child: CustomTextField(
                    hintText: 'Search in store',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Products',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<ProuductCubit>(context).getAllProduct();
                    },
                    child: Text(
                      'view all',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlocBuilder<ProuductCubit, ProductStates>(
                builder: (context, state) {
                  if (state is ProductSuccess) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: state.products.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, 
                        crossAxisSpacing: 40,
                        mainAxisSpacing: 40,
                        childAspectRatio: 0.92, 
                      ),
                      itemBuilder: (context, index) {
                        return ProductCard(productModel: state.products[index]);
                      },
                    );
                  } else if (state is ProductLoading) {
                    return Center(child: const CircularProgressIndicator());
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
