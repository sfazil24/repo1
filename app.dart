import 'package:flutter/material.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
        ),
      ),
           const SizedBox(height: 20),
           const TextField(
           obscureText: true,
             decoration: InputDecoration(
               labelText: 'Password',
             ),
           ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: (){}, child: Text('Login'),
    ),
      ],
    ),
    ),
    );
  }
}
