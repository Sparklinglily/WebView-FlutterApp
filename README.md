

# A flutter App with a WebView component.

This project is simply a home-screen displaying my slack profile picture , my username and a button to open my github profile.
 Image:
![App screenshots](images/appImage1.png)
![App screenshots](images/appImage2.png)
### Appetize Link:

[Appetize](https://appetize.io/app/kzuz2lx6xmz5aipxgap2lvzny4?device=pixel4&osVersion=12.0&scale=75)

This App runs intuitively across all these device screens :pixel4, pixel 4xl,pixel 6, pixel 6 pro, 
pixel 7, pixel 7 pro, and galaxy tab s7. It also runs seamlessly on android versions 10,11 and 12.

#### Steps:
Created a stateless widget and named it HomePage. In it I added an  Appbar and set it to same color as 
the status bar(fixed this inside main.dart,themeData). Created a variable called slackUserName and  
used it to display my Slack name below a circle avatar, with my profile picture. Below my name,I created
an Elevated button and set it to Navigate to WebViewPage .

I created another widget(Stateful) and 
named it WebViewPage. Added the webview_flutter package to my pubspec.yaml file and ran pub get.Afterwards,I added three variables; 
1. isLoading
2. key(UniqueKey)
3. controller(WebViewController)

Inside the widget head, I created a void initState(Super) function inorder to set state, then I 
called the controller variable and used cascade notation to set javascriptMode to disabled. Furthermore,
I set isLoading to false in the onPageFinished property, under NavigationDelegate and 
added my github url link via the loadRequest.Uri property
I made the appbar on the webViewPage same as the one in the home-screen but with an arrow-back iconButton.
Afterwards,I placed a Stack in the Scaffold body and called the WebViewWidget,
initialised the controller and key variable and then used an if statement to create a CircularProgressIndicator.

#### Installation:

1. clone this repo by copying the code url and then paste it on your code editor. 
2. Run flutter pub get to load the necessary dependencies for the project and ensure the min-sdk on your code editor is between version 20/21.
3. Shoot! Ensure you already have a Flutter sdk installed on your system, for a seamless run. Version 3.10 -3.13 is fine for this project
4. Afterwards run the app by inputting "Flutter run" in your terminal. 
5. After a few minutes, the app should come up fine on your device or in the emulator.


### Packages:

The webView_Flutter 4.2.4 plugin was used to incorporate the web component into this project. With this plugin, flutter
widgets are easily rendered over the web. It works on ANDROID and IOS and has extensive provisions for both platforms.




