import 'package:flutter/material.dart';
import 'package:shared_food/widgets/custom_textField.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/route_names.dart';
import '../size_config/size_config_impl2.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical:SizeConfig.heightOf(8),horizontal: SizeConfig.widthOf(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: BoxTextField(prefix: Icon(Icons.search,size: 30,color: Colors.black,),
                  )),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteNames.forBetterSearchScreen);
                    },
                    child: ImageIcon(
                      AssetImage('images/scaning.png'),size: 35,
                    ),
                  ),
                  //SizedBox(width: 5,),
                  IconButton(
                    icon: SvgPicture.asset('svgs/settings.svg'),
                    onPressed: () {
                      // do something
                      Navigator.pushNamed(context, RouteNames.settingsScreen);
                    },
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 105,
                //width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    PopularServices(image:'images/chicken_republic.png',name: 'Explore Restuarants',onPressed: (){
                      Navigator.pushNamed(context, RouteNames.exploreRestaurantScreen);
                    },),
                    PopularServices(image:'images/chicken_republic.png',name: 'Explore Restuarants',onPressed: (){},),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text('#Funny Food Moments'),

              SizedBox(height: 10,),
              Container(
                height: 105,
                //width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    FoodMoments(image:'images/icecream.png',),
                    FoodMoments(image:'images/food2.png',),
                    FoodMoments(image:'images/food3.png',),
                    FoodMoments(image:'images/food2.png',),
                    FoodMoments(image:'images/icecream.png',),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text('#Spicy Food Moments'),

              SizedBox(height: 10,),
              Container(
                height: 105,
                //width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    FoodMoments(image:'images/icecream.png',),
                    FoodMoments(image:'images/food2.png',),
                    FoodMoments(image:'images/food3.png',),
                    FoodMoments(image:'images/food2.png',),
                    FoodMoments(image:'images/icecream.png',),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text('#FLocal Dishes'),

              SizedBox(height: 10,),
              Container(
                height: 105,
                //width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    FoodMoments(image:'images/icecream.png',),
                    FoodMoments(image:'images/food2.png',),
                    FoodMoments(image:'images/food3.png',),
                    FoodMoments(image:'images/food2.png',),
                    FoodMoments(image:'images/icecream.png',),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text('#Trending'),

              SizedBox(height: 10,),
              Container(
                height: 105,
                //width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    FoodMoments(image:'images/icecream.png',),
                    FoodMoments(image:'images/food2.png',),
                    FoodMoments(image:'images/icecream.png',),
                    FoodMoments(image:'images/food2.png',),
                    FoodMoments(image:'images/icecream.png',),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class PopularServices extends StatelessWidget {
  final String image;
  final String name;
  final VoidCallback? onPressed;

  const PopularServices({Key? key, required this.image, required this.name, this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height:105,
        width: 287,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          ),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: onPressed,
                  child: Text(name,style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w900
                  ),),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class FoodMoments extends StatelessWidget {
  final String image;


  const FoodMoments({Key? key, required this.image,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height:105,
        width: 90,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
