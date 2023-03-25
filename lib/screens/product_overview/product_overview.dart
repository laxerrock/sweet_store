import 'package:flutter/material.dart';

enum SigninCharacter{
  fill,
  outline,
}
class ProductOverview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _ProductOverviewState();
  }
}
  class _ProductOverviewState extends State<ProductOverview>{
    SigninCharacter _character=SigninCharacter.fill;

   Widget bonntonNavigationBar(
      {
        required String title,
        required IconData iconData,
      }
      )
  {
    return Expanded(
      child: Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 17,
              color: Colors.black87,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black
              ),

            ),
          ],
        ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: Row(children: [
        bonntonNavigationBar(
            iconData: Icons.favorite_outline,
            title: 'Add to WatchList',
        ),
        bonntonNavigationBar(
          iconData: Icons.shop_outlined,
          title: 'Go to Cart',
        ),
      ],
       ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.yellow,
        ),
        title: Text("Product Overview",style: TextStyle(color: Colors.yellow),),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Moong Dal'),
                      subtitle: Text('Rs480'),
                    ),
                    Container(
                      width: 200,
                      padding: EdgeInsets.all(40),
                      child: Image.network('https://cdn.shopify.com/s/files/1/0569/3456/4001/products/MysorePak_2048x2048.png?v=1661338347'),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: Text("Available Option",
                      textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],
                            ),
                            Radio(
                              value: SigninCharacter.fill,
                              groupValue: _character,
                              activeColor: Colors.green[700],
                              onChanged: (value) {
                                setState(() {
                                  _character=value!;
                                }
                                );

                              },
                            ),
                          ],
                        ),
                        Text("Rs480"),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,size: 17,color: Colors.cyan,),
                              Text('ADD',style: TextStyle(color: Colors.blue),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    )
                  ],
                ),
              ),
          ) ,
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
                width: double.infinity,
                child:Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About this  Product', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    Text('Moong Dal Burfi made with yellow lentils is a soft, delicious and creamy fudge. A gluten-free delicacy that is super easy to make and very addictive!!', style: TextStyle(fontSize: 16,color: Colors.cyan,), ),
                  ],
                ),
          ),
          ),
        ],
      ),
    );
  }
}