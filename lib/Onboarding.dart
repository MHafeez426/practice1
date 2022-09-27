import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

void main() {
  runApp(MaterialApp(
    home: OnBoardingg(),
    debugShowCheckedModeBanner: false,
  ));
}

class OnBoardingg extends StatefulWidget {
  @override
  State<OnBoardingg> createState() => _OnBoardinggState();
}

class _OnBoardinggState extends State<OnBoardingg> {
  late Material materialButton;
  late int index;
  final onboardinlist = [
    PageModel(
      widget: DecoratedBox(
        decoration:
            BoxDecoration(border: Border.all(width: 0), color: background),
        child: SingleChildScrollView(
          controller: ScrollController(keepScrollOffset: true),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 90),
                  child:
                  Image(image: AssetImage("assets/Onboardingpn3.jpg"))),
              Text("Hello")
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration:
            BoxDecoration(border: Border.all(width: 0), color: background),
        child: SingleChildScrollView(
          controller: ScrollController(keepScrollOffset: true),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 90),
                  child: Image(image: AssetImage("assets/Onboardingpn1.jpg"))),
              Text("welcome")
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration:
        BoxDecoration(border: Border.all(width: 0), color: background),
        child: SingleChildScrollView(
          controller: ScrollController(keepScrollOffset: true),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 90),
                  child: Image(image: AssetImage("assets/Onboardingpn1.jpg"))),
              Text("Start")
            ],
          ),
        ),
      ),
    ),
  ];

  void initState() {
    super.initState();
    materialButton = skipButton();
    index = 0;
  }

  Material skipButton({void Function(int)? setindex}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: defaultSkipButtonColor,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setindex != null) {
            index = 2;
            setindex(2);
          }
        },
        child: Padding(
          padding: defaultProceedButtonPadding,
          child: Text("SKIP"),
        ),
      ),
    );
  }

  Material get signupButton {
   return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {},
        child: Padding(
          padding: defaultProceedButtonPadding,
          child: Text("SIGNUP"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Onboarding(
        pages: onboardinlist,
        onPageChange: (int pageindex) {
          index = pageindex;
        },
        startPageIndex: 0,
        footerBuilder: (context, dragDistance, pagesLength, setindex) {
          return DecoratedBox(
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(width: 0, color: Colors.orange)),
            child: ColoredBox(
              color: Colors.teal,
              child: Padding(
                padding: EdgeInsets.all(45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIndicator(
                        netDragPercent: dragDistance,
                        indicator: Indicator(
                          indicatorDesign: IndicatorDesign.polygon(
                            polygonDesign: PolygonDesign(
                                polygon: DesignType.polygon_arrow,
                                polygonRadius: 7,
                                polygonSpacer: 21),
                          ),
                        ),
                        pagesLength: pagesLength),
                    index == pagesLength - 1
                        ? signupButton
                        : skipButton(setindex: setindex)
                  ],
                ),
              ),
            ),
          );
        },
      ),

    );
  }
}
