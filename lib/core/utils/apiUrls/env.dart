
const bool  isInDebugMode = true;
class Env {
  static String _prod = "";
  static String _staging = "";
  static String _testing = "";
  static String _url = "";



  static String get prod => _prod;
  static String get staging => _staging;
  static String get testing => _testing;

  static String get url => _url;
  /// Assert only runs in debug mode and can be used to test if the app is in debug mode
  /// Change the env variable to tests when in debug mode.




    void initEnv({url}){
      _url = url;
    }



}


class SystemProperties {


  static const String appIDIOS = "";

  static const testingurl =  "";

  static const staging =  "";
  static const prod =  "";
}
