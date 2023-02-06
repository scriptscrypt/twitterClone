import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Enter Name',
              hintText: 'xyzxyzxyzxyzxyzxyz',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Password',
              hintText: 'Hint text',
            ),
          ),
          Text("--- Under development ---"),
        ],
      ),
    );
  }
}
