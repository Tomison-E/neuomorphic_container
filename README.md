# neuomorphic_container

A package widget that applies the concept of Neuomorphism in software development using Flutter.


## Getting Started
Neumorphic containers pretends to extrude from the background. It’s an elevated form created from the same element of the background. 

The background color of your application or widget hosting the Neuomorphic Container has to match the Neuomorphic Container background color to display properly.

The Neuomorphic Container comes with default values for height,width,intensity,blur and offset parameters. 

The blur and intensity parameters are very delicate and the value selected should fit properly. 
You can decide to use the  default value for blur and intensity at first and if that does not fit your purpose you can play around with other values that suits your narrative.

Intensity requires a value within the range of 0.01 to 0.6 else an exception is raised.

The new version comes with four styles for Neuomorphic Container : Flat, Concave, Convex, Pressed. The Pressed Style currently does not work on flutter web. 

## Usage
To use this package, just import 'package:neuomorphic_container/neuomorphic_container.dart';

Explore the example directory for a sample application of this package widget.

Explore the neuomorphism directory for a code generator on the usage of this package. 
The code generator comes with an APK that can be used to test and play around with values to easily decide what fits your design purpose. You can also run the project on a connected iOS device or simulator.
It is also available online on [Neuomorphic Container Code Generator](https://neuomorphism.firebaseapp.com)

## Sample Application
![ios](example/assets/images/screenshots/ios.png)

## Sample Code Generator
![Neuomorphism](neuomorphism/assets/sc/IMG_7174.GIF)


## Inspiration
[Awwwards UI Trends](https://www.awwwards.com/inspiration/neumorphism-in-user-interfaces)

[Neomorphism](https://neumorphism.io/#55b9f3)

## Support
[Buy me a Coffee](https://www.buymeacoffee.com/urNGRFs)

For help getting started with Flutter, check out
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.