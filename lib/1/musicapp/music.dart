import 'package:flutter/material.dart';
import 'package:sample_1/music2.dart';
import 'package:sample_1/task4.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 138, 136, 136),
      appBar: AppBar(
        leading:  IconButton(onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Task4(),));
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: const Color.fromARGB(221, 43, 43, 43),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sleep Meditation",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Best pratice meditation",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 280,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/Moeraki-Boulders-New-Zealand.jpg"),
                              fit: BoxFit.cover)),
                    );
                  
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 15,
                      ),
                  itemCount: 4),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromARGB(255, 59, 58, 58)),
                    child:  Center(
                      child: IconButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Music2(),));
                      
                      
                        },
                        icon:Icon( Icons.headphones,
                        size: 40),
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color.fromARGB(255, 59, 58, 58)),
                    child: const Icon(
                      Icons.track_changes,
                      size: 40,
                      color: Colors.white,
                    )),
              ],
            ),
            const Expanded(
                child: SingleChildScrollView(
                    child: Text(
              "Meditation has proven difficult to define as it covers a wide range of dissimilar practices in different traditions. In popular usage, the word meditation and the phrase meditative practice are often used imprecisely to designate practices found across many cultures.[18][19] These can include almost anything that is claimed to train the attention of mind or to teach calmness or compassion.[20] There remains no definition of necessary and sufficient criteria for meditation that has achieved universal or widespread acceptance within the modern scientific community. In 1971, Claudio Naranjo noted that The word 'meditation' has been used to designate a variety of practices that differ enough from one another so that we may find trouble defining what meditation is[21]: 6  A 2009 study noted a persistent lack of consensus in the literature and a seeming intractability of defining meditation",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ))),
            Positioned(
                top: 200,
                child: Container(height: 50,width: 400,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),child: TextButton(onPressed: (){}, child: Text("Start",style: TextStyle(color: Colors.white),))),)
                // child: Container(
                //     height: 50,
                //     width: 500,
                //     child: TextButton(
                //         style: TextButton.styleFrom(
                //             backgroundColor: Colors.blue,
                //             foregroundColor: Colors.white),
                //         onPressed: () {},
                //         child: const Text("Start"))))
          ],
        ),
      ),
    );
  }
}
