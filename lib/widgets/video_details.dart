import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class VideoDetail extends StatefulWidget {
  const VideoDetail({Key? key}) : super(key: key);

  @override
  State<VideoDetail> createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children:  [
          Text('When you can’t resist the Hunger!!',style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),),
          SizedBox(height: 8,),
          Text('##Burger   #Dinner   #Krabbypatty',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white
          ),),
          SizedBox(height: 8,),
          Text('#Snacks   #Veggies ',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white
          ),),
          SizedBox(height: 8,),
          Row(
            children:[
              Icon(Icons.music_note_outlined,color: Colors.white,),
              SizedBox(width: 10,),
              Container(
                height: 20,
                width: MediaQuery.of(context).size.width / 2,
                child: Marquee(
                text: " audio name",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),),
            ],
          )
        ],
      ),
    );
  }
}
