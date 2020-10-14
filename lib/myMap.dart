import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:date_format/date_format.dart';
import 'package:permission_handler/permission_handler.dart';




class myMap extends StatefulWidget{
  @override
  myMapState createState() => myMapState();

}

class myMapState extends State<myMap> {
  Completer <GoogleMapController> _controller = Completer();
  Set<Marker> allMarkers = Set();
  PermissionStatus _status;
  bool _isLoading = false;
  var busStatus = "Pick a Route";
  int cnt = 0;


@override
void initState(){
  super.initState();
  PermissionHandler().checkPermissionStatus(PermissionGroup.locationWhenInUse)
  .then(_updateStatus);
  _askPermission();
}



double zoomVal = 5.0;
@override



Widget build(BuildContext context){
  
  return Scaffold(
    appBar: AppBar(
      title: Text("Transit Bus Live Map"),
      backgroundColor: Colors.blue,
    ),
    body: Stack(
      children: <Widget>[
        
        _googlemap(context),
        _buildContainer(),
        Container(
          padding: new EdgeInsets.only(top: 16.0),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("$busStatus", textAlign: TextAlign.center, style: TextStyle(color: Colors.black,  fontWeight: FontWeight.w400, fontSize: 24, letterSpacing: 0), ),
            ],
            )
           
        ),
        !_isLoading
            ? new Container(
              )
            : const Center(child: const CircularProgressIndicator())
        
        
      ],
      
    ),
    
  );
}


Widget _googlemap(BuildContext context){
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    
    
    child: GoogleMap(
      mapType: MapType.normal,
      scrollGesturesEnabled: true,
      tiltGesturesEnabled: true,
      rotateGesturesEnabled: true,
      myLocationButtonEnabled: true,
      myLocationEnabled: true,
      zoomGesturesEnabled: true,
      markers: allMarkers,

      initialCameraPosition: CameraPosition(target: LatLng(56.7264, -111.3803), zoom: 11),
      onMapCreated: (GoogleMapController controller){
        _controller.complete(controller);
      },

    ),
  );

}

Widget _buildContainer(){
  return Align(alignment: Alignment.bottomLeft,
  child: Container(
    margin: EdgeInsets.symmetric(vertical: 20.0),
    height: 150.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        SizedBox(width: 10.0,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 7', "https://apps2.rmwb.ca/transitapi/api/dispatch/7"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 8', "https://apps2.rmwb.ca/transitapi/api/dispatch/8"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 9', "https://apps2.rmwb.ca/transitapi/api/dispatch/9"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 10', "https://apps2.rmwb.ca/transitapi/api/dispatch/10"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 11', "https://apps2.rmwb.ca/transitapi/api/dispatch/11"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 15', "https://apps2.rmwb.ca/transitapi/api/dispatch/15"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 16', "https://apps2.rmwb.ca/transitapi/api/dispatch/16"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 17', "https://apps2.rmwb.ca/transitapi/api/dispatch/17"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 18', "https://apps2.rmwb.ca/transitapi/api/dispatch/18"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 41', "https://apps2.rmwb.ca/transitapi/api/dispatch/41"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 51', "https://apps2.rmwb.ca/transitapi/api/dispatch/51"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 61', "https://apps2.rmwb.ca/transitapi/api/dispatch/61"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 91', "https://apps2.rmwb.ca/transitapi/api/dispatch/91"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 92', "https://apps2.rmwb.ca/transitapi/api/dispatch/92"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _boxes('Route 99', "https://apps2.rmwb.ca/transitapi/api/dispatch/99"),
        ),
      ],
    ),
  ),
  
  
  );
}


void toggleSubmitState() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }




