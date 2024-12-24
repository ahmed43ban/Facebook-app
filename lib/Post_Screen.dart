import 'package:flutter/material.dart';
import 'package:facebok_app/Profile_Photo.dart';
import 'package:facebok_app/Story_photo.dart';
import 'package:facebok_app/icon_bar.dart';
import 'package:facebok_app/top_icon.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Color(0xff1877F2),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800),
                              )),
                          TopIcons(path: "assets/images/plus_circule.png"),
                          TopIcons(path: 'assets/images/search.png'),
                          TopIcons(path: 'assets/images/messanger.png'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconsBar(path: 'assets/images/home.png',width: 2,bottomcolor: Color(0xff1877F2),),
                          IconsBar(path: 'assets/images/Group 17.png'),
                          IconsBar(path: 'assets/images/Group 17.png'),
                          IconsBar(path: 'assets/images/profile.png'),
                          IconsBar(path: 'assets/images/notification.png'),
                          ProfilePhoto(width: 34, height: 34)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          border: Border(
                              bottom: BorderSide(color: Color(0xff898F9C)))),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(4),
                              child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "What's in Your Mind?",
                                    hintStyle: TextStyle(
                                      color: Color(0xff898F9C),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.transparent),
                                    ),
                                    prefixIcon: ProfilePhoto(width: 43,height: 43,),
                                    suffixIcon: TopIcons(path: 'assets/images/photos.png',vertical: 6,)
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StoryPhoto(pathstory: "assets/images/create_story.png"),
                          StoryPhoto(pathstory: "assets/images/messi1.png",pathpro: "assets/images/Ellipse 2.png",),
                          StoryPhoto(pathstory: "assets/images/yamal_photo.png",pathpro: "assets/images/Ellipse 4.png",),
                          StoryPhoto(pathstory: "assets/images/yamal_photo.png",pathpro: "assets/images/Ellipse 4.png",),
                          StoryPhoto(pathstory: "assets/images/messi1.png",pathpro: "assets/images/Ellipse 2.png",),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border(
                                  top: BorderSide(color: Color(0xff000000)))),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(6.0),
                                child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/blue_route.png',
                                      width: 53,
                                      height: 53,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Route',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Container(
                                        width: 35,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                                  '8h',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 12,
                                                      color: Color(0xff898F9C)),
                                                )),
                                            Image.asset(
                                              "assets/images/Vector.png",
                                              width: 12,
                                              height: 12,
                                              fit: BoxFit.cover,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(6),
                                child: Icon(
                                  Icons.more_horiz_rounded,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Image.asset(
                                  "assets/images/route.png",
                                  width: double.infinity,
                                  height: 250,
                                  fit: BoxFit.fitWidth,
                                ))
                          ],
                        ),
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                          child: Row(
                            children: [
                              TopIcons(path: "assets/images/icon.png",vertical: 6,fit: BoxFit.fitWidth,),
                              TopIcons(path: "assets/images/comment.png",vertical: 6,),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TopIcons(path: "assets/images/Paper_Plane.png",vertical: 6,)
                                  ],
                                ),
                              ),
                              TopIcons(path: "assets/images/Icon Frame.png",vertical: 6,)
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border(
                                  top: BorderSide(color: Color(0xff000000)))),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(6.0),
                                child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/blue_route.png',
                                      width: 53,
                                      height: 53,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: Container(
                                  width: 45,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Route',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Container(
                                        width: 35,
                                        child: Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                                  '8h',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 12,
                                                      color: Color(0xff898F9C)),
                                                )),
                                            Image.asset(
                                              "assets/images/Vector.png",
                                              width: 12,
                                              height: 12,
                                              fit: BoxFit.cover,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(6),
                                child: Icon(
                                  Icons.more_horiz_rounded,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Image.asset(
                                  "assets/images/route.png",
                                  width: double.infinity,
                                  height: 250,
                                  fit: BoxFit.fitWidth,
                                ))
                          ],
                        ),
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                          child: Row(
                            children: [
                              TopIcons(path: "assets/images/icon.png",vertical: 6,fit: BoxFit.fitWidth,),
                              TopIcons(path: "assets/images/comment.png",vertical: 6,),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TopIcons(path: "assets/images/Paper_Plane.png",vertical: 6,)
                                  ],
                                ),
                              ),
                              TopIcons(path: "assets/images/Icon Frame.png",vertical: 6,)
                            ],
                          ),
                        )
                      ],
                    ),

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
