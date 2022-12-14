/// all of This Project  Constant data store in this class
/// if i want to use then need to call this class
import 'dart:io';

class ArtistConstant {
  static const baseUrl = 'https://dev.artistreplugged.com/api/';
  static const imageUrl = 'https://artist-documentaries.s3.amazonaws.com/';
  static const String passwordValidation =
      'Password must be six character long';
  static const String passwordMatched = 'The confirm passwords do not match';
  static const String email = 'email';
  static const String emailValidator = 'Please enter valid email';
  static const String nameValidator = 'Name field can\'t be empty';
  static const String reasionValidator = 'Reasion field can\'t be empty';
  static const String returnCode = 'returnCode';
  static const String phone = 'phone';
  static const String password = 'password';
  static const String deviceType = 'device_type';
  static final String deviceAuth = Platform.isAndroid ? 'android' : 'ios';
  static const String deviceToken = 'device_token';
  static const String cPassword = 'c_password';
  static const int second = 60;
  static const String fcmToken = 'fcmToken';
  static const String name = 'name';
  static const String documentryId = 'documentary_id';
  static const String type = 'type';
  static const String quickClips = 'quick_clips';
  static const String newEpisodes = 'new_episodes';
  static const String reason = 'reason';
  static const String message = 'message';
  static const String likeDislikeStatus = 'likeDislikeStatus';
  static const String likeCount = 'likeCount';
  static const String viewCount = 'viewCount';
  static String createAccount = 'create a new account.'.toUpperCase();
  static const String invalidEmail = 'Invalid Email';
  static const String incorrectEmail =
      'Sorry we can\'t find an account with this email address. Please try again or create a new account.';
  static String forgetPassword = 'Forgot Password.'.toUpperCase();
  static const String incorrectPasword = 'Incorrect Password';
  static const String newEpisode = 'new_episodes';
  static const String clip = 'quick_clips';
  static const String incorrectPasswordError =
      'Incorrect password. Please try again or you can reset your password.';
  static const String serverException =
      'Sorry, we are unable to complete this process now. please try again later';
  static const internetExeption =
      'No InterNet Connection Please Turn On Circullar Data Or Use Wifi..';

  ///this value show when time out exception from server
  ///
  static const timeOutException =
      'Something Went Wrong Please Try Again Later..';
  static Uri registerUrl = Uri.parse('${baseUrl}register');
  static Uri loginUrl = Uri.parse('${baseUrl}login');
  static Uri resetOtpUrl = Uri.parse('${baseUrl}reset-otp');
  static Uri resetPasswordUrl = Uri.parse('${baseUrl}reset-password');
  static Uri updateProfileUrl = Uri.parse('${baseUrl}account');
  static Uri notificationUrl = Uri.parse('${baseUrl}notifications');
  static Uri supportUrl = Uri.parse('${baseUrl}support');
  static Uri documentaryAddToListUrl =
      Uri.parse('${baseUrl}documentary-wishlist');
  static Uri clipCommentUrl = Uri.parse('${baseUrl}clip-comment');
  static Uri clipLikeUrl = Uri.parse('${baseUrl}clip-like');
  static Uri clipViewUrl = Uri.parse('${baseUrl}views');
  static Uri watch = Uri.parse('${baseUrl}watch-time');
  static Uri getSearchList = Uri.parse('${baseUrl}types');
  static Uri docuentaryViewurl =
      Uri.parse('${baseUrl}documentary-like-dislike');
  static Uri moreLikeThisUrl = Uri.parse('${baseUrl}more-documentary?genre=');
  static Uri arpBrowserUrl = Uri.parse('${baseUrl}documentary?page=&type=');
  static Uri documentaryById = Uri.parse('${baseUrl}documentary');
  static Uri quickClipsUrl = Uri.parse('${baseUrl}clips');
  static Uri postCommentUrl = Uri.parse('${baseUrl}clips/');
}