Widget _boxes(name, link){
  return GestureDetector(
    onTap: () async{
      toggleSubmitState();
      var RouteList = await fetchPost(link);
      var currentTime = DateTime.now();
      final GoogleMapController controller = await _controller.future;


      controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(56.7264, -111.3803), zoom: 11)));


      setState(() {
        
        allMarkers.clear();
      });
      for (var n in RouteList.infos){
        if (n.day == 0) {
          n.day = 7;
        }
        
        if (n.day == currentTime.weekday) {
        var startTime = DateTime.parse(formatDate(currentTime, [yyyy,'-',mm,'-',dd, ' ', n.startTime]));
        var endTime = DateTime.parse(formatDate(currentTime, [yyyy,'-',mm,'-',dd, ' ', n.endTime]));
        if (currentTime.isAfter(startTime)==true && currentTime.isBefore(endTime)==true) {
          var body = jsonEncode({"action": {"name": "api_get_data","parameters": [{"last_time": "","license_nmbr": "${n.bus}","group_id": "","version": "2"}],"session_token": "${await getToken()}"}});
          String locationBody = await getLocation(body);
          var lat = double.parse(locationBody.substring(locationBody.indexOf("latitude")+11,locationBody.indexOf("latitude")+21));
          var long = double.parse(locationBody.substring(locationBody.indexOf("longitude")+12,locationBody.indexOf("longitude")+24));
          //print(locationBody);
          print(lat);
          print(long);
          cnt +=1;
          setState(() {
            allMarkers.add(Marker(
              markerId: MarkerId(lat.toString() + ' ' + long.toString()),
              draggable: false,
              position: LatLng(lat, long),
              infoWindow: InfoWindow(
                title: "Bus ${n.route}"
                
              ),
              onTap: (){
                _gotoLocation(lat, long);
              }
          )
          );
          });
          

        }
        }
        
      }
      print("done");
      toggleSubmitState();
      if (cnt == 0){
        setState(() {
         busStatus = "No Route Busses Running" ;
        });
      }
      else{
        setState(() {
         busStatus = "Tap an Icon to Zoom" ;
        });
      }
      cnt = 0;
      },
    child: Container(
      child: new FittedBox(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(24.0),
          shadowColor: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 500,
                height: 200,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(24.0),
                ),
              ),
              Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 200),
              child: Text(name, textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 80, letterSpacing: 5), ),
             )
            ],
          ),

        ),
      ),
    ),
  );
}



void _updateStatus(PermissionStatus status){
  if (status != _status){
    setState(() {
     _status = status; 
    });
  }
}

void _askPermission(){
  PermissionHandler().requestPermissions([PermissionGroup.locationWhenInUse])
  .then(_onStatusRequested);
}

void _onStatusRequested(Map<PermissionGroup, PermissionStatus> statuses){
  final status = statuses[PermissionGroup.locationWhenInUse];
  _updateStatus(status);
}

Future <void> _gotoLocation(double lat, double long) async{
  final GoogleMapController controller = await _controller.future;
  controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat, long), zoom: 16, tilt: 50, bearing: 45)));
}





}






//List For First API Calling
class RouteInfoList {
  final List<RouteInfo> infos;

  RouteInfoList({
    this.infos,
  });


  factory RouteInfoList.fromJson(List<dynamic> parsedJson) {

    List<RouteInfo> infos = new List<RouteInfo>();
    infos = parsedJson.map((i)=>RouteInfo.fromJson(i)).toList();

    return new RouteInfoList(
      infos: infos,
    );
  }
}

class RouteInfo{
  int id;
  int day;
  String route;
  int bus;
  String startTime;
  String endTime;


  RouteInfo({this.id, this.day, this.route, this.bus, this.startTime, this.endTime});



  factory RouteInfo.fromJson(Map<String, dynamic> json) {

    return RouteInfo(
      id: json['id'],
      day: json['day'],
      route: json['route'],
      bus: json['bus'],
      startTime: json['startTime'],
      endTime: json['endTime'],
    );
  }
}






// Calling 1st API to get Bus Timings and Bus Numbers
// NO INPUT
// Output
//    Day
//    Start and End Times
//    Bus Number
Future<RouteInfoList> fetchPost(link) async {
  final response =
  await http.get('$link');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    return RouteInfoList.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load RouteInfo');
  }
}






//Calling 2nd API to Session Token
//Input:
//  Username
//  Password
//Output
//  Session Token
Future<String> getToken()  async{
  var returnValue = "test";
  var url ='https://api-il.traffilog.com/appengine_3/5E1DCD81-5138-4A35-B271-E33D71FFFFD9/1/json';
  var body = jsonEncode(
    {
"action": {
"name": "user_login",
"parameters": {
"login_name": "rmwb_WSGVPAPI",
"password": "GCgv76jkfbGHL_98jfkljfyGGUJV"
}
}
}
  );

  //print("Body: " + body);
await http.post(url,
      headers: {"Content-Type": "application/x-www-form-urlencoded"},
      body: body
  ).then((http.Response response) {
    returnValue=response.body.substring(80,122);
  });
  return(returnValue);
  }





//Calling 2nd API to Get Location And Exact Bus Statistics
//Input:
//  Session Token
//  Bus Number
//Output
//  Latitude
//  Longitute
  Future<String> getLocation(json) async {
  var url ='https://api-il.traffilog.com/appengine_3/5E1DCD81-5138-4A35-B271-E33D71FFFFD9/1/json';
  var body = json;

  //print("Body: " + body);
  var returnValue = "";
  await http.post(url,

      headers: {"Content-Type": "application/x-www-form-urlencoded"},
      body: body
  ).then((http.Response response) {
    returnValue = response.body;
    
  });
  return(returnValue);
  }