
## OTP-Authentication App
Flutter app with a phone authentication OTP feature with Firebase.

This Flutter app includes a fully functional phone authentication feature with Firebase integration.

The app has a beautifully designed interface that allows users to login using phone authentication OTP. Users can select their country code from a list made with the country_picker package.

Using Firebase, the app can save user information such as name, phone number, email, profile picture, and bio. Once signed in, users can login and lockout without losing any of their account data.


## Features

Features:

- Phone Authentication OTP feature: This feature enables the app to verify the user’s phone number by sending a one-time password (OTP) to the user’s phone number, which is then entered into the app to verify the user’s identity.

- Firebase Integration: Firebase is a mobile and web application development platform that provides a range of tools and services to help developers build high-quality apps. It includes a real-time database, authentication, cloud storage, and more.

- User Information Storage: Using Firebase, the app can save user information such as name, phone number, email, profile picture, and bio, allowing for easy access and retrieval of user data.

- Login and Lockout: Once signed in, users can login and lockout without losing any of their account data, ensuring the security of their information.
## Remember this<---
- Generate shA1 and SHA-256 for a flutter app as follows:
  Go to the project folder in the terminal
  1.Mac: keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android
  2.Windows: keytool -list -v -keystore "\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android
  3.Linux: keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android

- Enable App Check
- under android->app->build.gradle:
   add: dependencies {
    implementation("com.google.firebase:firebase-appcheck-playintegrity")
   }
- Enable Google Play Integrity API from GCP
## Demo

<img align="right" alt="Coding" width="400" src="https://github.com/naolgithub/Phone-OTP-Auth-Firebase/blob/main/otp2.gif">

<img align="left" alt="Coding" width="400" src="https://github.com/naolgithub/Phone-OTP-Auth-Firebase/blob/main/otp_gif1.gif">
