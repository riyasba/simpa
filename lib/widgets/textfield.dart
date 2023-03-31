import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textformfield extends StatelessWidget {
  textformfield(
      {this.validator,
      required this.text,
      super.key,
      this.controller,
      required this.textt});
  final String? Function(String?)? validator;
  final String text;
  final String textt;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textt,
            ),
          ),
          TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              fillColor: Colors.grey[250],
              hintText: text,
              hintStyle: TextStyle(
                color: Colors.grey[500],
              ),
              border:InputBorder.none,
              filled:true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(0, 158, 158, 158), width: 2.0),
                borderRadius: BorderRadius.circular(16.0),
              ),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
