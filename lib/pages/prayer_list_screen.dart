import 'package:flutter/material.dart';

class PrayerListScreen extends StatefulWidget {
  const PrayerListScreen({Key? key}) : super(key: key);

  @override
  State<PrayerListScreen> createState() => _PrayerListScreenState();
}

class _PrayerListScreenState extends State<PrayerListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, right: 16.7, top: 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back, size: 18, color: Color(0xFF000000),)),
                IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, size: 20, color: Color(0xFF000000),))
              ],
            ),
          ),
          Divider(
            height: 2,
            color: Color(0xFFEAECEF),
            thickness: 2,
          ),
          SizedBox(height: 22,),
          Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Guides & Tickets", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1E2432)),),
                  SizedBox(height: 27,),
                  Container(
                    height: 532.5,
                    width: 335,
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (_, index) {
                          return Column(
                            children: [
                              Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 110,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("images/lonely_man.jpg"),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 150,
                                      child: Text("Caucasus Mountains, Georgia", style: TextStyle(color: Color(0xFF000000), fontSize: 16, fontWeight: FontWeight.bold),)
                                  ),
                                  SizedBox(height: 13,),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.amberAccent, size: 13.95,),
                                      SizedBox(width: 6.2,),
                                      Text("4.5", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFFBEC2CE)),),
                                      SizedBox(width: 6.2,),
                                      Text("|", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14, color: Color(0xFFBEC2CE)),),
                                      SizedBox(width: 6.2,),
                                      Text("24 reviews", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14, color: Color(0xFFBEC2CE)),),
                                    ],
                                  ),
                                  SizedBox(height: 11,),
                                  SizedBox(
                                    width: 170,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text("from", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFFBEC2CE)),),
                                            SizedBox(width: 4,),
                                            Text("\$29", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF1F2533)),),
                                          ],
                                        ),
                                        Icon(Icons.bookmark_border_outlined, size: 19.26, color: Color(0xFFBEC2CE),)
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                      ),
                              SizedBox(height: 18.5,),
                              Divider()
                            ],
                          );
                          },
                    ),
                  )
                ],
              ))
        ],
      )
    );
  }
}
