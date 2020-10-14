import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class routeCards extends StatelessWidget {

  var _url = "hello";

 
 
 
  @override
  Widget build(BuildContext context) {
    final _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    );

    final _textStyleSubtitle = TextStyle(
      color: Colors.black54,
      fontSize: 16,
    ); 
    return Column(


      children: <Widget>[


Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 7",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Abasand",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                      onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/7";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 8",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Beacon Hill",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/8";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 9",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Cartier Heights / Brett Drive",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/9";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 10",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Gregoire / Industrial",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/10";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 11",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Airport",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                      onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/11";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 15",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Timberlea",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/15";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 16",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Thickwood",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/16";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 17",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Parsons Creek / Morgan Heights",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/17";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 18",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Taiganova",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/18";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 41",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Stone Creek / Eagle Ridge",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/41";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 51",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Wood Buffalo",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/51";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

               Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 61",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Thickwood",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/51";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

               Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 91",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Longboat Landing",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/91";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 92",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "Syncrude Sports & Wellness Centre",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/92";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),

        Stack(
          children: <Widget>[
            Card( 
              color: Colors.white,
                margin: EdgeInsets.all(8),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Route 99",
                          style: _textStyle,
                        ),

                      ),

                      
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
                        child: Text(
                          "MacDonald Island",
                          style: _textStyleSubtitle,
                        ),
                        
                      ),
                      
                    ],
                    
                  ),

                ),
                
              ),
              new Positioned.fill(
                child: new Material(
                    color: Colors.transparent,
                    child: new InkWell(
                       onTap: () {
                        _url = "https://asset.rmwb.ca/transit/schedule/99";
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => schedule(value: _url)),
                        );
                      },
                    )))
      
          ],
        ),
              
  
      ],
            
            
          );

  }
}



class schedule extends StatefulWidget {
  final String value;

  schedule({Key key, this.value}) : super (key: key);
  @override
  _scheduleState createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: "${widget.value}",
      ),
    );
  }
}