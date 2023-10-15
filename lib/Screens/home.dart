import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/Screens/quizscreen.dart';
import 'package:pokemon/Screens/register.dart';
import 'package:shimmer_image/shimmer_image.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 List<String> lname =["PokéWiz","PikaSketch","PokeMasquerade"];
 List<String> l= ["https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/Mother_s_Day_rrfryj.png",
 "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/jazz_fjheb3.png",
 "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/International_Kids_Safe_mwyprw.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell))
        ],
        title: Text(
          "Catchathon",
          style: TextStyle(fontFamily: "ProductSans-Bold", fontSize: 20),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: [
          Swiper(
            layout: SwiperLayout.CUSTOM,
            customLayoutOption:
                CustomLayoutOption(startIndex: -1, stateCount: 3)
                  ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
                  ..addTranslate([
                    const Offset(-400.0, 0),
                    const Offset(0.0, 0.0),
                    const Offset(400.0, 0)
                  ]),
            itemWidth: MediaQuery.of(context).size.width / 1.1,
            itemHeight: MediaQuery.of(context).size.height / 4.3,
            autoplay: true,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: ProgressiveImage(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 4.3,
                  image: "l[index]",
                  imageError: 'assets/images/noimage.jpeg',
                ),
              );
            },
            itemCount: 2,
          ),
          SizedBox(height: 20,),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context,index){

            return Container(
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                     l[index],
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.width / 4,

                      //imageError: 'assets/images/noimage.jpeg',
                      // fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "1ST -MAY -SAT-2:00 PM",
                          style: TextStyle(
                              color: Color(0xff2196F3),
                              fontFamily: "ProductSans-Regular",
                              fontSize: 12),
                        ),
                        Text(
                          "Event Namevent Namevent..",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "ProductSans-Regular",
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            
                            onPressed: () {
                              // Add your action here
                               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Register()),
            );
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
          }),
          SizedBox(height: 40,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width/1.1,
                              child: ElevatedButton(
                                
                                onPressed: () {
                                  // Add your action here
                                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Quiz()),
            );
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Go to Quiz',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
            ],
          ),
        ],
      )),
    );
  }
}
