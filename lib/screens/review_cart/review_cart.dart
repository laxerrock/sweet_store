import 'package:flutter/material.dart';
import 'package:sweet_store/widgets/single_item.dart';

class ReviewCart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text('Total Amount'),
        subtitle:  Text('Rs960',style: TextStyle(color: Colors.green[900]),) ,
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: Text('Submit'),
            color: Colors.yellowAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {},
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Review Cart',
          style: TextStyle(
              color: Colors.yellowAccent,
              fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

}