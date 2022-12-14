import 'dart:async';
import 'package:artist_replugged/presentation/arpQuickClipsScreen/presentation/arp_quick_clips_screen.dart';
import 'package:artist_replugged/presentation/splash/splash_sreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'core/injection/dependency_injection.dart';
import 'data/remote/firebase/notification.dart';
import 'dart:developer';
import 'package:uni_links/uni_links.dart';
import 'package:artist_replugged/presentation/arpSelection/presentation/arp_movie_selection_screen.dart';
import '../../data/remote/firebase/fcm_token.dart';

bool _initialUriIsHandled = false;
var storeUri;
// pod install --repo-update
//  arch -x86_64 pod install
//  sudo arch -x86_64 gem install ffi

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await registerDependencyInjection();

  PushNotificationService().setupInteractedMessage();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(Phoenix(child: MyApp()));
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  Uri? _latestUri;

  StreamSubscription? _sub;

  /// Handle the initial Uri - the one the app was started with
  ///
  /// **ATTENTION**: `getInitialLink`/`getInitialUri` should be handled
  /// ONLY ONCE in your app's lifetime, since it is not meant to change
  /// throughout your app's life.
  ///
  /// We handle all exceptions, since it is called from initState.
  _handleInitialUri() async {
    // In this example app this is an almost useless guard, but it is here to
    // show we are not going to call getInitialUri multiple times, even if this
    // was a weidget that will be disposed of (ex. a navigation route change).
    if (!_initialUriIsHandled) {
      _initialUriIsHandled = true;
      //_showSnackBar('_handleInitialUri called');
      try {
        final uri = await getInitialUri();
        if (uri == null) {}
        setState(() {
          if (uri != null) {
            storeUri = uri.toString();
          }
          log('tomer start here $storeUri');
          _latestUri = uri;
          log('_latestUri.toString()${_latestUri.toString()}');
        });
        if (prefHelper.getStringByKey('token', '').toString().isNotEmpty ||
            prefHelper.getStringByKey('token', '') != null) {
          if (uri.toString().endsWith('mp4')) {
            // return Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (_) => ArpQuickClipsScreen()));
          } else {
            setState(() {
              var storeData = uri
                  .toString()
                  .split('https://artistReplugged.com/documentary-share/')
                  .toString()
                  .replaceAll('[', '')
                  .replaceAll(']', '')
                  .replaceAll(',', '');
              log(storeData);
              prefHelper.saveString('idforgetData', storeData);
              types = 'trailer';
            });
            // return Navigator.of(context).push(
            //     MaterialPageRoute(builder: (_) => ArpMovieSelectionScreen()));
          }
        }
        print('got initial uri: $uri');

        if (!mounted) return;
      } on PlatformException {
        // Platform messages may fail but we ignore the exception
        log('falied to get initial uri');
      } on FormatException {
        if (!mounted) return;
        log('malformed initial uri');
      } catch (e) {
        log('catch$e');
      }
    }
  }

  /// When used as a mixin, provides no-op method implementations.
  /// See [WidgetsBinding.addObserver] and [WidgetsBinding.removeObserver].
  /// This class can be extended directly, to get default behaviors for all of the handlers, or can used with the implements keyword,
  /// in which case all the handlers must be implemented (and the analyzer will list those that have been comitted.
  /// This sample shows how to implement parts of the [State] and [WidgetsBindingObserver] protocols necessary to react
  ///  to application lifecycle messages. See [didChangeAppLifecycleState].

  ///interface for classes that register with the Widgets layer binding.
  ///When used as a mixin, provides no-op method implementations.
  ///See [WidgetsBinding.addObserver] and [WidgetsBinding.removeObserver].
  ///This class can be extended directly, to get default behaviors for all of the handlers,
  /// or can used with the implements keyword, in which case all the handlers must be implemented
  ///  (and the analyzer will list those that have been comitted. This sample shows
  /// how to implement parts of the [State] and [WidgetsBindingObserver] protocols necessary to react to application lifecycle messages.
  ///  See [didChangeAppLifecycleState]. this [initState] function call at first time when
  ///

  @override
  initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      log('mesagesDsplaying${prefHelper.getStringByKey('token', '')}');
      _handleInitialUri();
    });

    WidgetsBinding.instance.addObserver(this);

    ///Registers the given object as a binding observer.
    /// Binding observers are notified when various application events occur,
    ///
    /// for example when the system locale changes. Generally,
    /// one widget in the widget tree registers itself as a binding observer, and converts the system state into inherited widgets.
    ///For example, the [WidgetsApp] widget registers as a binding observer and passes the screen size to a [MediaQuery]
    ///
    ///widget each time it is built, which enables other widgets to use the [MediaQuery.of]
    ///static method and (implicitly) the [InheritedWidget] mechanism to be notified whenever the screen
    ///size changes (e.g. whenever the screen rotates).
    super.initState();
  }

  ///subcribe from the old object and subscribe to the new one if the updated widget
  ///configuration requires replacing the object.
  ///In [didUpdateWidget] unsubscribe from the old object and subscribe to the new one if the updated widget configuration requires replacing the object.
  ///In [dispose], unsubscribe from the object.
  /// Implementations of this method should end with a call to the inherited method, as in super.dispose().
  ///
  @override
  void dispose() {
    _sub?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  ///Called when the system puts the app in the background or returns the app to the foreground.

  ///An example of implementing this method is provided in the class-level documentation
  ///for the [WidgetsBindingObserver] class.

  ///This method exposes notifications from [SystemChannels.lifecycle].
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        switch (sezu) {
          case '1':
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ArpQuickClipsScreen()));
            setState(() {
              sezu = '0';
            });

            break;
          case '2':
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => ArpMovieSelectionScreen()));
            setState(() {
              sezu = '0';
            });
            break;
          default:
        }

        break;
      case AppLifecycleState.inactive:
        log('inactive');

        break;
      case AppLifecycleState.paused:
        log('paused');
        break;
      case AppLifecycleState.detached:
        log('detached');
        setState(() {
          storeUri = '';
        });

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, child) {
          return ScrollConfiguration(behavior: MyBehavior(), child: child!);
        },
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
