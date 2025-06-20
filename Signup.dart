import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'Homepage.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {


  bool darkMode = false;
  List<bool> selected = [true,false];


  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  ThemeMode theme=ThemeMode.system;
  bool button=true;


  final GoogleSignIn  googleSignIn = GoogleSignIn(
    clientId:
    "821653807363-a8emqv5dq046bladt3jqck4jpofdcj5r.apps.googleusercontent.com"
  );


  Future<User?> signInWithGoogle(BuildContext context) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      UserCredential userCredential;
      if (kIsWeb) {
        var googleProvider = GoogleAuthProvider();
        userCredential = await _auth.signInWithPopup(googleProvider);
      } else
      {
        GoogleSignInAccount googleUser = (await GoogleSignIn().signIn())!;
        final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
        final googleAuthCredential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        userCredential = await _auth.signInWithCredential(googleAuthCredential);
      }
      final user = userCredential.user;
      if (user != null) {

        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
            builder: (context)=>Homepage()),(route)
        {
          return false;
        });

      }
    } catch (e) {
      print(e);
    }
  }


  Future<void> create() async{

    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text);


    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
  }





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
        home: Scaffold(
        appBar: AppBar(title: Text("Signup"),),
        body: Column(
          children: [
            TextFormField(controller: email,),
            TextFormField(controller: password,),
            OutlinedButton(onPressed: (){
              create();
            }, child: Text("Signup")),
            OutlinedButton(onPressed: (){
              signInWithGoogle(context);
            }, child: Row(
              children: [
                Container(
                    height:25,width:25,
                    child: Image(image: AssetImage("assets/google.jpg"))),
                Text("Sign in with google"),
              ],
            )),
            Center(
              child: ToggleButtons(
                borderRadius: BorderRadius.circular(8),
                isSelected: selected,
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < selected.length; i++) {
                      selected[i] = i == index;
                    }
                    darkMode = index == 1;
                  });
                },
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Light"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Dark"),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}


