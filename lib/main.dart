import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/a.jpg'), fit: BoxFit.cover),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/b.jpg'), fit: BoxFit.cover),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdRoute()),
          );
        },
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/c.jpg'), fit: BoxFit.cover),
        ),
      ),
      endDrawer: Column(
        children: <Widget>[
          Container(
            height: 120,
          ),
          ListTile(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SecondRoute()),
              // );
              Navigator.push(context, PageRouteBuilder(
                
                pageBuilder: (BuildContext context, _, __) {
                  return ForthRoute();
                },
                
              ));
            },
            trailing: Text('+100',
                style: TextStyle(fontSize: 20, color: Colors.white54)),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
              // Navigator.pop(context);
            },
            trailing: Text('+200',
                style: TextStyle(fontSize: 20, color: Colors.white54)),
          )
        ],
      ),
    );
  }
}

class ForthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/d.jpg'), fit: BoxFit.cover),
          ),
        ),
      
    );
  }
}


// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('images/a.jpg'),
//           // ...
//         ),

//         // ...
//       ),
//       child: GestureDetector(
//         onTap: (){
//           Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Page2()),
//             );
//         },
//       )
//     );

//   }
// }

// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('images/b.jpg'),
//           // ...
//         ),

//         // ...
//       ),

//     );
//   }
// }
