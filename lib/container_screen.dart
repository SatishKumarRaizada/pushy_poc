import 'package:flutter/material.dart';

class ContainerList extends StatefulWidget {
  const ContainerList({Key? key}) : super(key: key);
  @override
  State<ContainerList> createState() => _ContainerListState();
}

class _ContainerListState extends State<ContainerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
