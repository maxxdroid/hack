import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class DetailsScreeen extends StatefulWidget {
  const DetailsScreeen({super.key});

  @override
  State<DetailsScreeen> createState() => _DetailsScreeenState();
}

class _DetailsScreeenState extends State<DetailsScreeen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product Details",
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.grey),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.grey,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: const SizedBox(
                    height: 300,
                    // width: 250,
                    child: ModelViewer(
                      src: 'assets/models3d/bat.glb',
                      autoRotate: true,
                      // backgroundColor: Colors.deepOrange,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                        "https://th.bing.com/th/id/OIP.YXP2XhbIzXRhFUzp4uFmgAHaHa?pid=ImgDet&rs=1",
                        width: 70,
                        height: 70,
                        fit: BoxFit.fill,
                      )),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                        "https://s24990.pcdn.co/wp-content/uploads/2018/05/Baseball-Bat-Murder-27.jpg",
                        width: 70,
                        height: 70,
                        fit: BoxFit.fill,
                      )),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                        "https://th.bing.com/th/id/OIP.YXP2XhbIzXRhFUzp4uFmgAHaHa?pid=ImgDet&rs=1",
                        width: 70,
                        height: 70,
                        fit: BoxFit.fill,
                      )),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                        "https://s24990.pcdn.co/wp-content/uploads/2018/05/Baseball-Bat-Murder-27.jpg",
                        width: 70,
                        height: 70,
                        fit: BoxFit.fill,
                      )),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    "Pure White Bat",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                      "A white colourless Aluminium Bat, made to hit the ball hard and fast unlike anything you have ever seen."),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "₵300",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "₵600",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.remove_circle_outline,
                              color: Colors.grey,
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.add_box_outlined,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star),
                          SizedBox(
                            width: 5,
                          ),
                          Text("150 reviews"),
                        ],
                      ),
                      Container(
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Sold 0"),
                        ),
                      ),
                      Container(
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "In Stock",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: const EdgeInsets.only(
                              top: 5.0, left: 0, right: 0, bottom: 20),
                          height: height * 0.1,
                          width: width * 0.4,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.orange,
                                backgroundColor: Colors.deepOrangeAccent),
                            child: const Text(
                              "Add to cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: const EdgeInsets.only(
                              top: 5.0, left: 0, right: 0, bottom: 20),
                          height: height * 0.1,
                          width: width * 0.4,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.orange,
                                backgroundColor: Colors.deepOrangeAccent),
                            child: const Text(
                              "Buy now",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
