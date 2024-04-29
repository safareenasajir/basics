import 'package:flutter/material.dart';
import 'package:sample_1/category.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SearchAnchor(builder: (BuildContext context,SearchController controller) {
          return IconButton(onPressed: () {
            controller.openView();
          }, icon:Icon(Icons.search) );
          
        }, suggestionsBuilder: (context, controller) {
          return List<ListTile>.generate(5, (index) { final String item='item $index'; return ListTile(title: Text(item),onTap: (){},);});
          
        },),
        //  title: TextFormField(
        //   decoration: InputDecoration(hintText: "Search",border: OutlineInputBorder()),
        //  ),
        backgroundColor: Colors.red,
        actions: const [
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.article_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Image(
                      fit: BoxFit.cover,
                      width: 175,
                      height: 100,
                      image: AssetImage("assets/bagoffer.jpg")),
                  Spacer(),
                  Image(
                      height: 100,
                      width: 175,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/burgeroffer.jpeg"))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Image(
                      height: 100,
                      width: 175,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/dressoffer.jpg")),
                  Spacer(),
                  Image(
                      height: 100,
                      width: 175,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/jewelleryoffer.jpg"))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    "More",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                  )
                ],
              ),
              SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  // child: Row(
                  //   children: [
                  //     ListTile(
                        
                        
        
        
                  //     )
                  //   ],
                  // ),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
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
                          width: 100,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                  height: 100,
                                  image: AssetImage(products[index]['image'])),
                              Text(
                                products[index]['productname'],
                                style:
                                    const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                  height: 25,
                                  width: 30,
                                  color: Colors.red,
                                  child: Text(products[index]['offer'])),
                              Text(
                                products[index]['price'],
                                style: const TextStyle(color: Colors.red),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 25,
                          ),
                      itemCount: 5),
                ),
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Our Best Seller",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                          Spacer(),
                          Text("More",style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Bought by many people",style: TextStyle(color:Colors.white),),
                    ),
                     SizedBox(
                      height: 200,
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              color: Colors.white,
                              height: 100,
                              // decoration: const BoxDecoration(boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey,
                              //     offset: Offset(
                              //       3.0,
                              //       10.0,
                              //     ),
                              //     blurRadius: 5.0,
                              //     spreadRadius: 4.0,
                              //   ),
                              //   BoxShadow(
                              //     color: Colors.white,
                              //     offset: Offset(0.0, 0.0),
                              //     blurRadius: 0.0,
                              //     spreadRadius: 0.0,
                              //   ),
                                
                              // ]),
                              width: 100,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                      height: 100,
                                      image: AssetImage(products[index]['image'])),
                                  Text(
                                    products[index]['productname'],
                                    style:
                                        const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      alignment: Alignment.center,
                                      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                                      height: 25,
                                      width: 30,
                                      color: Colors.red,
                                      child: Text(products[index]['offer'])),
                                  Text(
                                    products[index]['price'],
                                    style: const TextStyle(color: Colors.red),
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                                width: 5,
                              ),
                          itemCount: 5),
                       ),
                     ),
                  ],
                ),
        
              )
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
