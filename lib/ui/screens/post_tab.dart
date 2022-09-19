import 'package:flutter/material.dart';

class PostTabScreen extends StatefulWidget {
  const PostTabScreen({Key? key}) : super(key: key);

  @override
  State<PostTabScreen> createState() => _PostTabScreenState();
}

class _PostTabScreenState extends State<PostTabScreen> {
  List<String> imageList = [
    'images/post1.png',
    'images/post2.png',
    'images/post3.png',
    'images/post3.png',
    'images/post2.png',
    'images/post1.png',
    'images/post2.png',
    'images/post1.png',
    'images/post3.png',

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      //primary: false,
      shrinkWrap: true,
      itemCount: imageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0,
          //mainAxisExtent: 3
        ),
        itemBuilder: (context, index){
          return Padding(
            padding:  EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageList[index]),
                  fit: BoxFit.cover
                )
              ),
            ),
          );
        });
  }
}
