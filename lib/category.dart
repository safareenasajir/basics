import 'package:flutter/material.dart';

class Catagory extends StatefulWidget {
  const Catagory({super.key});

  @override
  State<Catagory> createState() => _CatagoryState();
}

class _CatagoryState extends State<Catagory> {
  List<Map<String, dynamic>> products = [
    {
      "image": "assets/bag.jpg",
      "productname": "ZARA",
      "price": "\$20",
      "offer": "20%"
    },
    {
      "image": "assets/dress.jpg",
      "productname": "Trends",
      "price": "\$15",
      "offer": "20%"
    },
    {
      "image": "assets/makeup.jpg",
      "productname": "Swiss Beauty",
      "price": "\$25",
      "offer": "80%"
    },
    {
      "image": "assets/phone.jpeg",
      "productname": "Iphone",
      "price": "\$20",
      "offer": "20%"
    },
    {
      "image": "assets/watch.jpg",
      "productname": "casio",
      "price": "\$20",
      "offer": "30%"
    }
  ];
  List catagorylist = [
    'Popular Catagory',
    'Cosmatics',
    'electronis',
    'Fashion & Toys',
    'Mobiles',
    'Groceries',
    "Jewellary"
  ];
  int _selectedindex = 0;
  NavigationRailLabelType labeltype = NavigationRailLabelType.all;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchAnchor.bar(
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List.generate(3, (index) {
                      return ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        title: Text("Search $index"),
                      );
                    });
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NavigationRail(
                        labelType: labeltype,
                        onDestinationSelected: (index) {
                          setState(() {
                            _selectedindex = index;
                          });
                        },
                        destinations: const [
                          NavigationRailDestination(
                              icon: Icon(Icons.fireplace),
                              label: Text("Popular ")),
                          NavigationRailDestination(
                              icon: Icon(Icons.fireplace),
                              label: Text("Cosmetics")),
                          NavigationRailDestination(
                              icon: Icon(Icons.electric_bolt),
                              label: Text("Electronis")),
                          NavigationRailDestination(
                              icon: Icon(Icons.girl),
                              label: Text("Fashion & toys")),
                          NavigationRailDestination(
                              icon: Icon(Icons.mobile_friendly),
                              label: Text("Mobile")),
                          NavigationRailDestination(
                              icon: Icon(Icons.local_grocery_store),
                              label: Text("Groceries")),
                          NavigationRailDestination(
                              icon: Icon(Icons.diamond),
                              label: Text("Jewellary")),
                        ],
                        selectedIndex: _selectedindex),
                    const VerticalDivider(),
                    SizedBox(
                      height: 600,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 30,
                                  mainAxisSpacing: 40,
                                  ),
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(
                                3.0,
                                10.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 4.0,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                            
                          ]),
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                      
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  products[index]["image"]),
                                              ))),
                                  Text(products[index]['productname']),
                                  Text(products[index]['offer']),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    )
                    // Center(child: Text(catagorylist[_selectedindex],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))
                    // SizedBox(
                    //   height: 400,
                    //   width: 200,
                    //   child: ListView.builder(
                    //     itemCount: 5,
                    //     itemBuilder: (context, index) {

                    //     return Container(

                    //       height: 100,
                    //       child: GridView.count(
                    //         crossAxisCount: 2,
                    //         children: [
                    //           Column(
                    //             children: [
                    //               Image(image: AssetImage(products[index]['image'])),
                    //               Text(products[index]['productname']),
                    //               Text(products[index]['price'])

                    //             ],

                    //           )
                    //         ],
                    //       ),
                    //     );
                    //   },),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items:  [BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.abc),label: "Blog"),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Catagory(),));

            }, icon: Icon(Icons.auto_awesome_mosaic)),label: "Catagory"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: "Account")
          ]),
    );
  }
}
