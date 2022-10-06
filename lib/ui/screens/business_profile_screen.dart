import 'package:flutter/material.dart';
import 'package:shared_food/ui/screens/products_tab.dart';

import '../../widgets/custom_botton.dart';
import '../../widgets/sortButton.dart';
import '../size_config/size_config_impl2.dart';



class BusinessProfileScreen extends StatefulWidget {
  const BusinessProfileScreen({Key? key}) : super(key: key);

  @override
  State<BusinessProfileScreen> createState() => _BusinessProfileScreenState();
}

class _BusinessProfileScreenState extends State<BusinessProfileScreen> with SingleTickerProviderStateMixin {

  int _currentIndex = 0;
  List<String> filterBy = ['Profile', 'Delivery', 'Pick Up'];

  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: selectedIndex,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  //color: Colors.redAccent,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/dominos.png'),
                      fit: BoxFit.cover
                    )
                  ),
                  width: double.infinity,
                  height: 140,
                  //color: Colors.yellow,
                ),
                Positioned(
                  top: 90,
                  left: 0,
                  right: 0,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                        ),
                        width: 110,
                        height: 110,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                        width: 100,
                        height: 100,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/minos.png'),
                            fit: BoxFit.cover
                          ),
                            shape: BoxShape.circle
                        ),
                        width: 95,
                        height: 95,
                      ),
                    ],

                  ),
                ),
              ],
            ),
            Container(
              height: 25,
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
            //SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:SizeConfig.widthOf(10),vertical:SizeConfig.heightOf(3) ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Text('67',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 5,),
                      Text('Following'),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('67',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                      SizedBox(height: 5,),
                      Text('Followers'),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('6k',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('Reactions'),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: 'Edit Profile',
                  textColor: Colors.black,
                  onPressed: (){
                    //Navigator.pushNamed(context, RouteNames.verifyMobileScreen);
                  },
                  backgroundColor: Color(0xffFBD1D9),
                ),
                SizedBox(width: 5,),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffED1940),
                      shape: BoxShape.circle
                  ),
                  width: 25,
                  height: 25,
                  child: Icon(Icons.add,color: Colors.white,size: 15,),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical:SizeConfig.heightOf(3),horizontal:SizeConfig.widthOf(5) ),
              child: TabBar(
                  controller: tabController,
                  onTap: (int index) {
                    setState(() {
                      selectedIndex = index;
                      tabController.animateTo(index);
                    });
                  },
                  labelColor: Colors.black,
                  indicatorColor: Colors.grey,
                  tabs:const [
                    Tab(icon: ImageIcon(AssetImage('images/product.png')),text: "Products"),
                    Tab(icon: ImageIcon(AssetImage('images/postIcon.png')),text:"Post"),
                    Tab(icon: ImageIcon(AssetImage('images/react.png')),text: "Reacts"),
                    //Tab(icon: ImageIcon(AssetImage('images/draft.png')),text: "Drafts"),
                  ]),
            ),
            IndexedStack(
                index: selectedIndex,
                children: const [
                  ProductTabScreen(),
                  Center(child: Text('saved')),
                  Center(child: Text('Drafts'))
                ]),
          ],
        ),
      ),
    );
  }
}
