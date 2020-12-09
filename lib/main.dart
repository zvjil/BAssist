/// -----------------------------------
///          External Packages
/// -----------------------------------
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lerapp/diary_widget.dart';
import 'package:lerapp/timer_set.dart';
import 'package:lerapp/home_widget.dart';
import 'package:lerapp/timer_widget.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabbed App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

// final FlutterAppAuth appAuth = FlutterAppAuth();
// const FlutterSecureStorage secureStorage = FlutterSecureStorage();

/// -----------------------------------
///           Auth0 Variables
/// -----------------------------------
// const String AUTH0_DOMAIN = 'dev-y7inmi-1.us.auth0.com';
// const String AUTH0_CLIENT_ID = 'LRXwNB8ig06UE6WaMrpUo8DZKjaxofVu';

// const String AUTH0_REDIRECT_URI = 'com.auth0.flutterdemo://login-callback';
// const String AUTH0_ISSUER = 'https://$AUTH0_DOMAIN';

///------------------------------------
///          Tab Bar
/// -----------------------------------
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;

//   static const List<BottomNavigationBarItem> _navigationBarItems = [
//     BottomNavigationBarItem(
//       label: 'Home',
//       icon: Icon(Icons.home),
//     ),
//     BottomNavigationBarItem(
//       label: 'Timer',
//       icon: Icon(Icons.access_time),
//     ),
//     BottomNavigationBarItem(
//       label: 'Diary',
//       icon: Icon(Icons.fastfood_sharp),
//     ),
//   ];

//   Widget _currentWidget = HomeWidget();

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//       switch (index) {
//         case 0:
//           _currentWidget = HomeWidget();
//           break;
//         case 1:
//           _currentWidget = TimerWidget();
//           break;
//         case 2:
//           _currentWidget = DiaryWidget();
//           break;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: _navigationBarItems,
//         currentIndex: _selectedIndex,
//         selectedItemColor: Color(0xff1db9e8),
//         onTap: _onItemTapped,
//       ),
//       body: _currentWidget,
//     );
//   }
// }

/// -----------------------------------
///           Profile Widget
/// -----------------------------------
// class Profile extends StatelessWidget {
//   final Future<void> Function() logoutAction;
//   final String name;
//   final String picture;

//   const Profile(this.logoutAction, this.name, this.picture, {Key key})
//       : super(key: key);

//   Future navigateToTimerPicker(context) async {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => TextFieldInput()));
//   }

//   Future navigateToDiary(context) async {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => DiaryWidget()));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           width: 150,
//           height: 120,
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.blue, width: 3),
//             shape: BoxShape.circle,
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: NetworkImage(picture ?? ''),
//             ),
//           ),
//         ),
//         const SizedBox(height: 20),
//         Text('Name: $name'),
//         const SizedBox(height: 40),
//         RaisedButton(
// child:
//             Text('Add', style: TextStyle(color: Colors.white, fontSize: 20)),
//         color: Color(0xFF1db9e8),
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//           onPressed: () async {
//             await logoutAction();
//           },
//           child: const Text('Logout'),
//         ),
//         RaisedButton(
// child:
//             Text('Add', style: TextStyle(color: Colors.white, fontSize: 20)),
//         color: Color(0xFF1db9e8),
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//           onPressed: () {
//             navigateToTimerPicker(context);
//           },
//           child: const Text('Timer'),
//         ),
//         RaisedButton(
// child:
//             Text('Add', style: TextStyle(color: Colors.white, fontSize: 20)),
//         color: Color(0xFF1db9e8),
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//           onPressed: () {
//             navigateToDiary(context);
//           },
//           child: const Text('DiaryWidget'),
//         ),
//         HomeWidget(),
//         TimerWidget(),
//         DiaryWidget()
//       ],
//     );
//   }
// }

// /// -----------------------------------
// ///            Login Widget
// /// -----------------------------------
// class Login extends StatelessWidget {
//   final Future<void> Function() loginAction;
//   final String loginError;

