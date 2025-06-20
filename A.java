import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demos',
      home: const WidgetDemoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WidgetDemoPage extends StatefulWidget {
  const WidgetDemoPage({super.key});
  @override
  State<WidgetDemoPage> createState() => _WidgetDemoPageState();
}

class _WidgetDemoPageState extends State<WidgetDemoPage> {
  // 1. Color Picker
  Color selectedColor = Colors.grey;

  // 2. Image Gallery Viewer
  final List<String> imageUrls = [
    'https://via.placeholder.com/150/FF0000/FFFFFF',
    'https://via.placeholder.com/150/00FF00/FFFFFF',
    'https://via.placeholder.com/150/0000FF/FFFFFF',
    'https://via.placeholder.com/150/FFFF00/000000',
  ];
  String selectedImage = 'https://via.placeholder.com/150/FF0000/FFFFFF';

  // 3. FAQ Toggle
  final List<bool> isOpen = [false, false, false];

  // 4. Form Validation
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  String submittedData = '';

  // 5. Like Button
  bool isLiked = false;
  int likeCount = 0;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _passCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Widget Demos')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// 1. Color Picker
            const Text('1. Color Picker', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                _colorButton(Colors.red),
                _colorButton(Colors.green),
                _colorButton(Colors.blue),
              ],
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: selectedColor,
              alignment: Alignment.center,
              child: const Text('Color Box', style: TextStyle(color: Colors.white)),
            ),

            const Divider(),

            /// 2. Image Gallery Viewer
            const Text('2. Image Gallery Viewer', style: TextStyle(fontWeight: FontWeight.bold)),
            Image.network(selectedImage, height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: imageUrls.map((url) {
                return GestureDetector(
                  onTap: () => setState(() => selectedImage = url),
                  child: Image.network(url, height: 50),
                );
              }).toList(),
            ),

            const Divider(),

            /// 3. FAQ Section
            const Text('3. FAQ Section', style: TextStyle(fontWeight: FontWeight.bold)),
            _faqItem(0, 'What is Flutter?', 'Flutter is a UI toolkit by Google.'),
            _faqItem(1, 'Why use Flutter?', 'Because it allows fast development.'),
            _faqItem(2, 'Who made Flutter?', 'Google developed Flutter.'),

            const Divider(),

            /// 4. Form with Validation
            const Text('4. Form with Validation', style: TextStyle(fontWeight: FontWeight.bold)),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameCtrl,
                    decoration: const InputDecoration(labelText: 'Name'),
                    validator: (val) => val == null || val.isEmpty ? 'Required' : null,
                  ),
                  TextFormField(
                    controller: _emailCtrl,
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (val) => val != null && !val.contains('@') ? 'Invalid Email' : null,
                  ),
                  TextFormField(
                    controller: _passCtrl,
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: (val) => val != null && val.length < 6 ? 'Min 6 characters' : null,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          submittedData =
                              'Name: ${_nameCtrl.text}\nEmail: ${_emailCtrl.text}\nPassword: ${_passCtrl.text}';
                        });
                      }
                    },
                    child: const Text('Submit'),
                  ),
                  if (submittedData.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(submittedData),
                    ),
                ],
              ),
            ),

            const Divider(),

            /// 5. Like Button
            const Text('5. Like Button Toggle', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              children: [
                IconButton(
                  icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border, color: Colors.red),
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

  // Widget for color buttons
  Widget _colorButton(Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () => setState(() => selectedColor = color),
        child: const Text(''),
      ),
    );
  }

  // Widget for FAQ toggle
  Widget _faqItem(int index, String question, String answer) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(question),
          trailing: Icon(isOpen[index] ? Icons.expand_less : Icons.expand_more),
          onTap: () => setState(() => isOpen[index] = !isOpen[index]),
        ),
        if (isOpen[index])
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(answer),
          ),
      ],
    );
  }
}
