import 'dart:ffi';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_image/shimmer_image.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final controller = CountDownController();
  final DateTime specificTime = DateTime(2023, 10, 15, 15, 0);
  int page = 0;
  int correctinde = 5;
  bool ans = false;
  void answers(int choose, String correct) {
    if (pokemonQuizQuestions[0]['options'][choose] == correct) {
      setState(() {
        correctinde = choose;
      });
      print("hello");
    }
  }

  List<Map<String, dynamic>> pokemonQuizQuestions = [
    {
      'question':
          'What is the name of the water-type Pokémon that resembles a turtle?',
      'options': [
        'A) Squirtle',
        'B) Charizard',
        'C) Bulbasaur',
        'D) Jigglypuff'
      ],
      'correctAnswer': 'A) Squirtle',
    },
    {
      'question':
          'Which Pokémon evolves from Eevee when exposed to a Water Stone?',
      'options': ['A) Vaporeon', 'B) Flareon', 'C) Jolteon', 'D) Espeon'],
      'correctAnswer': 'A) Vaporeon',
    },
    {
      'question': 'What is the first Pokémon in the National Pokédex?',
      'options': ['A) Bulbasaur', 'B) Charmander', 'C) Pikachu', 'D) Rattata'],
      'correctAnswer': 'A) Bulbasaur',
    },
    {
      'question': 'Which Pokémon is known as the Electric Mouse?',
      'options': ['A) Pikachu', 'B) Squirtle', 'C) Geodude', 'D) Snorlax'],
      'correctAnswer': 'A) Pikachu',
    },
    {
      'question': 'What is the final evolution of Charmander?',
      'options': [
        'A) Charizard',
        'B) Charmeleon',
        'C) Charpuddle',
        'D) Charcharm'
      ],
      'correctAnswer': 'A) Charizard',
    },
    {
      'question':
          'Which Pokémon is often referred to as the "King of the Sea"?',
      'options': ['A) Kingler', 'B) Seaking', 'C) Gyarados', 'D) Lapras'],
      'correctAnswer': 'C) Gyarados',
    },
    {
      'question': 'Which Pokémon has a seashell on its back?',
      'options': ['A) Blastoise', 'B) Squirtle', 'C) Wartortle', 'D) Magikarp'],
      'correctAnswer': 'B) Squirtle',
    },
    {
      'question':
          'Which Pokémon is known for its pink color and flower on its head?',
      'options': [
        'A) Bulbasaur',
        'B) Clefairy',
        'C) Vileplume',
        'D) Jigglypuff'
      ],
      'correctAnswer': 'D) Jigglypuff',
    },
    {
      'question': 'What is the name of the psychic-type Pokémon with a spoon?',
      'options': ['A) Abra', 'B) Alakazam', 'C) Kadabra', 'D) Machop'],
      'correctAnswer': 'B) Alakazam',
    },
  ];

//  options =
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        title: Text(
          "Quiz",
          style: TextStyle(fontFamily: "ProductSans-Bold", fontSize: 20),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          //height: MediaQuery.of(context).size.,
          child: page == 0
              ? SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Q1 :" + pokemonQuizQuestions[0]['question'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "ProductSans-Bold", fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: ProgressiveImage(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 4.3,
                              image:
                                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpokemon.fandom.com%2Fes%2Fwiki%2FCharmeleon&psig=AOvVaw1sp2CUNHxsuJiFHz5hWRZR&ust=1697449957706000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIjl5f_j94EDFQAAAAAdAAAAABAJ",
                              imageError: 'assets/images/noimage.jpeg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: 44,
                                child: OutlinedButton(
                                  onPressed: () {
                                    // Add your action here
                                  },
                                  style: ButtonStyle(
                                    side: MaterialStateProperty.all(BorderSide(
                                      width: 2, // Border width
                                      color: Color(0xff333333), // Border color
                                    )),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12.0), // Border radius
                                    )),
                                  ),
                                  child: Text(
                                    pokemonQuizQuestions[0]['options'][index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xff333333),
                                        fontFamily: "ProductSans-Bold",
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      ]))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Quiz Will Start In",
                      style: TextStyle(
                          fontFamily: "ProductSans-Bold", fontSize: 25),
                    ),
                    Center(
                      child: CircularCountDownTimer(
                        duration: 20,
                        initialDuration: 3,
                        controller: controller,
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        ringColor: Colors.grey[300]!,
                        ringGradient: null,
                        fillColor: Colors.purpleAccent[100]!,
                        fillGradient: null,
                        backgroundColor: Colors.purple[500],
                        backgroundGradient: null,
                        strokeWidth: 20.0,
                        strokeCap: StrokeCap.round,
                        textStyle: TextStyle(
                            fontFamily: "ProductSans-Regular",
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textFormat: CountdownTextFormat.HH_MM_SS,
                        isReverse: true,
                        isReverseAnimation: true,
                        isTimerTextShown: true,
                        autoStart: true,
                        onStart: () {
                          debugPrint('Countdown Started');
                        },
                        onComplete: () {
                          debugPrint('Countdown Ended');
                        },
                        onChange: (String timeStamp) {
                          debugPrint('Countdown Changed $timeStamp');
                        },
                        // timeFormatterFunction: (defaultFormatterFunction, duration) {
                        //   DateTime now = DateTime.now();
                        //   Duration difference = specificTime.difference(now);

                        //   if (difference.isNegative) {
                        //     return "The specified time has passed.";
                        //   }

                        //   int hours = difference.inHours;
                        //   int minutes = (difference.inMinutes - hours * 60);
                        //      int s=            difference.inSeconds % 60;

                        //   return "Time left:\n ${hours} h ${minutes} m ${s} s";
                        // },
                      ),
                    ),
                  ],
                ),
        ),
      )),
    );
  }
}
