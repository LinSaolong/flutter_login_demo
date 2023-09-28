import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_demo/utils/auth_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("GG");
    print("GG");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthService().handleAuthState(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Authentication authentication = Authentication();
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//                 onPressed: () async {
//                   FirebaseAuth auth = FirebaseAuth.instance;
//                   User? user;

//                   final GoogleSignIn googleSignIn = GoogleSignIn();

//                   final GoogleSignInAccount? googleSignInAccount =
//                       await googleSignIn.signIn();

//                   if (googleSignInAccount != null) {
//                     final GoogleSignInAuthentication
//                         googleSignInAuthentication =
//                         await googleSignInAccount.authentication;

//                     final AuthCredential credential =
//                         GoogleAuthProvider.credential(
//                       accessToken: googleSignInAuthentication.accessToken,
//                       idToken: googleSignInAuthentication.idToken,
//                     );

//                     try {
//                       final UserCredential userCredential =
//                           await auth.signInWithCredential(credential);

//                       user = userCredential.user;
//                     } on FirebaseAuthException catch (e) {
//                       if (e.code ==
//                           'account-exists-with-different-credential') {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           Authentication.customSnackBar(
//                             content:
//                                 'The account already exists with a different credential.',
//                           ),
//                         );
//                       } else if (e.code == 'invalid-credential') {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           Authentication.customSnackBar(
//                             content:
//                                 'Error occurred while accessing credentials. Try again.',
//                           ),
//                         );
//                       }
//                     } catch (e) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         Authentication.customSnackBar(
//                           content:
//                               'Error occurred using Google Sign-In. Try again.',
//                         ),
//                       );
//                     }
//                   }

//                   // return user;
//                 },
//                 child: Text("Login with google")),
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
