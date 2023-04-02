import 'package:flutter/material.dart';
import 'package:music_ui/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                //menu and back buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.arrow_back),),
                    ),
                    Text('P L A Y L I S T'),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuBox(child: Icon(Icons.menu),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                //cover art and artist name
                NeuBox(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset('lib/images/cover-art.jpg')
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Kwadwo The Traveller',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade700,
                                      fontSize: 18
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text('Am In Love',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22
                                    ),
                                  )
                                ],
                              ),
                              Icon(Icons.favorite,color: Colors.red,size: 28,)
                            ],
                          ),
                        )

                      ],
                    )
                ),

                SizedBox(
                  height: 30,
                ),

                //start time,shuffle button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("0:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("4:22")
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                // linear bar
                NeuBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.5,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                // previous song,pause play,skip next song
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: NeuBox(
                          child: Icon(Icons.skip_previous,size: 32,),
                        )
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: NeuBox(
                            child: Icon(Icons.play_arrow,size: 32,),
                          ),
                        )
                      ),
                      Expanded(
                        child: NeuBox(
                          child: Icon(Icons.skip_next,size: 32,),
                        )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )

    );
  }
}
