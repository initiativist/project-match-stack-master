import 'dart:html';
import 'package:flutter/material.dart';
import 'package:project_match/projects.dart';
import 'package:project_match/involved.dart';
import 'package:project_match/hub.dart';
import 'package:project_match/contact.dart';
import 'package:project_match/catalysts.dart';
import 'package:fluro/fluro.dart';
import 'package:project_match/main.dart';
import 'package:project_match/subpages/project_sp/project_information.dart';



@immutable
class AppRouter {
  static FluroRouter router = FluroRouter.appRouter;

  final List<AppRoute> _routes;
  final Handler _notFoundHandler;

  List<AppRoute> get routes => _routes;

  const AppRouter({
    @required List<AppRoute> routes,
    @required Handler notFoundHandler,
  })  : _routes = routes,
        _notFoundHandler = notFoundHandler;

  static String getDetailRoute(buttonValue) {
    var _locationMap = <String, String>{
      "HOME"            :'/',
      "PROJECT PORTAL"  :'/projects',
      "THE HUB"         :'/the_hub',
      "CATALYSTS"       :'/catalysts',
      "GET INVOLVED"    :'/get_involved',
      "CONTACT US"      :'/contact',
    };
    return _locationMap[buttonValue];
  }

  void setupRoutes() {
    router.notFoundHandler = _notFoundHandler;
    routes.forEach(
          (AppRoute route) => router.define(route.route, handler: route.handler),
    );
  }
}

class AppRoutes {

  static Function pgChg = (context, title) {
    AppRouter.router.navigateTo(
        context,
        AppRouter.getDetailRoute(title),
        transition: TransitionType.fadeIn
    );
  };

  static final routeNotFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        debugPrint("Route not found.");

        return RouteNotFoundPage();
      });

  static final rootRoute = AppRoute(
    '/',
    Handler(
      handlerFunc: (context, parameters) => HomePage(),
    ),
  );

  static final contactRoute = AppRoute(
    '/contact',
    Handler(
      handlerFunc: (context, parameters) => ContactPage(pgChg: pgChg,),
    ),
  );

  static final catalystsRoute = AppRoute(
    '/catalysts',
    Handler(
      handlerFunc: (context, parameters) => CatalystsPage(pgChg: pgChg,),
    ),
  );

  static final theHubRoute = AppRoute(
    '/the_hub',
    Handler(
      handlerFunc: (context, parameters) => TheHubPage(pgChg: pgChg,),
    ),
  );

  static final getInvolvedRoute = AppRoute(
    '/get_involved',
    Handler(
      handlerFunc: (context, parameters) => GetInvolvedPage(pgChg: pgChg,),
    ),
  );

  static final projectsRoute = AppRoute(
    '/projects',
    Handler(
      handlerFunc: (context, parameters) => ProjectPage(pgChg: pgChg,),
    ),
  );

  static final contactDetailRoute = AppRoute(
    '/contacts/:id',
    Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          final String contactId = params["id"][0];

          return ProjectInformation(title: contactId);
        }),
  );

  static final List<AppRoute> routes = [
    rootRoute,
    contactRoute,
    catalystsRoute,
    theHubRoute,
    getInvolvedRoute,
    projectsRoute,
  ];
}

class RouteNotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Route not found"),
            TextButton(
              onPressed: () => AppRouter.router.navigateTo(
                context,
                AppRoutes.rootRoute.route,
                replace: true,
                clearStack: true,
                transition: TransitionType.none,
              ),
              child: const Text("Go Home"),
            )
          ],
        ),
      ),
    );
  }
}