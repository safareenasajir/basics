import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int cartItems=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 239, 236, 236),
      appBar: AppBar(
        shadowColor: Colors.grey,
        elevation: 4,
        
        leading:  IconButton(icon:const Icon( Icons.arrow_back_ios),onPressed: () {
          Navigator.of(context).pop();
        },),
        title: const Text("Smartwatch"),
        actions:  [
          Stack(
            
            children:[
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.shopping_cart),
            ),
            Positioned(
              top: -3,
              right: 1,
              child: CircleAvatar(minRadius: 7,backgroundColor: Colors.red,child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text('$cartItems',style: const TextStyle(fontSize: 9,fontWeight: FontWeight.bold,color: Colors.white),),
              ),)),
           
            
          
            
                   
          ]),
         
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.share),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/1.3,
            child: SingleChildScrollView(
              child: Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/watch.jpg"),
                      )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 150,
                      color: const Color.fromARGB(255, 247, 241, 241),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                "\$700.00",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(Icons.favorite_border)
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(2)),
                                child: const Center(
                                  child: Text(
                                    "Save 12%",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "\$900.00",
                                style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                    color: Color.fromARGB(255, 156, 154, 154)),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Smart Watch",
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text("Solid 0  |  "),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(" 0.00(0)")
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                    
                      padding: const EdgeInsets.all(8),
                      height: 140,
                     
                      width: MediaQuery.of(context).size.width,
                      color: const Color.fromARGB(255, 247, 241, 241),
                      child:  const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text("Description"),
                          Expanded(
                            child: Text(
                                "Topic sentences are similar to mini thesis statements. Like a thesis statement, a topic sentence has a specific main point. Whereas the thesis is the main point of the essay, the topic Topic sentences are similar to mini thesis statements. Like a thesis statement, "),
                          ),
                          
                         
                              
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
           Positioned(
                  bottom: 0,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
          
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(20)),
                      child: TextButton(onPressed: (){
                        setState(() {
                          if (cartItems<10){
                          cartItems++;
                          }
                          else{
                            Fluttertoast.showToast(msg: "Too many Item to add");
                          }

                        });

                      }, child: const Text("+ Add Cart",style: TextStyle(color: Colors.red),)),
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(15)),
                      width: 150,
                      child: TextButton(onPressed: (){}, child: const Text("Buy Now",style: TextStyle(color: Colors.white),)),)
                  ],
                )
                )
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.red,
        child: const Icon(Icons.message),
        
      ),
    );
  }
}
