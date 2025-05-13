import 'package:flutter/material.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.04862, //20
          right: MediaQuery.of(context).size.width * 0.04862, //20
          top: MediaQuery.of(context).size.height * 0.04, //20
        ),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color.fromRGBO(15, 8, 23, 1), Color.fromRGBO(78, 20, 132, 1)],
            radius: MediaQuery.of(context).size.width * 0.004862, //2
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //
            Text(
              "Trending",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.035, //43
              ),
            ),
            //
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.015), //15
            //
            Container(
              height: 35,
              // color: Colors.amber,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(80, 35),
                        backgroundColor: Color.fromRGBO(255, 55, 128, 1),
                        side: BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ), //
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            //
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.030), //15
            //
            //
            Text(
              "Top Trending - 2025",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.025,
              ),
            ),
            //
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.015), //15
            //
            Container(
              height: 471,
              width: MediaQuery.of(context).size.width,
              // color: Colors.orange,
              child: ListView.builder(
                itemCount: 6,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.164,
                    margin: EdgeInsets.only(bottom: 15),
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: Row(
                      children: [
                        //
                        Container(
                          // height: 120,
                          // width : 120,
                          width: MediaQuery.of(context).size.height * 0.164,
                          height: MediaQuery.of(context).size.height * 0.164,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage("assets/images/song-image/Levitating.jpg")),
                          ),
                        ),
                        //
                        Container(
                          // width: 250,
                          width: MediaQuery.of(context).size.width * 0.605,
                          padding: EdgeInsets.only(left: 15,top: 5,bottom: 5,right: 0),
                          // color: Colors.green,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(255, 55, 128, 1),
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Text(
                                          "#1",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                      //
                                      Text(
                                        "Wavy",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //
                                      Text(
                                        "Karan Aujla",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  //
                                  Container(
                                    width: 105,
                                    // color: Colors.green,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        //
                                        Icon(Icons.play_circle_outline_rounded,color: Color.fromRGBO(255, 55, 128, 0.75),size: 20,),
                                        //
                                        Text(
                                          "80.5M Plays",
                                          style: TextStyle(
                                            color: Color.fromRGBO(255, 55, 128, 0.75),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              //
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_vert_rounded,
                                  color: Colors.white, //
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
