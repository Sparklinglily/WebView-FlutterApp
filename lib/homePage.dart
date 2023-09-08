import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String slackUsername = "Sparkling Lily";
  final String githubUsername = "Sparkinglily";
  final String githubProfileURL = "https://github.com/Sparklinglily";
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE0B2) ,

      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 100)),
            Text("Slack Username:",style: TextStyle(
                fontSize: 25,)),
            Text(slackUsername,
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8,),
            CircleAvatar(
              backgroundImage: AssetImage("images/me.png"),
              radius: 120,
            ),
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

class WebViewPage extends StatelessWidget {

   final WebViewController controller= WebViewController()
   ..setJavaScriptMode(JavaScriptMode.disabled)
   ..loadRequest(Uri.parse("https://github.com/Sparklinglily"));


  WebViewPage({

    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller,
        
      )
    );
  }
}

