import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget tiltel = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Container(
        margin: EdgeInsets.all(10),
        child: Text(
          "Stories",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ),
      Row(
        children: <Widget>[
          Icon(
            Icons.play_arrow,
            color: Colors.black,
            size: 15,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Watch all",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          )
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        primaryColor: new Color(0xFFF2F6F9),
        backgroundColor: new Color(0xFFF2F6F9),
      ),
      home: Scaffold(
        backgroundColor: new Color(0xFFF2F6F9),
        appBar: AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(const IconData(0xe903, fontFamily: "camera"),
                  color: Colors.grey),
              Text(
                "Instagram",
                style:
                    TextStyle(fontFamily: "billabong", fontSize: 40), //FFF2F6F9
              ),
              Icon(IconData(0xe901, fontFamily: "send"), color: Colors.grey),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            tiltel,
            new SizedBox(height: 100.0, width: 100, child: getlistview()),
            Divider(
              height: 8,
              color: Colors.black38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(1.7),

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            gradient: new LinearGradient(tileMode: TileMode.repeated,begin: Alignment(0, 1),colors: [
                              Colors.red,
                              Colors.blue,
                              Colors.yellow,
                              Colors.red
                            ])),

                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/5.jpg"),
                          radius: 20,
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "hamid.ghadiri",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(Icons.more_horiz),
                )
              ],
            ),
            Container(
              height: 250,
              margin: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  'images/122.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 5),
                      child: Icon(const IconData(0xe905, fontFamily: "like")),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 5),
                      child: Icon(const IconData(0xe901, fontFamily: "circle")),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 5),
                      child: Icon(
                        IconData(0xe901, fontFamily: "send"),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      const IconData(0xe900, fontFamily: "mark"),
                    ))
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "12,457 likes",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "marilanded Hi !!",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "  #marinad",
                    style: TextStyle(color: Colors.lightBlue),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  const IconData(0xe900, fontFamily: "home"),
                  color: Colors.black54,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.black54),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(const IconData(0xe900, fontFamily: "insta"),
                    color: Colors.black54),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  const IconData(0xe905, fontFamily: "like"),
                  color: Colors.black54,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity, color: Colors.black54),
                title: Text("")),
          ],
        ),
      ),
    );
  }

  Widget getlistview() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            children: <Widget>[
              buildStack1("images/benyamin.jpg"),
              Text(
                "benyamin",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            children: <Widget>[
              buildStack2("images/2.jpg"),
              Text(
                "univerc man",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            children: <Widget>[
              buildStack2("images/3.jpg"),
              Text(
                "mahsa",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            children: <Widget>[
              buildStack2("images/4.jpg"),
              Text(
                "nazi",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            children: <Widget>[
              buildStack2("images/5.jpg"),
              Text(
                "hamid",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Column(
            children: <Widget>[
              buildStack2("images/6.jpg"),
              Text(
                "flower",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: <Widget>[
              buildStack2("images/7.jpg"),
              Text(
                "ismaiil",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget buildStack1(String image) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(1.4),
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 30,
          ),
        ),
        new Positioned(
          // for is online or not
          right: 10,
          bottom: 0,
          child: new Container(
            width: 15,
            height: 15,
            child: Text(
              "+",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 8),
            ),

            padding: EdgeInsets.all(2),
            decoration: new BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 2)),
          ),
        ),
      ],
    );
  }

  Widget buildStack2(String image) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(0.7),
          decoration: BoxDecoration(
            borderRadius: new BorderRadius.circular(31.1),
            border: new Border.all(color: Colors.red,width: 1.5),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 30,
          ),
        ),
      ],
    );
  }
}
