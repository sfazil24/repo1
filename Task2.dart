import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Demo',
      home: const WidgetDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WidgetDemo extends StatefulWidget {
  const WidgetDemo({super.key});
  @override
  State<WidgetDemo> createState() => _WidgetDemoState();
}

class _WidgetDemoState extends State<WidgetDemo> {

  Color selectedColor = Colors.white;


  int selectedImageIndex = 0;
  final List<String> imageUrls = [
    'https://via.placeholder.com/150/FF0000/FFFFFF?text=Red',
    'https://via.placeholder.com/150/00FF00/FFFFFF?text=Green',
    'https://via.placeholder.com/150/0000FF/FFFFFF?text=Blue',
    'https://via.placeholder.com/150/FFFF00/000000?text=Yellow',
  ];


  final List<bool> showAnswers = [false, false, false];
  final List<String> questions = [
    'What is Flutter?',
    'Why use Dart?',
    'Is Flutter free?',
  ];
  final List<String> answers = [
    'Flutter is an open-source UI toolkit by Google.',
    'Dart is used for fast development and flexible UI.',
    'Yes, Flutter is completely free and open-source.',
  ];


  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String formData = "";


  bool isLiked = false;
  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Widgets Example")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text("1. Color Picker", style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                colorButton(Colors.red),
                colorButton(Colors.blue),
                colorButton(Colors.green),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 100,
              width: double.infinity,
              color: selectedColor,
              alignment: Alignment.center,
              child: const Text("Background Box"),
            ),
            const Divider(),


            const Text("2. Image Gallery Viewer", style: TextStyle(fontWeight: FontWeight.bold)),
            Image.network(imageUrls[selectedImageIndex]),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(imageUrls.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() => selectedImageIndex = index);
                  },
                  child: Image(image: AssetImage('assets/foot.jpeg'), width: 80, height: 80),
                );
              }),
            ),
            const Divider(),


            const Text("3. FAQ Section", style: TextStyle(fontWeight: FontWeight.bold)),
            ...List.generate(questions.length, (index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(questions[index]),
                    trailing: Icon(showAnswers[index] ? Icons.expand_less : Icons.expand_more),
                    onTap: () {
                      setState(() {
                        showAnswers[index] = !showAnswers[index];
                      });
                    },
                  ),
                  if (showAnswers[index])
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(answers[index]),
                    ),
                ],
              );
            }),
            const Divider(),


            const Text("4. Form with Validation", style: TextStyle(fontWeight: FontWeight.bold)),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(labelText: 'Name'),
                    validator: (value) =>
                    value == null || value.isEmpty ? 'Name is required' : null,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (value) =>
                    value == null || !RegExp(r'^\S+@\S+\.\S+$').hasMatch(value)
                        ? 'Enter a valid email'
                        : null,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: (value) =>
                    value != null && value.length >= 6 ? null : 'Minimum 6 characters',
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          formData =
                          "Name: ${nameController.text}\nEmail: ${emailController.text}\nPassword: ${passwordController.text}";
                        });
                      }
                    },
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ),
            if (formData.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(formData),
              ),
            const Divider(),


            const Text("5. Like Button Toggle", style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                IconButton(
                  icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked ? Colors.red : Colors.grey),
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                      likeCount += isLiked ? 1 : -1;
                    });
                  },
                ),
                Text('$likeCount Likes'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget colorButton(Color color) {
    return GestureDetector(
      onTap: () => setState(() => selectedColor = color),
      child: Container(
        width: 40,
        height: 40,
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
