import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/route_names.dart';
import '../../widgets/custom_textField.dart';
import '../../widgets/sortButton.dart';
import '../size_config/size_config_impl2.dart';


class ExploreRestaurantScreen extends StatefulWidget {
  const ExploreRestaurantScreen({Key? key}) : super(key: key);

  @override
  State<ExploreRestaurantScreen> createState() => _ExploreRestaurantScreenState();
}

class _ExploreRestaurantScreenState extends State<ExploreRestaurantScreen> {
  @override
  Widget build(BuildContext context) {

    int _currentIndex = 0;
    List<String> filterBy = ['All', 'Local foods', 'Food' ,'Snacks', 'Drinks'];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Restaurants',style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical:SizeConfig.heightOf(3),horizontal: SizeConfig.widthOf(3)),
          child: Column(
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
               SizedBox(height: 20,),
              Container(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: filterBy.length,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(right: 10),
                    child: SortButton(
                      name: filterBy[index],
                      positionIndex: index,
                      currentIndex: _currentIndex,
                      onPressed: (){
                        setState(() {
                          _currentIndex = index;
                        }); },),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/dominos.png'),
                        fit: BoxFit.cover
                      )
                    ),
                    width: double.infinity,
                    height: 101,
                    //color: Colors.redAccent,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'svgs/comments.svg',
                        width: 40,
                        height: 40,
                      ),
                      Text('45k'),
                      SizedBox(width: 10,),
                      SvgPicture.asset(
                        'svgs/nice.svg',
                        width: 40,
                        height: 40,
                      ),
                      Text('545k'),
                      Spacer(),
                      SvgPicture.asset(
                        'svgs/bike.svg',
                        width: 20,
                        height: 20,
                      ),
                      Text('N250.00'),
                      SizedBox(width: 10,),
                      SvgPicture.asset(
                        'svgs/timer.svg',
                        width: 20,
                        height: 20,
                      ),
                      Text('50min'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/republic.png'),
                            fit: BoxFit.cover
                        )
                    ),
                    width: double.infinity,
                    height: 101,
                    //color: Colors.redAccent,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'svgs/comments.svg',
                        width: 40,
                        height: 40,
                      ),
                      Text('45k'),
                      SizedBox(width: 10,),
                      SvgPicture.asset(
                        'svgs/nice.svg',
                        width: 40,
                        height: 40,
                      ),
                      Text('545k'),
                      Spacer(),
                      SvgPicture.asset(
                        'svgs/bike.svg',
                        width: 20,
                        height: 20,
                      ),
                      Text('N250.00'),
                      SizedBox(width: 10,),
                      SvgPicture.asset(
                        'svgs/timer.svg',
                        width: 20,
                        height: 20,
                      ),
                      Text('50min'),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/biggs.png'),
                            fit: BoxFit.cover
                        )
                    ),
                    width: double.infinity,
                    height: 101,
                    //color: Colors.redAccent,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'svgs/comments.svg',
                        width: 40,
                        height: 40,
                      ),
                      Text('45k'),
                      SizedBox(width: 10,),
                      SvgPicture.asset(
                        'svgs/nice.svg',
                        width: 40,
                        height: 40,
                      ),
                      Text('545k'),
                      Spacer(),
                      SvgPicture.asset(
                        'svgs/bike.svg',
                        width: 20,
                        height: 20,
                      ),
                      Text('N250.00'),
                      SizedBox(width: 10,),
                      SvgPicture.asset(
                        'svgs/timer.svg',
                        width: 20,
                        height: 20,
                      ),
                      Text('50min'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
