import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(

        child: Column(

          children: [

            Container(
              height: 220,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Colors.blue[100],

                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  SizedBox(height: 40),

                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),

                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,

                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            profileItem(Icons.person, "Noval Ardiansyah"),
            profileItem(Icons.badge, "1462300038"),
            profileItem(Icons.email, "lansnoval@gmail.com"),
            profileItem(Icons.location_on, "Surabaya"),
            profileItem(Icons.camera_alt, "nvlanss"),

            SizedBox(height: 50),

            Container(
              height: 200,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Colors.blue[50],

                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileItem(IconData icon, String text) {

    return Container(

      padding: EdgeInsets.all(15),

      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),

      child: Row(

        children: [

          Icon(
            icon,
            color: Colors.blue,
          ),

          SizedBox(width: 20),

          Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}