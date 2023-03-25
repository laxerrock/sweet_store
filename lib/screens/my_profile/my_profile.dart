import 'dart:ffi';

import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget{
  @override

  Widget listTile({required IconData icon,required String title}){
    return Column(
      children: [
        Divider(
          height: 1,
        ),
        ListTile(leading: Icon(icon),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),)
      ],
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        title: Text('My Profile', style: TextStyle(fontSize: 18,color: Colors.yellow),),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Kashish Begmal',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                                  SizedBox(height: 10,),
                                  Text("kashishbegmal@gmail.com")
                                ],
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.yellowAccent,
                                child: CircleAvatar(
                                  radius: 12,
                                  child: Icon(Icons.edit,color: Colors.yellowAccent,),
                                  backgroundColor: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    listTile(icon: Icons.shop_outlined, title: "My Orders"),
                    listTile(icon: Icons.location_on_outlined, title: "My Delivery Address"),
                    listTile(icon: Icons.person_outline, title: "Refer A Person"),
                    listTile(icon: Icons.file_copy_outlined, title: "Term & Condition"),
                    listTile(icon: Icons.policy_outlined, title: "Privacy Policy"),
                    listTile(icon: Icons.add_chart, title: "About"),
                    listTile(icon: Icons.exit_to_app_outlined, title: "Log Out"),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C5603AQEi4ElLW_WTDQ/profile-displayphoto-shrink_800_800/0/1618202202468?e=2147483647&v=beta&t=Jx4g5agfNedlCuJ_cQkEg1vQe2jtpiQaJ_K69PJNXkg"),
                radius: 45,
                backgroundColor: Colors.orange,
              ),
            ),
          )
        ],
      ),
    );
  }
}