import 'package:flutter/material.dart';
import 'package:pushy_poc/home.dart';
import 'package:pushy_poc/notification_details.dart';
import 'package:pushy_poc/notification_model.dart';
import 'package:pushy_poc/page_transition.dart';

class AppRoute {
  static const appDecider = '/';
  static const notificationDetail = '/notificationDetail';

  Route<String> onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case appDecider:
        return PageTransitionBuilder(
          widget: const HomePage(),
          transitionType: TransitionType.rightToLeftTransition,
        );

      case notificationDetail:
        var notidata = args as NotificationModel;
        return PageTransitionBuilder(
          widget: NotificationDetail(
            notidata: notidata,
          ),
          transitionType: TransitionType.rightToLeftTransition,
        );

      case notificationDetail:
        var notidata = args as NotificationModel;
        return PageTransitionBuilder(
          widget: NotificationDetail(
            notidata: notidata,
          ),
          transitionType: TransitionType.rightToLeftTransition,
        );

      default:
        return PageTransitionBuilder(
          transitionType: TransitionType.rightToLeftTransition,
          widget: Container(),
        );
    }
  }
}
