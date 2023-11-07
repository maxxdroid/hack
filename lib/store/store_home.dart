import 'package:flutter/material.dart';

class StoreHome extends StatefulWidget {
  const StoreHome({super.key});

  @override
  State<StoreHome> createState() => _StoreHomeState();
}

class _StoreHomeState extends State<StoreHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: ,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text(
                      "Enjoy 50% Off Sales",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.notifications_active))
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.04),
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                child: TextFormField(
                  // controller: search,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "Search for your products"),
                  onChanged: (value) {},
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 180,
                    childAspectRatio: 2),
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://futonland.com/common/images/products/large/JOIN_Truffle_8.jpg',
                          fit: BoxFit.cover,
                          height: 180,
                        ),
                      ),
                      Positioned(
                          right: 0,
                          left: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 5.0, left: 5, right: 5),
                            child: Card(
                              elevation: 0,
                              color: Colors.amber.withOpacity(0.6),
                              child: Container(
                                  width: 120,
                                  padding: const EdgeInsets.all(5.0),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Stylish Chair",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Soft and Cold",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("₵ 250",
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.arrow_drop_up,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "(4.9)",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.add_circle_sharp,
                                            color: Colors.white,
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ),
                          )),
                      const Positioned(
                          top: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  //STACK
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://img1.cgtrader.com/items/922528/e8996e1a48/free-vase-3d-model-obj-3ds-fbx-dae-mtl-x3d.jpg',
                          fit: BoxFit.cover,
                          height: 180,
                        ),
                      ),
                      Positioned(
                          right: 0,
                          left: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 5.0, left: 5, right: 5),
                            child: Card(
                              elevation: 0,
                              color: Colors.amber.withOpacity(0.6),
                              child: Container(
                                  width: 120,
                                  padding: const EdgeInsets.all(5.0),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Stylish Chair",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Soft and Cold",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("₵ 250",
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.arrow_drop_up,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "(4.9)",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.add_circle_sharp,
                                            color: Colors.white,
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ),
                          )),
                      const Positioned(
                          top: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  //STACK
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://th.bing.com/th/id/OIP.d_WS7DSA-u2gjjdV-LqM6QHaJX?pid=ImgDet&w=4747&h=6000&rs=1',
                          fit: BoxFit.cover,
                          height: 180,
                        ),
                      ),
                      Positioned(
                          right: 0,
                          left: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 5.0, left: 5, right: 5),
                            child: Card(
                              elevation: 0,
                              color: Colors.amber.withOpacity(0.6),
                              child: Container(
                                  width: 120,
                                  padding: const EdgeInsets.all(5.0),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Stylish Chair",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Soft and Cold",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("₵ 250",
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.arrow_drop_up,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "(4.9)",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.add_circle_sharp,
                                            color: Colors.white,
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ),
                          )),
                      const Positioned(
                          top: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://futonland.com/common/images/products/large/JOIN_Truffle_8.jpg',
                          fit: BoxFit.cover,
                          height: 180,
                        ),
                      ),
                      Positioned(
                          right: 0,
                          left: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 5.0, left: 5, right: 5),
                            child: Card(
                              elevation: 0,
                              color: Colors.amber.withOpacity(0.6),
                              child: Container(
                                  width: 120,
                                  padding: const EdgeInsets.all(5.0),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Stylish Chair",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Soft and Cold",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("₵ 250",
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.arrow_drop_up,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "(4.9)",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.add_circle_sharp,
                                            color: Colors.white,
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ),
                          )),
                      const Positioned(
                          top: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  //stack
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://futonland.com/common/images/products/large/JOIN_Truffle_8.jpg',
                          fit: BoxFit.cover,
                          height: 180,
                        ),
                      ),
                      Positioned(
                          right: 0,
                          left: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 5.0, left: 5, right: 5),
                            child: Card(
                              elevation: 0,
                              color: Colors.amber.withOpacity(0.6),
                              child: Container(
                                  width: 120,
                                  padding: const EdgeInsets.all(5.0),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Stylish Chair",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Soft and Cold",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("₵ 250",
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.arrow_drop_up,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "(4.9)",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.add_circle_sharp,
                                            color: Colors.white,
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ),
                          )),
                      const Positioned(
                          top: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  //////////
                  //////////
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://futonland.com/common/images/products/large/JOIN_Truffle_8.jpg',
                          fit: BoxFit.cover,
                          height: 180,
                        ),
                      ),
                      Positioned(
                          right: 0,
                          left: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 5.0, left: 5, right: 5),
                            child: Card(
                              elevation: 0,
                              color: Colors.amber.withOpacity(0.6),
                              child: Container(
                                  width: 120,
                                  padding: const EdgeInsets.all(5.0),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Stylish Chair",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Soft and Cold",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("₵ 250",
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.arrow_drop_up,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "(4.9)",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.add_circle_sharp,
                                            color: Colors.white,
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            ),
                          )),
                      const Positioned(
                          top: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
