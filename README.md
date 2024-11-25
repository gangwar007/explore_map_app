Explore Map App - Android Setup
Overview
The Explore Map app allows users to explore a map with different categories like "Cycle", "Shopping", and "Restaurant". The app uses Google Maps to show markers on predefined locations, allows the user to filter by category, and displays the user’s current location on the map. The app also supports animations for marker transitions and provides details about each marker when clicked.
Features
Main Screen: Displays a Google Map with a title bar ("Explore Map").
Markers: Display cycle, shopping, and restaurant markers on the map.
Zoom and Pan: The user can zoom in, zoom out, and pan around the map.
Marker Filtering: Toggle between "Cycle", "Shopping", and "Restaurant" categories using the Floating Action Button (FAB).
Marker Animations: Markers bounce or animate when they are added to the map.
Interactive Markers: Click a marker to display more details about the location (e.g., name, description, image).
Getting Started
Prerequisites
Flutter SDK: You need to have the Flutter SDK installed on your system. If not, follow the official Flutter Installation Guide.
Android Studio or Visual Studio Code: These IDEs will provide Flutter development support. You can download Android Studio from here.
Android Device/Emulator: Either a physical Android device connected via USB or an Android Emulator running.
Install Dependencies
Clone the repository:
Install the required Flutter dependencies:
Ensure that the Android SDK is installed and configured in your android directory.
Android Specific Configuration
1. Permissions Setup
You need to request the appropriate permissions to access the user's location.
AndroidManifest.xml
In your android/app/src/main/AndroidManifest.xml, add the following location permissions:
xmlCopy code<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/><uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/><uses-feature android:name="android.hardware.location.gps" />
Additionally, if you are using location services for background tracking, you may need:
xmlCopy code<uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION"/>
2. Configure Location Settings for Android
Ensure that location services are enabled. Android devices require location access, so you’ll need to handle permission requests in your app.
You can use the Geolocator package to handle permission requests and fetching the current location.
3. Enable Google Maps API
Go to the Google Cloud Console: https://console.cloud.google.com/
Create a new project (or use an existing one).
Enable the Google Maps SDK for Android.
Create an API key for Google Maps.
Add the following to your android/app/src/main/AndroidManifest.xml inside the <application> tag:
xmlCopy code<meta-dataandroid:name="com.google.android.geo.API_KEY"android:value="YOUR_API_KEY"/>
Replace YOUR_API_KEY with your actual Google Maps API key.
Running the App on Android
Connect your Android device or open an Android Emulator.
Run the app using the following command:
The app will launch and should center the map on the user's current location, showing the cycle, shopping, and restaurant markers, which you can toggle between using the FAB.
App Architecture
The app follows the BLoC (Business Logic Component) pattern for state management.
LocationBloc
Responsible for fetching the user’s current location using the Geolocator package and updating the UI with the current location.
MapBloc
Manages the state of the markers (including filtering by category) and updates the map UI.
Marker Details
When a marker is clicked, a bottom sheet is displayed with details about the marker (name, description, and optional image).
Key Flutter Packages Used
google_maps_flutter: To display the map and markers.
geolocator: To get the user’s current location.
flutter_bloc: For state management using BLoC.
 
bashCopy codeflutter run
bashCopy codeflutter pub get
bashCopy codegit clone https://github.com/your-repository/explore-map-app.gitcd explore-map-app
