## react-native-fb-like-button

An <FbLikeButton> component for react-native.

### Add it to your project

0. Run `npm install react-native-fb-like-button --save`
1. Make sure to follow all 7 steps here first: https://developers.facebook.com/docs/ios/getting-started#xcode. You don't have to download the SDKs Frameworks, they are in this npm package, just drag them into your project from finder.
2. Open your project in XCode, right click on `Libraries` and click `Add Files to "Your Project Name"` then add FbLikeButtonView.xcodeproj to your project.
3. Add `libFbLikeButtonView.a` to `Build Phases -> Link Binary With Libraries`
4. Whenever you want to use it within React code now you can: `var FbLikeButton = require('react-native-fb-like-button').FbLikeButton;`


## Usage

```javascript
// Within your render function:
<FbLikeButton objectID="https://developers.facebook.com"/>
```

If you need to listen for the an event when the user likes the object, add this listener in your 

```javascript
  componentDidMount() {
    DeviceEventEmitter.addListener(
      'FbLiked',
      (data) => {
        console.log('FbLiked!', data);
      }
    );
    DeviceEventEmitter.addListener(
      'FbUnliked',
      (data) => {
        console.log('FbUnliked!', data);
      }
    );
  }
```


**MIT Licensed**