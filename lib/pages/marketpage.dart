import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 50,
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Marketplace',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 20,
                child: ElevatedButton(
                  onPressed: () {
                    // showBottomSheet(
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   context: context,
                    //   builder: (context) {
                    //     return const Wrap(
                    //       children: [
                    //         ListTile(
                    //           title: Text(
                    //             'Create new listing',
                    //             style: TextStyle(
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.bold,
                    //             ),
                    //           ),
                    //         ),
                    //         ListTile(
                    //           title: Text(
                    //             'Items',
                    //             style: TextStyle(
                    //               fontSize: 15,
                    //             ),
                    //           ),
                    //           leading: Icon(
                    //             Icons.shopping_bag_rounded,
                    //             color: Colors.black,
                    //           ),
                    //         ),
                    //         ListTile(
                    //           title: Text(
                    //             'Vehicles',
                    //             style: TextStyle(
                    //               fontSize: 15,
                    //             ),
                    //           ),
                    //           leading: Icon(
                    //             Icons.directions_car_filled_outlined,
                    //             color: Colors.black,
                    //           ),
                    //         ),
                    //         ListTile(
                    //           title: Text(
                    //             'Properties for sale or rent',
                    //             style: TextStyle(
                    //               fontSize: 15,
                    //             ),
                    //           ),
                    //           leading: Icon(
                    //             Icons.house_sharp,
                    //             color: Colors.black,
                    //           ),
                    //         ),
                    //       ],
                    //     );
                    //   },
                    // );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.note_alt_rounded,
                        color: Colors.black,
                      ),
                      Text(
                        'Sell',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu_open,
                        color: Colors.black,
                      ),
                      Text(
                        'Categories',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                  'Today picks',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                        Text(
                          'Kharar',
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    margin: const EdgeInsets.all(6),
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: Image.network(
                      'https://cdn.dxomark.com/wp-content/uploads/medias/post-157467/Apple-iPhone-15-Pro_-natural_featured-image-packshot-review.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                      width: 200,
                    ),
                  ),
                  const Text('\$2000 . Iphone 15 pro'),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
