import 'dart:ffi';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget{
  final T? viewModal;
  final Widget Function(BuildContext context, T value)? onPageBuilder;
  final Function(T modal)? onModalReady;
  final VoidCallback? onDispose;

  const BaseView({
    Key? key,
    required this.viewModal,
    required this.onPageBuilder,
    this.onModalReady,
    this.onDispose}) 
    : super(key: key);
  
  @override 
  State<BaseView> createState()=> _BaseViewState();
}

class _BaseViewState extends State<BaseView>{
var subscription;
var internetStatus;
@override 
void initState() {
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      setState(() {
        internetStatus = result;
      });
     });
     if(widget.onModalReady != null) widget.onModalReady!(widget.viewModal);
  }

  @override 
  Widget build(BuildContext context) {
    return internetStatus == ConnectivityResult.none
    ? Scaffold(appBar: AppBar(title: Text("No Internet")),) :
    widget.onPageBuilder!(context,widget.viewModal);
    
  }

  @override
  void dispose() {
    super.dispose();
    if(widget.onDispose != null) widget.onDispose!();
  }
}