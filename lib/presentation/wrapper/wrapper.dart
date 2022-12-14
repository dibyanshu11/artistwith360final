import 'package:artist_replugged/data/local/shared_pref.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';

SharedPrefHelper prefHelper = KiwiContainer().resolve<SharedPrefHelper>();

// ignore: must_be_immutable
class ValueWrapper extends StatelessWidget {
  final String image;
  ValueWrapper({Key? key, required this.image}) : super(key: key);
  final _transformationController = TransformationController();
  late TapDownDetails _doubleTapDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        body: GestureDetector(
          onDoubleTapDown: _handleDoubleTapDown,
          onDoubleTap: _handleDoubleTap,
          child: InteractiveViewer(
            transformationController: _transformationController,
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Expanded(
                        child: CachedNetworkImage(
                      imageUrl: prefHelper.getStringByKey('imagesss', ''),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              const CupertinoActivityIndicator(),
                    ))
                  ],
                )),
          ),
        ));
  }

  void _handleDoubleTapDown(TapDownDetails details) {
    _doubleTapDetails = details;
  }

  void _handleDoubleTap() {
    if (_transformationController.value != Matrix4.identity()) {
      _transformationController.value = Matrix4.identity();
    } else {
      final position = _doubleTapDetails.localPosition;
      // For a 3x zoom
      _transformationController.value = Matrix4.identity()
        ..translate(-position.dx * 3, -position.dy * 3)
        ..scale(4.0);
      // Fox a 2x zoom
      // ..translate(-position.dx, -position.dy)
      // ..scale(2.0);
    }
  }
}
