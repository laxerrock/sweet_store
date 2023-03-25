import 'package:flutter/material.dart';
import 'package:sweet_store/screens/my_profile/my_profile.dart';
import '../review_cart/review_cart.dart';
import '../search/search.dart';

class HomeScreen extends StatelessWidget{

  Widget singalProducts(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 160,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex:2,
            child: Image.network('https://cdn.shopify.com/s/files/1/0569/3456/4001/products/MysorePak_2048x2048.png?v=1661338347'),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Moong Dal Barfi', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                Text('Rs480 / 1Kg',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Expanded(child: Container(
                      padding: EdgeInsets.only(left: 5),
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Text('1Kg',style: TextStyle(fontSize: 16),),),
                          Center(
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          )
                        ],
                      ),
                    ),
                    ),
                    SizedBox(width: 5,),

                    Expanded(child: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.remove,color: Colors.yellow,),
                          Text('1',style: TextStyle(color: Colors.yellow),),
                          Icon(Icons.add,size: 20,color: Colors.yellow,),
                        ],
                      ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget listTile({required IconData icon,required String title,onTap,}){
    return ListTile(
     /* onTap: onTap(),*/
      leading: Icon(icon,size: 32,),
      title: Text(title,style: TextStyle(color: Colors.black87),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xa0ffffff),
      drawer: Drawer(
        child: Container(
          color: Colors.yellow,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 43,
                      child: CircleAvatar(
                        backgroundColor: Colors.yellowAccent,
                        radius: 40,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Welcome Guest'),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 30,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text('Login'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              listTile(icon: Icons.home_outlined,
                title: "Home",),
              listTile(icon: Icons.shop_outlined,
                  title: "Review Cart",
                  onTap:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReviewCart(),),);
                  }
                  ),
              listTile(icon: Icons.person_outline,
                  title: "My Profile",
                  onTap:() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context)=>MyProfile()
                          ),
                        );
                  }
                  ),
              listTile(icon: Icons.notifications_outlined,
                  title: "Notification",
                 ),
              listTile(icon: Icons.star_outline,
                  title: "Rating & Review",
                  ),
              listTile(icon: Icons.favorite_outline,
                  title: "Wishlist",
                 ),
              listTile(icon: Icons.copy_outlined,
                  title: "Raise a Complain",
                  ),
              listTile(icon: Icons.question_answer_outlined,
                  title: "FAQs",
                  ),

              Container(
                height: 350,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact Support"),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text("Call us:"),
                        SizedBox(height: 10,),
                        Text("+7895848773"),
                      ],
                    ),
                    SizedBox(height: 5,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text("Mail us:"),
                          SizedBox(height: 10,),
                          Text("+7895848773"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text("Home" , style: TextStyle(color: Colors.black87),),
        backgroundColor: Colors.yellow,
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.greenAccent,
            child:IconButton(
              onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search(),),);},
            icon: Icon(Icons.search,size: 17,color: Colors.black87,),
          ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.greenAccent,
            child: Icon(Icons.shop,size: 17,color: Colors.black87,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://imageio.forbes.com/blogs-images/armstrongpaul/files/2017/02/mithai-1-cropped.jpg?format=jpg&width=1200'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Varities"),
                  Text("View All",style: TextStyle(color:Colors.grey[600]),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fresh Fruits"),
                  Text("View All",style: TextStyle(color:Colors.grey[600]),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                  singalProducts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

