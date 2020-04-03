import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//1. HOT RELOAD AND HOT RESTART
/*
Hot reload feature quickly compile the newly added code in our file and sent the code to Dart Virtual Machine.
After done updating the Code Dart Virtual Machine update the app UI with widgets. Hot Reload takes less time then Hot restart.
There is also a draw back in Hot Reload, If you are using States in your application
then Hot Reload preservers the States so they will not update on Hot Reload our set to their default values.
 */

/*
Hot restart is much different than hot reload.In Hot restart it destroys the preserves State value and set them to their
default. So if you are using States value in your application then After every hot restart the developer gets fully
compiled application and all the states will set to their defaults. The app widget tree is completely rebuilt with
new typed code. Hot Restart takes much higher time than  Hot reload.
 */
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.deepOrange,
//        body: Container(),
//      ),
//    );
//  }
//}

//2.
//CONTAINERS WITH FLUTTER
/*
A convenience widget that combines common painting, positioning, and sizing widgets.
Container Class URL
The Container widget is used to contain a child widget with the ability to apply some styling properties.
If the Container widget has no child it will automatically fill the given area on the screen, otherwise it will wrap the height & width of the given child element.
NB: Container Widget should not render directly without any parent widget. You can use Center widget, Padding Widget, Column Widget, Row Widget or Scaffold Widget as parent.
 */
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        //SCAFFOLD IS WIDGET WHICH CONTAINS USABLE COMPONENTS OR FEATURES WHICH ARE A GENERALLY USE, SO WE DON'T NEED TO DO CREATIVITY IN UI BY OUR OWN.
//        backgroundColor: Colors.amber,
//        body: SafeArea(
//          //SAFE AREA IS USE FOR MAINTAING THE ALL EDGES OF A WIDGET SO THAT IT CAN NOT INTERFARE WITH THE BOUNDARIES OF OUR DEVICE.
//          child: Container(
//              //CONTAINER IS NOTHING LIKE A Card view in our android. AND BY DEFAULT CONTAINER TAKES COMPLETE SCREEN UNTILL WE BOUND IT INTO CHILD.
//              height: 100.0,
//              width: 100.0,
//              margin: EdgeInsets.only(
//                  left:
//                      30.0), //MARGIN IS USE FOR MAINTAING THE EXTERNAL BOUNDARIES OF OUR CONTAINER OR UI ELEMENT.
//              padding: EdgeInsets.all(
//                  20.0), //PADDING IS USE FOR MAINTING THE INTERNAL BOUNDARIES OF OUR MAIN DATA.
//              color: Colors.white,
//              child: Text('Hello')),
//        ),
//      ),
//    );
//  }
//}

//3. COLUMNS AND ROWS WITH Container

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.yellow,
//        body: SafeArea(
//          child: Column(
//            //verticalDirection: VerticalDirection.down,
//            //mainAxisAlignment: MainAxisAlignment.center,
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: <Widget>[
//              Container(
//                height: 100,
//                width: 100,
//                child: Text('Hello Akshay'),
//                color: Colors.deepOrange,
//              ),
//              Container(
//                width: 100,
//                height: 100,
//                color: Colors.purple,
//                child: Text('Hello 2'),
//              ),
//              Container(
//                width: 100,
//                height: 100,
//                color: Colors.blue,
//                child: Text('Akshay'),
//              )
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

//4. FLUTTER UI CHALLENGE
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