//   const Login(this.loginAction, this.loginError, {Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         RaisedButton(
//           onPressed: () async {
//             await loginAction();
//           },
//           child: const Text('Login'),
//         ),
//         Text(loginError ?? ''),
//       ],
//     );
//   }
// }

/// -----------------------------------
///                 App
/// -----------------------------------
// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

/// -----------------------------------
///              App State
/// -----------------------------------
// class _MyAppState extends State<MyApp> {
//   bool isBusy = false;
//   bool isLoggedIn = false;
//   String errorMessage;
//   String name;
//   String picture;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'LER Breastfeeding Assistant',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('LER Brestfeeding Assistant'),
//         ),
//         body: Center(
//           child: isBusy
//               ? const CircularProgressIndicator()
//               : isLoggedIn
//                   ? Profile(logoutAction, name, picture)
//                   : Login(loginAction, errorMessage),
//         ),
//       ),
//     );
//   }

//   Map<String, Object> parseIdToken(String idToken) {
//     final List<String> parts = idToken.split('.');
//     assert(parts.length == 3);

//     return jsonDecode(
//         utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
//   }

//   Future<Map<String, Object>> getUserDetails(String accessToken) async {
//     const String url = 'https://$AUTH0_DOMAIN/userinfo';
//     final http.Response response = await http.get(
//       url,
//       headers: <String, String>{'Authorization': 'Bearer $accessToken'},
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception('Failed to get user details');
//     }
//   }

//   Future<void> loginAction() async {
//     setState(() {
//       isBusy = true;
//       errorMessage = '';
//     });

//     try {
//       final AuthorizationTokenResponse result =
//           await appAuth.authorizeAndExchangeCode(
//         AuthorizationTokenRequest(
//           AUTH0_CLIENT_ID,
//           AUTH0_REDIRECT_URI,
//           issuer: 'https://$AUTH0_DOMAIN',
//           scopes: <String>['openid', 'profile', 'offline_access'],
//           // promptValues: ['login']
//         ),
//       );

//       final Map<String, Object> idToken = parseIdToken(result.idToken);
//       final Map<String, Object> profile =
//           await getUserDetails(result.accessToken);

//       await secureStorage.write(
//           key: 'refresh_token', value: result.refreshToken);

//       setState(() {
//         isBusy = false;
//         isLoggedIn = true;
//         name = idToken['name'];
//         picture = profile['picture'];
//       });
//     } on Exception catch (e, s) {
//       debugPrint('login error: $e - stack: $s');

//       setState(() {
//         isBusy = false;
//         isLoggedIn = false;
//         errorMessage = e.toString();
//       });
//     }
//   }

//   Future<void> logoutAction() async {
//     await secureStorage.delete(key: 'refresh_token');
//     setState(() {
//       isLoggedIn = false;
//       isBusy = false;
//     });
//   }

//   @override
//   void initState() {
//     initAction();
//     super.initState();
//   }

//   Future<void> initAction() async {
//     final String storedRefreshToken =
//         await secureStorage.read(key: 'refresh_token');
//     if (storedRefreshToken == null) return;

//     setState(() {
//       isBusy = true;
//     });

//     try {
//       final TokenResponse response = await appAuth.token(TokenRequest(
//         AUTH0_CLIENT_ID,
//         AUTH0_REDIRECT_URI,
//         issuer: AUTH0_ISSUER,
//         refreshToken: storedRefreshToken,
//       ));

//       final Map<String, Object> idToken = parseIdToken(response.idToken);
//       final Map<String, Object> profile =
//           await getUserDetails(response.accessToken);

//       await secureStorage.write(
//           key: 'refresh_token', value: response.refreshToken);

//       setState(() {
//         isBusy = false;
//         isLoggedIn = true;
//         name = idToken['name'];
//         picture = profile['picture'];
//       });
//     } on Exception catch (e, s) {
//       debugPrint('error on refresh token: $e - stack: $s');
//       await logoutAction();
//     }
//   }
// }
