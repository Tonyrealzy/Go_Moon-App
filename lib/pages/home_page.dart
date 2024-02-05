import 'package:flutter/material.dart';
import 'package:go_moon/widgets/dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double deviceHeight, deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
      child: (Container(
          height: deviceHeight,
          width: deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: deviceHeight * 0.05),
          child: Stack(
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                pageTitle(),
                bookRidewidget()]), 
                Center(child: Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: astroImageWidget(),
                ))]
          ))),
    ));
  }

  Widget pageTitle() {
    return const Text('#GoMoon',
        style: TextStyle(
            color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800));
  }

//This is a function for returning the image of the astronaut.
  Widget astroImageWidget() {
    return Container(
      height: deviceHeight * 0.5,
      width: deviceWidth * 0.65,
      decoration: const BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/astro_moon.png')),
    ),
      );
  }

  Widget locationDropDownWidget() {
    return DropdownButtonClass(values: const [
      'Henderson Station',
      'James Station',
      'Emily Station',
      'Preneure Station'
    ], width: deviceWidth);
  }

  Widget travellersInfoWidget() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DropdownButtonClass(
              values: const ['1', '2', '3', '4', '5'],
              width: deviceWidth * 0.40),
          DropdownButtonClass(
              values: const ['Economy', 'Business', 'First-class', 'Private'],
              width: deviceWidth * 0.35)
        ]);
  }

  Widget bookRidewidget() {
    return SizedBox(
      height: deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [locationDropDownWidget(), travellersInfoWidget(), rideButton()],
      ),
    );
  }

  Widget rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: deviceHeight * 0.01),
      width: deviceWidth,
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text('Book Ride!', style: TextStyle(color: Colors.black),),
        ),
    );
  }
}
