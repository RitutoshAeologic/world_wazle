
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/widget/app_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight]);
    return  MaterialApp(
          debugShowCheckedModeBanner: false,
          // Use this line to prevent extra rebuilds
          useInheritedMediaQuery: true,
        title: 'Flutter Demo',
        theme: ThemeData(
    // This is the theme of your application.
    //
    // Try running your application with "flutter run". You'll see the
    // application has a blue toolbar. Then, without quitting the app, try
    // changing the primarySwatch below to Colors.green and then invoke
    // "hot reload" (press "r" in the console where you ran "flutter run",
    // or simply save your changes to "hot reload" in a Flutter IDE).
    // Notice that the counter didn't reset back to zero; the application
    // is not restarted.
    primarySwatch: Colors.blue,
    ),
    home: BookDetails(),
    );
      }
}

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      Scaffold(body:
      Center(
        child:
        Padding(
          padding: EdgeInsets.only(left: 110,right: 90,top: 50),
        child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Book",style:
                TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child:
                        Container(
                          height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                color: Colors.grey,
                                width: 2
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: 20,  bottom: 10, left: 20,right: 20),
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 140,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13.0),
                                    image: const DecorationImage(
                                      image: AssetImage("assets/book.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 18.0),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  [
                                        Text("Eve McDeve",style:
                                        TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 6.0),
                                        Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                                              " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                                              " when an unknown printer took a galley of type and scrambled it to make a type"
                                              " specimen book.",style:
                                        TextStyle(fontSize: 13),
                                        ),
                                        SizedBox(height: 12.0),
                                        Text("Book Pages:  80",style:
                                        TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                            width: 270,
                                            height: 50,
                                            padding: EdgeInsets.only(top:5,bottom: 5,left: 10 ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15.0),
                                              border: Border.all(
                                                  color: Colors.blue.shade100,
                                                  width: 2
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text("Worksheet", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                                SizedBox(width: 75,),
                                               AppButton(),
                                              ],

                                            )
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: 130,
                                                height: 40,
                                                padding: EdgeInsets.only(top:5,bottom: 5,left: 10 ),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(15.0),
                                                  border: Border.all(
                                                      color: Colors.blue.shade100,
                                                      width: 2
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text("Price:    \$150", style: TextStyle(
                                                      fontSize: 16,color: Colors.blue.shade200,fontWeight: FontWeight.bold),),
                                                )
                                            ),
                                            SizedBox(width: 10,),
                                            Container(
                                                width: 130,
                                                height: 40,
                                                padding: EdgeInsets.only(top:5,bottom: 5,left: 10 ),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(15.0),
                                                    color: Colors.blue.shade200
                                                ),
                                                child: Center(
                                                  child: Text("Buy", style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                                                )
                                            ),
                                            SizedBox(width: 70,),

                                            IconButton(onPressed: (){},
                                              icon: Image.asset("assets/Group 1510.png",),),
                                            IconButton(onPressed: (){},
                                              icon: Image.asset("assets/Group 1511.png"),),
                                          ],

                                        )

                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
              ],
            )
        
      ),

      ),);
  }
}



