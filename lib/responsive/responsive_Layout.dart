import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
 
  final mobileBody;
  final desktopBody;
  final tabletBody;
  ResponsiveLayout({required this.mobileBody,required this.desktopBody,required this.tabletBody});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth<=767) {
        return widget.mobileBody;
        
      }
      else if(constraints.maxWidth<=1366 || constraints.minWidth>=768 ){
        return widget.tabletBody;
      }
      else{
        return widget.desktopBody;
      }
    },);
  }
}