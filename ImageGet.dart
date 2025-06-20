import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';
class Picker extends StatefulWidget {
  const Picker({super.key});

  @override
  State<Picker> createState() => _PickerState();
}
class _PickerState extends State<Picker> {
  File? _image;
  final ImagePicker pick=ImagePicker();

  Future<void> photos()async{
    final XFile? pickedImage=
    await pick.pickImage(source: ImageSource.gallery);
    if(pickedImage!=null)
    {
      setState(() {
        _image=File(pickedImage.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title:Text('ImageApp'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: ()
          {
            photos();
          }, child:
          Text("Select an image"),
          ),

          Container(
              height: 400,
              width: 400,
              child: _image!=null
                  ?Image.file(_image!,fit: BoxFit.fill,)
                  :Center(child: Text("upload an image")),

    ),

        ],

      ),


    );
  }
}


