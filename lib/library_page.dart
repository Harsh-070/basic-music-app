import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

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
          top: MediaQuery.of(context).size.height * 0.04862, //20
        ),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Color.fromRGBO(15, 8, 23, 1), Color.fromRGBO(78, 20, 132, 1)],
            radius: MediaQuery.of(context).size.width * 0.004862, //2
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            Text(
              "Library",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.04, //43
              ),
            ),
            //
            //
            SizedBox(height: MediaQuery.of(context).size.height * 0.015), //15
            //
            //
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    // height: 180,
                    // width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(width: MediaQuery.of(context).size.height * 0.0005, color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Image.asset("assets/images/song-image/Believer.jpg", fit: BoxFit.cover),
                                Image.asset("assets/images/song-image/Closer.jpg", fit: BoxFit.cover),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Image.asset("assets/images/song-image/Tere Bin - Pritam.jpg", fit: BoxFit.cover),
                                Image.asset("assets/images/song-image/On My Way.jpg", fit: BoxFit.cover),
                              ],
                            ),
                          ),
                        ],
                      ),
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
