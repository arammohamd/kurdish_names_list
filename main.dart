import 'package:aram_app/src/app.dart';
import 'package:flutter/material.dart';
import 'package:aram_app/src/app.dart';

void main() {
  //---------- bangi classi dwwamm krd
  runApp( Apps());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(backgroundColor: Colors.white,
      body: Column( crossAxisAlignment:CrossAxisAlignment.center,
        children: [
        Container(  margin:EdgeInsets.only(top: 30,left: 20),
           width: 140.0,
            height: 140.0, 
             child: CircleAvatar(backgroundColor: Color.fromARGB(255, 173, 212, 243),radius: 80,
               child: CircleAvatar(
                radius: 65,backgroundColor: Colors.black ,
                backgroundImage: NetworkImage("https://freepngimg.com/thumb/man/22654-6-man-thumb.png"),
               )          
                     ,),              
              ),
              Container(
                width: 257,height: 33,margin: EdgeInsets.only(top: 7),
                child: Center(child: Text("   FULL NAME",
                style: TextStyle( fontWeight: FontWeight.w400,fontSize: 24),)),
              ),
                Container(
                width:257,height: 80,margin: EdgeInsets.only(top: 3,),padding: EdgeInsets.only(left: 50),
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio ",
                style: TextStyle( fontWeight: FontWeight.w400,fontSize: 15),),
              ),
                Container(margin: EdgeInsets.only(left: 10),
                
                width:299,height: 35, color: Color.fromARGB(255, 243, 219, 218),
                child: Row( 
                  children: [
                    Image.network("https://cdn-icons-png.flaticon.com/128/1384/1384014.png"),
                    Text("                       Linkdin Profile")
                  ],
                )
              ),
                   Container(margin: EdgeInsets.only(left: 10, top: 5),
                width:299,height: 35, color: Color.fromARGB(255, 155, 167, 192),
                child: Row( 
                  children: [
                    Image.network("https://img.icons8.com/ios-filled/2x/facebook-new.png"),
                    Text("                       Facebook Profile")
                  ],
                )
              ),
                     Container(margin: EdgeInsets.only(left: 10, top: 5),
                width:299,height: 35, color: Color.fromARGB(255, 243, 179, 195),
                child: Row( 
                  children: [
                    Image.network("https://cdn3.iconfinder.com/data/icons/2018-social-media-logotypes/1000/2018_social_media_popular_app_logo_instagram-128.png"),
                    Text("                       Instagram Profile")
                  ],
                )
              ),
                           Container(margin: EdgeInsets.only(left: 10, top: 5),
                width:299,height: 35, color: Color.fromARGB(255, 211, 240, 210),
                child: Row( 
                  children: [
                    Image.network("https://img.icons8.com/ios-filled/2x/internet.png"),
                    Text("                       My website")
                  ],
                )
              ),
                               Container(margin: EdgeInsets.only(top: 25),
                width:330,height: 60, color: Colors.white,
                child: Row( 
                  children: [

  

              Container(  margin:EdgeInsets.only(left: 10, right: 60),
           width: 60.0,
            height: 60.0, 
             child: CircleAvatar(backgroundColor: Color.fromARGB(255, 217, 233, 247),
               child: CircleAvatar(
                radius:20,backgroundColor: Colors.transparent ,
                backgroundImage: NetworkImage("https://cdn.icon-icons.com/icons2/373/PNG/128/Whatsapp_37229.png"),
               )          
                     ,),              
              ),
              Container(  margin:EdgeInsets.only(right: 60),
           width: 60.0,
            height: 60.0, 
             child: CircleAvatar(backgroundColor: Color.fromARGB(255, 217, 233, 247),
               child: CircleAvatar(
                radius:20,backgroundColor: Colors.transparent ,
                backgroundImage: NetworkImage("https://cdn.icon-icons.com/icons2/526/PNG/128/SMS_icon-icons.com_52477.png"),
               )          
                     ,),              
              ),
                     Container(  margin:EdgeInsets.only(right: 0),
           width: 60.0,
            height: 60.0, 
             child: CircleAvatar(backgroundColor: Color.fromARGB(255, 217, 233, 247),
               child: CircleAvatar(
                radius:20, backgroundColor: Colors.transparent ,
                backgroundImage: NetworkImage("https://cdn.icon-icons.com/icons2/259/PNG/128/ic_sms_128_28658.png"),
               )          
                     ,),              
              ),

                  ],
                )
              ),
              
              ]),
    )
     );
  }
}   
