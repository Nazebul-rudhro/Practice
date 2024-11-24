import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';  // For formatting numbers

class HomeActivity extends StatelessWidget {
  // Constructor for HomeActivity class
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'image': 'assets/images/Bitmap.png',
        'name': 'Girls Stylish Dresses',
        'discount_price': 500.0,
        'price': 450.0,  // Ensure price is a numeric type
        'rating': 3.0
      },
      {
        'image': 'assets/images/Bitmap_2.png',
        'name': 'Girls Stylish Dresses',
        'discount_price': 600.0,
        'price': 500.0,  // Ensure price is a numeric type
        'rating': 3.5
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            // First section: Row for Product List and Image
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.fromSize(),
                const Text(
                  "Product List",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Image.asset(
                  "assets/images/search_button.png",
                  height: 22,
                  width: 22,
                ),
              ],
            ),
            const SizedBox(height: 20),  // Space between sections
            // Expanded(
            //   child: GridView.builder(
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       crossAxisSpacing: 4,
            //       mainAxisSpacing: 4,
            //     ),
            //     itemCount: products.length,
            //     itemBuilder: (context, index) {
            //       final product = products[index];
            //
            //       // Format the price and discount as currency
            //       String formattedPrice = NumberFormat.simpleCurrency(locale: 'en_US').format(product['price']);
            //       String formattedDiscountPrice = NumberFormat.simpleCurrency(locale: 'en_US').format(product['discount_price']);
            //
            //       // return Container(
            //       //   height: 300,
            //       //   width: MediaQuery.of(context).size.width / 2,
            //       //   decoration: BoxDecoration(
            //       //     borderRadius: BorderRadius.circular(20),
            //       //   ),
            //       //   child: Column(
            //       //     children: [
            //       //       Container(
            //       //         height: 96,
            //       //         width: MediaQuery.of(context).size.width / 2,
            //       //         decoration: const BoxDecoration(
            //       //           color: Color(0xFFD8EAEc),
            //       //           borderRadius: BorderRadius.only(
            //       //             topRight: Radius.circular(20),
            //       //             topLeft: Radius.circular(20),
            //       //           ),
            //       //         ),
            //       //         child: Padding(
            //       //           padding: const EdgeInsets.only(top: 20),
            //       //           child: Image.asset(product['image']),
            //       //         ),
            //       //       ),
            //       //       const SizedBox(height: 20),
            //       //       Container(
            //       //         padding: const EdgeInsets.symmetric(horizontal: 10),
            //       //         decoration: BoxDecoration(
            //       //           color: Colors.green.withOpacity(0.1),  // Light green background
            //       //           borderRadius: const BorderRadius.only(
            //       //             bottomLeft: Radius.circular(20),
            //       //             bottomRight: Radius.circular(20),
            //       //           ),
            //       //         ),
            //       //         child: Column(
            //       //           children: [
            //       //             // Product name
            //       //             Text(
            //       //               product['name'],
            //       //               style: const TextStyle(
            //       //                 color: Color(0XFF000000),
            //       //                 fontWeight: FontWeight.w400,
            //       //                 fontSize: 18,
            //       //               ),
            //       //             ),
            //       //             // Display Discounted Price and Original Price
            //       //             Row(
            //       //               mainAxisAlignment: MainAxisAlignment.center,
            //       //               children: [
            //       //                 Text(
            //       //                   formattedPrice,  // Original price
            //       //                   style: const TextStyle(
            //       //                     color: Colors.grey,
            //       //                     fontWeight: FontWeight.w400,
            //       //                     fontSize: 16,
            //       //                     decoration: TextDecoration.lineThrough,  // Strikethrough original price
            //       //                   ),
            //       //
            //       //                 ),
            //       //                 const SizedBox(width: 10),
            //       //                 Text(
            //       //                   formattedDiscountPrice,  // Discounted price
            //       //                   style: const TextStyle(
            //       //                     color: Colors.black,
            //       //                     fontWeight: FontWeight.w900,
            //       //                     fontSize: 18,
            //       //                   ),
            //       //                 ),
            //       //
            //       //               ],
            //       //             ),
            //       //             // Product rating
            //       //             RatingBar.builder(
            //       //               initialRating: product['rating'],
            //       //               minRating: 1,
            //       //               direction: Axis.horizontal,
            //       //               itemCount: 5,
            //       //               itemSize: 25,
            //       //               itemBuilder: (context, _) => const Icon(
            //       //                 Icons.star,
            //       //                 color: Colors.amber,
            //       //               ),
            //       //               onRatingUpdate: (rating) => debugPrint(rating.toString()),
            //       //             ),
            //       //           ],
            //       //         ),
            //       //       ),
            //       //     ],
            //       //   ),
            //       // );
            //
            //
            //
            //     },
            //   ),
            // ),


            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  String formattedPrice = NumberFormat.simpleCurrency(locale: 'en_US').format(product['price']);
                  String formattedDiscountPrice = NumberFormat.simpleCurrency(locale: 'en_US').format(product['discount_price']);

                  return Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFD8EAEC),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Image.asset(
                          product['image'], // Use the dynamic product image
                          height: 190,
                          fit: BoxFit.cover, // Ensure the image scales correctly within the box
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width / 2, // Use dynamic width based on screen
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                product['name'], // Use the dynamic product name
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              // Discount and price row
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center, // Center the row
                                  children: [
                                    Text(
                                      formattedPrice, // Original price
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        decoration: TextDecoration.lineThrough, // Strikethrough the original price
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      formattedDiscountPrice, // Discounted price
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Rating
                              RatingBar.builder(
                                initialRating: product['rating'],
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 25,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) => debugPrint(rating.toString()),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),










          ],
        ),

      ),

    );
  }
}
