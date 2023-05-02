import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsiveness/widgets/DesktopView.dart';
import 'package:responsiveness/widgets/MobileView.dart';
import 'package:responsiveness/widgets/TabletView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
              return MobileView(primarycolor: Colors.red);
            }
            if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
              return TabletView(primarycolor: Colors.blue);
            }
            if (sizingInformation.deviceScreenType ==
                DeviceScreenType.desktop) {
              return DesktopView(primarycolor: Colors.green);
            }
            return Container(
              color: Colors.transparent,
            );
          },
        )
      ],
    );
  }
}
