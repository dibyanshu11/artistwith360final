import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:kiwi/kiwi.dart';

import '../../../core/constant/constant.dart';

SharedPrefHelper prefHelper = KiwiContainer().resolve<SharedPrefHelper>();
getToken() async {
  var token = await FirebaseMessaging.instance.getToken();
  print('firebase Token=>$token');
  prefHelper.saveString(ArtistConstant.fcmToken, token.toString());
}
