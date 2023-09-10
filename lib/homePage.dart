import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String slackUsername = "Sparkling Lily";

  final String githubProfileURL = "https://github.com/Sparklinglily";
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.orangeAccent,
        title:  const Center(child: Text("My Slack Identity",
          style:
          TextStyle(color: Colors.black87,
              fontSize: 29,
              fontWeight: FontWeight.bold),)),
      ),
      backgroundColor: Color(0xFFFFE0B2) ,

      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            CircleAvatar(
              backgroundImage: AssetImage("images/me.png"),
              radius: 140,
            ),
            SizedBox(height: 8,),


            Text(slackUsername,
              style: TextStyle(color: Colors.black87,fontSize: 25,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),

            SizedBox(height: 40,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),

                ),minimumSize: Size(200, 60)
              ),
                onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                        WebViewPage()));

            }, child: Text("Open Github",
                style: TextStyle(
                  color: Colors.black54,
                    fontSize: 25,fontWeight: FontWeight.w500)))



          ],

        ),
      ),

    );
  }
}

// class WebViewPage extends StatelessWidget {
//   bool isLoading=true;
//   final key = UniqueKey();
//
//    final WebViewController webController= WebViewController()
//    ..setJavaScriptMode(JavaScriptMode.disabled)
//      ..setNavigationDelegate(NavigationDelegate(
//        onPageFinished: (_)=>
//      ))
//    ..loadRequest(Uri.parse("https://github.com/Sparklinglily"));
//
//
//   WebViewPage({
//
//     Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           //backgroundColor: Colors.orangeAccent,
//           title: Center(child: Text("",
//             style: TextStyle(color: Colors.black87,fontSize: 29,fontWeight: FontWeight.bold),)),
//         ),
//
//       //backgroundColor: Color(0xFFFFE0B2) ,
//
//
//
//       body: Stack(
//         children: <Widget> [
//           WebViewWidget(
//
//             controller: webController,
//             key: key,
//
//
//
//           ),
//
//         ],
//       )
//     );
//   }
// }
class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  bool isLoading=true;
  final key = UniqueKey();
  late final  WebViewController controller;


  @override
  void initState(){
    controller = WebViewController()

      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..setNavigationDelegate(NavigationDelegate(
          onPageFinished: (_)=>
              setState(() {
                isLoading = false;
              })
      ))
      ..loadRequest(Uri.parse("https://github.com/Sparklinglily"));
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.orangeAccent,
          title: Center(child: Text("",
            style: TextStyle(color: Colors.black87,fontSize: 29,fontWeight: FontWeight.bold),)),
        ),

        //backgroundColor: Color(0xFFFFE0B2) ,



        body: Stack(
          children: <Widget> [
            WebViewWidget(

              controller: controller,
              key: key,
            ),
            if(isLoading)
              const Center(
                child: CircularProgressIndicator(
                  //backgroundColor: Colors.orangeAccent,
                  valueColor: AlwaysStoppedAnimation(Colors.orangeAccent),
                ))

          ],
        )
    );
  }
}


