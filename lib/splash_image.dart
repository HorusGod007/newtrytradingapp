import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:webviewApp/utils.dart';

import 'no_internet_screen.dart';

class SpashImage extends StatefulWidget {
  const SpashImage({super.key});

  @override
  State<SpashImage> createState() => _SpashImageState();
}

class _SpashImageState extends State<SpashImage> {
  StreamSubscription<ConnectivityResult>? subscription;
  @override
  void initState() {
    super.initState();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const NoInternetScreen()));
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    subscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff3c3c3c),
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
