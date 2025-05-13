import 'package:flutter/material.dart';
import 'package:music/home_screen_page.dart';
import 'package:music/signup_page.dart';
import 'custom_paint_modals.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(left: 30, right: 30),
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [Color.fromRGBO(15, 8, 23, 1), Color.fromRGBO(78, 20, 132, 1)], radius: 2),
        ),
        //
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //
            Container(
              height: 280,
              width: double.infinity,
              // color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //
                  Container(
                    height: 135,
                    child: Column(
                      children: [
                        //
                        Image.asset("assets/music-bg-1.PNG", height: 75),
                        //
                        CustomPaint(size: Size(MediaQuery.of(context).size.width, 50), painter: DemoPainter()),
                      ],
                    ),
                  ),
                  //
                  Container(
                    height: 100,
                    // color: Colors.blue,
                    child: Column(
                      children: [
                        //
                        ShaderMask(
                          shaderCallback:
                              (bounds) => LinearGradient(
                                colors: [
                                  Color.fromRGBO(219, 40, 168, 1),
                                  Color.fromRGBO(146, 47, 245, 1),
                                ], // Gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                tileMode: TileMode.clamp,
                              ).createShader(bounds),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                  // ShaderMask(
                  //   shaderCallback:
                  //       (bounds) => LinearGradient(
                  //         colors: [
                  //           Color.fromRGBO(219, 40, 168, 0.795),
                  //           Color.fromRGBO(146, 47, 245, 1),
                  //         ], // Gradient colors
                  //         begin: Alignment.topLeft,
                  //         end: Alignment.bottomRight,
                  //         tileMode: TileMode.clamp,
                  //       ).createShader(bounds),
                  //   child: Text(
                  //     "Sign In",
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 42,
                  //       fontWeight: FontWeight.w900,
                  //       letterSpacing: 2,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),

            //
            Container(
              height: 200, //200
              // color: Colors.lightGreen,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  TextField(
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: CustomPaint(
                        size: Size(48, 48), // Size of the icon
                        painter: PersonIconPainter(icon: Icons.person),
                      ),
                      label: CustomPaint(
                        size: Size(MediaQuery.of(context).size.width, 30),
                        painter: TitlePainter(text: "Email", fontWeight: FontWeight.bold),
                      ),
                      // hintText: "Email",
                      // hintStyle: TextStyle(
                      //   fontWeight: FontWeight.bold,
                      //   foreground:
                      //       Paint()
                      //         ..shader = ui.Gradient.linear(Offset(10, 10), Offset(40, 20), [
                      //           Color.fromRGBO(146, 47, 245, 1),
                      //           Color.fromRGBO(219, 40, 169, 1),
                      //         ]),
                      // ),
                    ),
                  ),
                  //
                  //
                  TextField(
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: CustomPaint(
                        size: Size(48, 48), // Size of the icon
                        painter: PersonIconPainter(icon: Icons.lock),
                      ),
                      label: CustomPaint(
                        size: Size(MediaQuery.of(context).size.width, 30),
                        painter: TitlePainter(text: "Password", fontWeight: FontWeight.bold),
                      ),
                      suffixIcon: CustomPaint(
                        size: Size(48, 48), // Size of the icon
                        painter: PersonIconPainter(icon: Icons.visibility_off_rounded),
                      ),
                    ),
                  ),
                  //
                  //
                  // ListTile(
                  //   leading: Checkbox(value: false, onChanged: (value) {}),
                  //   title: Text("Remember your password ?", style: TextStyle(color: Colors.white, fontSize: 16)),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      //
                      CustomPaint(size: Size(220, 24), painter: TitlePainter(text: "Remember your password?")),
                      // Text(
                      //   "Remember your password ?",
                      //   style: TextStyle(
                      //     fontSize: 16,
                      //     foreground:
                      //         Paint()
                      //           ..shader = ui.Gradient.linear(Offset(10, 12), Offset(20, 10), [
                      //             Color.fromRGBO(146, 47, 245, 1),
                      //             Color.fromRGBO(219, 40, 169, 1),
                      //           ]),
                      //   ),
                      // ),
                    ],
                  ),
                  //
                ],
              ),
            ),
            //
            Container(
              height: 222,
              width: double.infinity,
              // color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomeScreenPage();
                                },
                              ),
                            );
                    },
                    child: Container(
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color.fromRGBO(219, 40, 169, 1), Color.fromRGBO(146, 47, 245, 1)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white, size: 45),
                    ),
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account ?", style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w600)),
                      ShaderMask(
                        shaderCallback:
                            (bounds) => LinearGradient(
                              colors: [Color.fromRGBO(146, 47, 245, 1), Color.fromRGBO(219, 40, 169, 1)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              tileMode: TileMode.clamp,
                            ).createShader(bounds),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignupPage();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //
                  // RichText(
                  //   text: TextSpan(
                  //     children: [
                  //       TextSpan(text: "Don’t have an account ? ", style: TextStyle(fontSize: 16, color: Colors.grey)),
                  //       TextSpan(
                  //         text: "Sign Up",
                  //         style: TextStyle(
                  //           fontSize: 22,
                  //           fontWeight: FontWeight.w900,
                  //           foreground:
                  //               Paint()
                  //                 ..shader = ui.Gradient.linear(
                  //                   Offset(0, 13), // vertical center of the text
                  //                   Offset(77, 13), // end at the same Y, across the width
                  //                   [Color.fromRGBO(146, 47, 245, 1), Color.fromRGBO(219, 40, 169, 1)],
                  //                 ),
                  //         ),
                  //       ),
                  //     ],
                  //     // style: TextStyle(fontSize: 20),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

