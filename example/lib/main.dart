import 'dart:math' as math show sin, pi;

import 'package:echo_progress_button/echo_progress_button.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_progress_button Example'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text('type=Raised',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
                Text('type=Falt',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
                Text('type=Outlined',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
            child: Text('List normal button:'),
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget: const Text('btn 1'),
                width: 114,
                onPressed: () {},
              ),
              ProgressButton(
                defaultWidget: const Text('btn 2'),
                width: 114,
                type: ProgressButtonType.text,
                onPressed: () {},
              ),
              ProgressButton(
                defaultWidget: const Text('btn 3'),
                width: 114,
                type: ProgressButtonType.outlined,
                onPressed: () {},
              ),
            ],
          ),
          const Text('animate=true (border adjustment):'),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget:
                const Text('btn 4', style: TextStyle(color: Colors.white)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
                width: 114,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                  // After [onPressed], it will trigger animation running backwards, from end to beginning
                  return () {
                    // Optional returns is returning a VoidCallback that will be called
                    // after the animation is stopped at the beginning.
                    // A best practice would be to do time-consuming task in [onPressed],
                    // and do page navigation in the returned VoidCallback.
                    // So that user won't missed out the reverse animation.
                  };
                },
              ),
              ProgressButton(
                defaultWidget:
                const Text('btn 5', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                type: ProgressButtonType.text,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
              ProgressButton(
                defaultWidget:
                const Text('btn 6', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                type: ProgressButtonType.outlined,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
            ],
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget:
                const Text('btn 7', style: TextStyle(color: Colors.white)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
                width: 114,
                height: 48,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
              ProgressButton(
                defaultWidget:
                const Text('btn 8', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                type: ProgressButtonType.text,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
              ProgressButton(
                defaultWidget:
                const Text('btn 9', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                type: ProgressButtonType.outlined,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
            ],
          ),
          const Text('animate=false:'),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget:
                const Text('btn 10', style: TextStyle(color: Colors.white)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
                width: 114,
                height: 48,
                animate: false,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
              ProgressButton(
                defaultWidget:
                const Text('btn 11', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                animate: false,
                type: ProgressButtonType.text,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
              ProgressButton(
                defaultWidget:
                const Text('btn 12', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                animate: false,
                type: ProgressButtonType.outlined,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
            ],
          ),
          const Text('animate=false, borderRadius=height/2:'),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget:
                const Text('btn 13', style: TextStyle(color: Colors.white)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                color: Colors.blue,
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
              ProgressButton(
                defaultWidget:
                const Text('btn 14', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                type: ProgressButtonType.text,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
              ProgressButton(
                defaultWidget:
                const Text('btn 15', style: TextStyle(color: Colors.blue)),
                progressWidget: const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)),
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                type: ProgressButtonType.outlined,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
            ],
          ),
          const Text('Customization:'),
          ButtonBar(
            mainAxisSize: MainAxisSize.max,
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ProgressButton(
                defaultWidget: const Icon(Icons.clear, color: Colors.red),
                progressWidget: const ThreeSizeDot(),
                color: Colors.black54,
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
              ProgressButton(
                defaultWidget: const Icon(Icons.clear, color: Colors.red),
                progressWidget: const ThreeSizeDot(
                  color_1: Colors.black54,
                  color_2: Colors.black54,
                  color_3: Colors.black54,
                ),
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                type: ProgressButtonType.text,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
              ProgressButton(
                defaultWidget: const Icon(Icons.clear, color: Colors.red),
                progressWidget: const ThreeSizeDot(
                  color_1: Colors.black54,
                  color_2: Colors.black54,
                  color_3: Colors.black54,
                ),
                width: 114,
                height: 48,
                borderRadius: 24,
                animate: false,
                type: ProgressButtonType.outlined,
                onPressed: () async {
                  int score = await Future.delayed(
                      const Duration(milliseconds: 4000), () => 42);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// following code is a customized widget -- ThreeSizeDot
/// -- for a demonstration of how it looks in [ProgressButton]

class ThreeSizeDot extends StatefulWidget {
  const ThreeSizeDot(
      {Key? key,
        this.shape = BoxShape.circle,
        this.duration = const Duration(milliseconds: 1000),
        this.size = 8.0,
        this.color_1,
        this.color_2,
        this.color_3,
        this.padding = const EdgeInsets.all(2)})
      : super(key: key);

  final BoxShape shape;
  final Duration duration;
  final double size;
  final Color? color_1;
  final Color? color_2;
  final Color? color_3;
  final EdgeInsetsGeometry padding;

  @override
  State<ThreeSizeDot> createState() => _ThreeSizeDotState();
}

class _ThreeSizeDotState extends State<ThreeSizeDot>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation_1;
  late Animation<double> animation_2;
  late Animation<double> animation_3;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: widget.duration);
    animation_1 = DelayTween(begin: 0.0, end: 1.0, delay: 0.0)
        .animate(animationController);
    animation_2 = DelayTween(begin: 0.0, end: 1.0, delay: 0.2)
        .animate(animationController);
    animation_3 = DelayTween(begin: 0.0, end: 1.0, delay: 0.4)
        .animate(animationController);
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ScaleTransition(
          scale: animation_1,
          child: Padding(
            padding: widget.padding,
            child: Dot(
              shape: widget.shape,
              size: widget.size,
              color:
              widget.color_1 ?? Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
        ScaleTransition(
          scale: animation_2,
          child: Padding(
            padding: widget.padding,
            child: Dot(
              shape: widget.shape,
              size: widget.size,
              color:
              widget.color_2 ?? Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
        ScaleTransition(
          scale: animation_3,
          child: Padding(
            padding: widget.padding,
            child: Dot(
              shape: widget.shape,
              size: widget.size,
              color:
              widget.color_3 ?? Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}

class Dot extends StatelessWidget {
  final BoxShape shape;
  final double size;
  final Color color;

  const Dot({
    Key? key,
    required this.shape,
    required this.size,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(color: color, shape: shape),
      ),
    );
  }
}

class DelayTween extends Tween<double> {
  DelayTween({
    required double begin,
    required double end,
    required this.delay,
  }) : super(begin: begin, end: end);

  final double delay;

  @override
  double lerp(double t) =>
      super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}
