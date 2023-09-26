import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobileowner/auth/signup/pages/signup.dart';

import 'package:mobileowner/utils/app_theme.dart';

import 'routes/myrouters.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: AppTheme.lightTheme,
          onGenerateRoute: MyRoutes.generatedRoutes,
          initialRoute: '/homepage',
          home: SignupPage(),
        );
      },
    );
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool showRecentData = false;

//   void toggleData() {
//     setState(() {
//       showRecentData = !showRecentData;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Conditional Data Example'),
//       ),
//       body: Column(
//         children: [
//           ElevatedButton(
//             onPressed: toggleData,
//             child: Text('Toggle Data'),
//           ),
//           if (showRecentData) RecentDataWidget() else NextDataWidget(),
//         ],
//       ),
//     );
//   }
// }

// class RecentDataWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Recent Data',
//         style: TextStyle(fontSize: 24.0),
//       ),
//     );
//   }
// }

// class NextDataWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Next Data',
//         style: TextStyle(fontSize: 24.0),
//       ),
//     );
//   }
// }
