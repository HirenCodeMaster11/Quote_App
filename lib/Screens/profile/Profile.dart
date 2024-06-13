import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextEditingController fname = TextEditingController();
TextEditingController lname = TextEditingController();
TextEditingController mobile = TextEditingController();
GlobalKey formKey = GlobalKey();

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff000000),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/quote');
            },
            child: Icon(
              CupertinoIcons.left_chevron,
              size: 24,
              color: Colors.white,
            )),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text('Edit Profile',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500),),
              SizedBox(height: height*0.02,),
              CircleAvatar(
                radius: height*0.09,
              ),
              SizedBox(height: height*0.024,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height*0.044,
                    width: width*0.26,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white,width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.photo,size: 22,color: Colors.white,),
                        SizedBox(width: width*0.009,),
                        Text('Gallery',style: TextStyle(color : Colors.white,fontSize: 18),)
                      ],
                    ),
                  ),
                  Container(
                    height: height*0.044,
                    width: width*0.26,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white,width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera_alt_rounded,size: 22,color: Colors.white,),
                        SizedBox(width: width*0.009,),
                        Text('Camera',style: TextStyle(color : Colors.white,fontSize: 18),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*0.024,),
              TextFormField(
                controller: fname,
                keyboardType: TextInputType.name,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  label: Text('First Name'),
                  labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 1,color: Colors.white),
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 1,color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: height*0.024,),
              TextFormField(
                controller: lname,
                keyboardType: TextInputType.name,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  label: Text('Last Name'),
                  labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 1,color: Colors.white),
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 1,color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: height*0.024,),
              TextFormField(
                controller: mobile,
                keyboardType: TextInputType.number,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  label: Text('Mobile No'),
                  labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 1,color: Colors.white),
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(width: 1,color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
