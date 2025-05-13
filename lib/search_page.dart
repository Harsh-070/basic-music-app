import 'package:flutter/material.dart';

import 'custom_paint_modals.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
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
          children: [
            //
            TextField(
              style: TextStyle(fontSize: 21, color: Colors.white),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 13),
                filled: true,
                fillColor: Color.fromRGBO(132, 131, 131, 0.442),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(40),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(40),
                ),
                prefixIcon: ShaderMask(
                  shaderCallback:
                      (bounds) => LinearGradient(
                        colors: [Color.fromRGBO(219, 40, 168, 1), Color.fromRGBO(146, 47, 245, 1)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.27, 0.5],
                      ).createShader(bounds),
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Icon(Icons.search_rounded, color: Colors.white, size: 40),
                  ),
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            //
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.030), //15
            //
            //
            Row(
              children: [
                //
                Text(
                  "Top Result",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.027, //43
                  ),
                ),
                //
              ],
            ),
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.015), //15
            //
            Container(
              height: 492,
              width: MediaQuery.of(context).size.width,
              // color: Colors.orange,
              child: ListView.builder(
                itemCount: 6,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Container(
                    height: 70,
                    // height: MediaQuery.of(context).size.height * 0.164,
                    margin: EdgeInsets.only(bottom: 15),
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                    child: Row(
                      children: [
                        //
                        Container(
                          height: 70,
                          width: 70,
                          // width: MediaQuery.of(context).size.height * 0.164,
                          // height: MediaQuery.of(context).size.height * 0.164,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage("assets/images/song-image/Levitating.jpg")),
                          ),
                        ),
                        //
                        Expanded(
                          child: Container(
                            // width: 250,
                            // width: MediaQuery.of(context).size.width * 0.605,
                            padding: EdgeInsets.only(left: 15, top: 5, bottom: 5, right: 0),
                            // color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //
                                    Text(
                                      "Wavy",
                                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                                    //
                                    Text(
                                      "Karan Aujla",
                                      style: TextStyle(color: Color.fromRGBO(141, 132, 133, 1), fontSize: 17, fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                //
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.more_vert_rounded,
                                    color: Colors.white, //
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
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
