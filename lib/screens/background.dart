import 'package:flutter/material.dart';
import 'dart:ui';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Gradient Background
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.black], // Base background gradient
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Top-Left Blob
        Positioned(
          top: -100,
          left: -100,
          child: Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
              color: const Color(0xFF8B5CF6).withOpacity(0.5),
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Bottom-Right Blob
        Positioned(
          bottom: -100,
          right: -100,
          child: Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
              color: const Color(0xFF8B5CF6).withOpacity(0.5),
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Blur Effect
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 600, sigmaY: 600),
          child: Container(
            color: Colors.black.withOpacity(0.6), // Optional black overlay
          ),
        ),
        // Page Content
        child,
      ],
    );
  }
}
