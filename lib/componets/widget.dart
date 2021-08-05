import 'package:mnemr/screens/dashboard/dashboard_screen.dart';
import 'package:mnemr/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Username',
          prefixIcon: Icon(Icons.person_outlined),
          hintText: 'Enter username'),
    );
  }
}

class MyPasswordText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
          prefixIcon: Icon(Icons.lock_outline),
          hintText: 'Enter secure password'),
    );
  }
}

class Log extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 90,
                height: 90,
                child: Image.asset(
                    'assets/images/Malawi-Coat_of_arms_of_arms.png'),
              ),
              SizedBox(
                width: 105,
                height: 105,
                child: Image.asset('assets/images/PEPFAR2.jpeg'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "mN",
                style: TextStyle(
                  color: Color(0xff8b4513),
                  fontSize: 60,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "EMR",
                style: TextStyle(
                  color: Color(0xffCD853F),
                  fontSize: 60,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "v1.0.0",
                style: TextStyle(
                  color: Color(0xffbdb5aa),
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
    // child: Image.asset('asset/images/flutter-logo.png'));
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
          );
        },
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}

// class BarGraph extends StatefulWidget {
//   const BarGraph({Key? key}) : super(key: key);

//   @override
//   _BarGraphState createState() => _BarGraphState();
// }

// class BarGraph extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//             child: Container(
//           child: Echarts(
//             option: '''
//     {
//       xAxis: {
//         type: 'category',
//         data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
//       },
//       yAxis: {
//         type: 'value'
//       },
//       series: [{
//         data: [820, 932, 901, 934, 1290, 1330, 1320],
//         type: 'bar'
//       }]
//     }
//   ''',
//           ),
//           width: 600,
//           height: 600,
//         )),
//       ),
//     );
//   }
// }
// class BarGraph extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//           child: Container(
//         child: Echarts(
//           option: '''
//     {
//       xAxis: {
//         type: 'category',
//         data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
//       },
//       yAxis: {
//         type: 'value'
//       },
//       series: [{
//         data: [820, 932, 901, 934, 1290, 1330, 1320],
//         type: 'bar'
//       }]
//     }
//   ''',
//         ),
//         width: 300,
//         height: 250,
//       )),
//     );
//   }
// }
