import 'package:Manasat/ulitilty/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader {
  static Loader _loader;

  Loader._createObject();

  factory Loader() {
    if (_loader != null) {
      return _loader;
    } else {
      _loader = Loader._createObject();
      return _loader;
    }
  }

  //static OverlayEntry _overlayEntry;
  OverlayState _overlayState; //= new OverlayState();
  OverlayEntry _overlayEntry;

  _buildLoader() {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(height: 250.0, width: 250.0, child: buildLoader())
          ],
        );
      },
    );
  }

  showLoader(context) {
    _overlayState = Overlay.of(context);
    _buildLoader();
    _overlayState.insert(_overlayEntry);
  }

  hideLoader() {
    try {
      print("hide Loader called ");
      _overlayEntry?.remove();
      _overlayEntry = null;
    } catch (e) {
      print("Exception:: $e");
    }
  }

  buildLoader({isTransparent: false}) {
    return Container(
      child: Center(
        child: Container(
          color: isTransparent ? Colors.transparent : Colors.transparent,
          child: Center(
              child: SpinKitCircle(
            color: AppColor.btn_mehroom,
          )
//            child: CupertinoActivityIndicator(
//              radius: 20,
//            ),
              ), //CircularProgressIndicator(),
        ),
      ),
    );
  }
}
