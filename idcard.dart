
import 'package:flutter/material.dart';
import 'package:classapp/colorconverter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  void ThrowUrl(caughtUrl) async{
    if(await canLaunch(caughtUrl)){
      await launch(caughtUrl);
    }else{
      print('Fail');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(ColorConverter.getHexToInt('#212121')),
        leading: Icon(Icons.arrow_back_sharp, color: Colors.white),
        actions: [
          Icon(Icons.wb_sunny_outlined, size: 18, color: Colors.white,),
          SizedBox(width: 15,)
        ],
      ),
      body: Container(
        color: Color(ColorConverter.getHexToInt('#212121')),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/me3.jpg'),
                  radius: 50,
                ),
                SizedBox(height: 8),
                Text('Soton Ahmed',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white
                  ),
                ),
                SizedBox(height: 4),
                Text('Jr. Software Engineer Trainee',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 13,
                      color: Colors.white
                  ),
                ),
                // SizedBox(height: 15,),
                // Padding(
                //   padding: const EdgeInsets.only(left: 20, right: 20),
                //   child: Divider(
                //     thickness: 1,
                //     color: Color(ColorConverter.getHexToInt('#ffc007')),
                //   ),
                // ),
                SizedBox(height: 20),
                Container(
                  height: 35,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(ColorConverter.getHexToInt('#ffc007')),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text('Get In Touch',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                GestureDetector(
                  onTap: (){
                    ThrowUrl('tel: 01518606399');
                  },
                  child: Container(
                    height: 45,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color(ColorConverter.getHexToInt('#373737')),
                      borderRadius: BorderRadius.circular(22)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.phone_iphone,color: Colors.white, size: 20,),
                        SizedBox(width: 15,),
                        Text('+8801518606399',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.white
                          ),
                        ),
                        SizedBox(width: 135,),
                        Icon(Icons.arrow_forward_ios,color: Colors.white, size: 20,),
                        SizedBox(width: 15,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap: (){
                    ThrowUrl('mailto: soton@gmail.com');
                  },
                  child: Container(
                    height: 45,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color(ColorConverter.getHexToInt('#373737')),
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.mail_outline,color: Colors.white, size: 20,),
                        SizedBox(width: 15,),
                        Text('soton@gmail.com',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.white
                          ),
                        ),
                        SizedBox(width: 125,),
                        Icon(Icons.arrow_forward_ios,color: Colors.white, size: 20,),
                        SizedBox(width: 15,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap: (){
                    ThrowUrl('https://www.instagram.com/soton__/');
                  },
                  child: Container(
                    height: 45,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color(ColorConverter.getHexToInt('#373737')),
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                        FaIcon(FontAwesomeIcons.instagram,color: Colors.white, size: 20),
                        SizedBox(width: 15,),
                        Text('soton__',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.white
                          ),
                        ),
                        SizedBox(width: 206,),
                        Icon(Icons.arrow_forward_ios,color: Colors.white, size: 20,),
                        SizedBox(width: 15,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




