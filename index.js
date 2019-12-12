import { NativeModules, Platform } from 'react-native';

// const { SangoProxy } = NativeModules;
var SangoProxy = NativeModules.SangoProxy;
console.log('SangoProxy', NativeModules);
if (Platform.OS === "ios") {
    module.exports = {
        openGoogle: function() {
            SangoProxy.openGoogle();
        }
    }
}

export default SangoProxy;
