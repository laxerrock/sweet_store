import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget
{
  bool isBool =false;
  SingleItem({required this.isBool});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                  child: Container
                    (
                   height: 100,
                    child: Center(
                      child: Image.network("https://cdn.shopify.com/s/files/1/0569/3456/4001/products/MysorePak_2048x2048.png?v=1661338347"),
                    ),
                  ),
                ),
              Expanded(
                child: Container(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: isBool==false ?MainAxisAlignment.spaceAround:MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Product Name',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                          ),
                          Text(
                            'Rs480/1Kg',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    isBool==false?  Container(
                        margin: EdgeInsets.only(right: 15),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  '1Kg',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize:  14
                                  ),
                                ),
                            ),
                            Center(
                              child: Icon(Icons.arrow_drop_down,size: 20,color: Colors.yellowAccent,),
                            )
                          ],
                        ),
                      ):Text("1Kg")
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  padding: isBool==false? EdgeInsets.symmetric(horizontal: 15,vertical: 32):EdgeInsets.only(left: 15,right: 15),
                  child: EdgeInsets==false? Container(
                    height: 25,
                    width:  50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,color: Colors.yellowAccent,size: 20,),
                          Text(
                            'ADD',
                            style: TextStyle(
                                color: Colors.yellowAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ):Column(
                    children: [
                      Icon(Icons.delete,size: 30,color: Colors.black,),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 25,
                        width:  70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,color: Colors.yellowAccent,size: 20,),
                              Text(
                                'ADD',
                                style: TextStyle(
                                  color: Colors.yellowAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    isBool==false?Container():Divider(
    height: 1,
    color: Colors.black,),
      ],
    );
  }
}
