import 'package:flutter/material.dart';

import '../../../../singleton/singleton.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Singleton.instance.smoothiesList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => ProductsDetailsScreen(
                      //       products: content,
                      //       allProducts: smoothiesList,
                      //       cardIndex: index,
                      //     ),
                      //   ),
                      // );
                    },
                    child: Container(
                      height: 75,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: Singleton
                              .instance.smoothiesList[index].bgProductColor,
                        ),
                        borderRadius: BorderRadius.circular(37.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Singleton
                                  .instance.smoothiesList[index].productName,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              Singleton
                                  .instance.smoothiesList[index].productPrice
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'cocogoose',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    Singleton.instance.smoothiesList[index].productImage,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
