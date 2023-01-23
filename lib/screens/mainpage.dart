import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_1/brand_colors.dart';
import 'package:project_1/styles/styles.dart';
import 'package:project_1/widget/BrandDivier.dart';



void main() => runApp(const MainPage());

class MainPage extends StatefulWidget {

  static const String id = 'mainpage';
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
// lec 24 to make nevigation icon clickable to enable side navigationbar
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  late GoogleMapController mapController;
  double mapButtonPadding = 0;

  final LatLng _center = const LatLng(22.2551565,84.9027418);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState((){
      mapButtonPadding = 300;
    });
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      // lec 24
      key: scaffoldKey,
      drawer: Container(
        width: 250,
        color: Colors.white,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[

              Container(
                color: Colors.white,
                  height: 160,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset('images/eli.png', height: 50, width: 60 ,),
                        SizedBox(height: 10,),
                        // CircleAvatar(
                        //   backgroundImage: AssetImage('images/eli.png'),
                        //   radius:20,
                        // ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Neha Chopra', style: TextStyle(fontSize: 20, fontFamily: 'Brand-Bold'),),
                            SizedBox(height: 7,),
                            Text('View Profile'),
                          ],
                        )

                      ],
                    ),
                  ),
              ),
              BrandDivider(),

              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text('Status', style: kDrawerItemStyle,),
              ),
              ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('Notification', style: kDrawerItemStyle,),
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text('History', style: kDrawerItemStyle,),
              ),
              ListTile(
                leading: Icon(Icons.contact_support),
                title: Text('Support', style: kDrawerItemStyle,),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About', style: kDrawerItemStyle,),
              ),

            ],

          ),

        ),
      ),
      body: Stack(
        children: <Widget>[
        GoogleMap(
          padding: EdgeInsets.only(bottom: mapButtonPadding),
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 14.0,
          ),

        ),
        Positioned(
          top: 44,
          left: 20,
          child: GestureDetector(
            // lec 24
            onTap: (){
              scaffoldKey.currentState?.openDrawer();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                    offset: Offset(
                      0.7,
                      0.7,
                    )

                  )
                ]
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: Icon(Icons.menu, color: Colors.black87,),
              ),
            ),
          ),
        ),

        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                   color: Colors.black26,
                   spreadRadius: 0.5,
                   blurRadius: 15.0,
                   offset: Offset(
                     0.7,
                     0.7,
                   )
                  )
                ]
              ) ,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 5,),
                      Text('Nice to see you!', style: TextStyle(fontSize: 10),),
                      Text('Neha Chopra', style: TextStyle(fontSize: 18,fontFamily: 'Brand-Bold'),),

                       SizedBox(height: 20,),

                       Container(
                          decoration: BoxDecoration(
                             color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 5.0,
                                    spreadRadius: 0.5,
                                    offset: Offset(
                                      0.7,
                                      0.7,
                                    )
                                )
                              ]
                          ),
                           child: Padding(
                             padding: const EdgeInsets.all(12.0),
                             child: Row(
                               children: <Widget>[
                                 Icon(Icons.search, color: Colors.blueAccent,),
                                 SizedBox(width: 10,),
                                 Text('Search Destination'),
                               ],
                             ),
                           ),
                       ),

                      SizedBox(height: 22,),
                      Row(
                        children: <Widget> [
                          Icon(Icons.home, color:BrandColors.colorDimText,),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Add Name'),
                              SizedBox(height: 3,),
                              Text('Yours residential address',
                              style: TextStyle(fontSize: 11, color: BrandColors.colorDimText,),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10,),

                      BrandDivider(),

                      SizedBox(height: 16,),


                      Row(
                        children: <Widget> [
                          Icon(Icons.work_outline, color:BrandColors.colorDimText,),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Add Work'),
                              SizedBox(height: 3,),
                              Text('Yours office address',
                                style: TextStyle(fontSize: 11, color: BrandColors.colorDimText,),
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  ),
            ),
          )
        ],
      )
    );
  }
}




// Previous

// const LatLng currentLocation = LatLng(22.2535367, 84.9022188);
//
// class MainPage extends StatefulWidget {
//
//   static const String id = 'mainpage';
//
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//
//   // Completer<GoogleMapController> _controller = Completer();
//   // late GoogleMapController mapController;
//   //
//   // static final CameraPosition _kGooglePlex = CameraPosition(
//   //   target: LatLng(37.42796133580664, -122.085749655962),
//   //   zoom: 14.4746,
//   // );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Main Page'),
//       ),
//       body: Stack(
//         children: <Widget> [
//           GoogleMap(
//     initialCameraPosition: CameraPosition(
//     target: currentLocation,
//       zoom: 14,
//     ),
//
//           )
//         ],
//
//       ),
//     );
//   }
//
// }