# appbooster-sdk-example-ios

Example of AppboosterSDK implementation for iOS

## Initial project

**ViewController** – the screen on which the button is located. Here sdk is initialized and the values of the experiment are received. 

**AB** - this struct is the logic of working with AppboosterSDK

## AppboosterSDK integration

You can make A/B tests with this framework.
In the example, we use this to show the user a button in two different colors.
The server will be divided into one of the groups. To see the button of another color you can shake the iPhone and choose another option. 
After restarting the app, the button will change color. Reset the settings to return to the original option.

### Installation

According to https://github.com/appbooster/appbooster-sdk-ios/blob/master/README.md
