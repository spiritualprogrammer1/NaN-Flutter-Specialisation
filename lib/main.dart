import 'package:flutter/material.dart';
import 'package:tp_parrain/controller/AlignController.dart';
import 'package:tp_parrain/controller/AnimatedContainerController.dart';
import 'package:tp_parrain/controller/AnimatedIconController.dart';
import 'package:tp_parrain/controller/AnimatedOpacityController.dart';
import 'package:tp_parrain/controller/AnimatedPaddingController.dart';
import 'package:tp_parrain/controller/AnimatedPositionController.dart';
import 'package:tp_parrain/controller/AspectRadioController.dart';
import 'package:tp_parrain/controller/BackdropFilterController.dart';
import 'package:tp_parrain/controller/ClipRRectController.dart';
import 'package:tp_parrain/controller/ConstrainedBoxController.dart';
import 'package:tp_parrain/controller/CopyrightController.dart';
import 'package:tp_parrain/controller/CustomPaintController.dart';
import 'package:tp_parrain/controller/DissmissibleController.dart';
import 'package:tp_parrain/controller/DraggableController.dart';
import 'package:tp_parrain/controller/ExpandedController.dart';
import 'package:tp_parrain/controller/FadeInImageController.dart';
import 'package:tp_parrain/controller/FadeTransitionController.dart';
import 'package:tp_parrain/controller/FittedBoxController.dart';
import 'package:tp_parrain/controller/FlexibleController.dart';
import 'package:tp_parrain/controller/FloatingActionButtonController.dart';
import 'package:tp_parrain/controller/HeroController.dart' as prefix0;
import 'package:tp_parrain/controller/IndexedStackController.dart';
import 'package:tp_parrain/controller/LimitedBoxController.dart';
import 'package:tp_parrain/controller/MediaQueryController.dart';
import 'package:tp_parrain/controller/OpacityController.dart';
import 'package:tp_parrain/controller/PageViewController.dart';
import 'package:tp_parrain/controller/PlaceholderController.dart';
import 'package:tp_parrain/controller/PositionnedController.dart';
import 'package:tp_parrain/controller/RichTextController.dart';
import 'package:tp_parrain/controller/SafeAreaController.dart';
import 'package:tp_parrain/controller/SemanticsController.dart';
import 'package:tp_parrain/controller/SizeBoxController.dart';
import 'package:tp_parrain/controller/SliverController.dart';
import 'package:tp_parrain/controller/SpacerController.dart';
import 'package:tp_parrain/controller/StackController.dart';
import 'package:tp_parrain/controller/TableController.dart';
import 'package:tp_parrain/controller/TooltipController.dart';
import 'package:tp_parrain/controller/TransformController.dart';
import 'package:tp_parrain/controller/WrapController.dart';

import 'controller/AbsorbPointerController.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class myList {
  String nom;
  Widget page;

  myList(this.nom, this.page);
}

class _MyHomePageState extends State<MyHomePage> {

  List<myList> myLists = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    myLists.add(myList('Absorb Pointer', AbsorbPointerController()));
    myLists.add(myList('Align', AlignController()));
    myLists.add(myList('Animated Container', AnimatedContainerController()));
    myLists.add(myList('Animated Icon', AnimatedIconController()));
    myLists.add(myList('Animated Opacity', AnimatedOpacityController()));
    myLists.add(myList('Animated Padding', AnimatedPaddingController()));
    myLists.add(myList('Animated Position', AnimatedPositionController()));
    myLists.add(myList('Aspect Radio', AspectRadioController()));
    myLists.add(myList('Backdrop Filter', BackdropFilterController()));
    myLists.add(myList('ClipRRect', ClipRRectController()));
    myLists.add(myList('Contrained Box', ConstrainedBoxController()));
    myLists.add(myList('Custom Paint', CustomPaintController()));
    myLists.add(myList('Dissmissible', DissmissibleController()));
    myLists.add(myList('Draggable', DraggableController()));
    myLists.add(myList('Expanded', ExpandedController()));
    myLists.add(myList('Fade In Image', FadeInImageController()));
    myLists.add(myList('Fade Transition', FadeTransitionController()));
    myLists.add(myList('Fitted Box', FittedBoxController()));
    myLists.add(myList('Flexible', FlexibleController()));
    myLists.add(myList('Floating Action Button', FloatingActionButtonController()));
    myLists.add(myList('Hero', prefix0.HeroController()));
    myLists.add(myList('Indexed Stack', IndexedStackController()));
    myLists.add(myList('Limited Box', LimitedBoxController()));
    myLists.add(myList('MediaQuery', MediaQueryController()));
    myLists.add(myList('Opacity', OpacityController()));
    myLists.add(myList('PageView', PageViewController()));
    myLists.add(myList('Placeholder', PlaceholderController()));
    myLists.add(myList('Positionned', PositionnedController()));
    myLists.add(myList('Rich Text', RichTextController()));
    myLists.add(myList('SafeArea', SafeAreaController()));
    myLists.add(myList('Semantics', SemanticsController()));
    myLists.add(myList('Size Box', SizeBoxController()));
    myLists.add(myList('Sliver AppBar', SliverController()));
    myLists.add(myList('Sliver List', SliverController()));
    myLists.add(myList('Spacer', SpacerController()));
    myLists.add(myList('Stack', StackController()));
    myLists.add(myList('Table', TableController()));
    myLists.add(myList('Tooltip', TooltipController()));
    myLists.add(myList('Transform', TransformController()));
    myLists.add(myList('Wrap', WrapController()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My DOC"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (buildContext) {
                  return CopyrightController();
                }));
              }
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: myLists.length,
            itemBuilder: (buildContext, index) {
              return Card(
                elevation: 10.0,
                child:  InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (buildContext) {
                      return myLists[index].page;
                    }));
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width/1.1,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    alignment: Alignment.center,
                    child: Text(myLists[index].nom, textAlign: TextAlign.center, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
                  ),
                )
              );
            }
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text(myLists.length.toString()),
      ),
    );
  }
}
