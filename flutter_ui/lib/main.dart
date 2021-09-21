import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:project_match/widgets/app_router.dart';
import 'package:project_match/widgets/uvu_bar.dart';

void main() {
  runApp(ProjectMatch());
}

class ProjectMatch extends StatefulWidget {
  @override
  _ProjectMatchState createState() => _ProjectMatchState();
}

class _ProjectMatchState extends State<ProjectMatch> {
  @override
  void initState() {
    super.initState();

    AppRouter appRouter = AppRouter(
      routes: AppRoutes.routes,
      notFoundHandler: AppRoutes.routeNotFoundHandler,
    );

    appRouter.setupRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Match',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Project Match Home Page'),
      onGenerateRoute: AppRouter.router.generator,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void pgChg(context, title) {
    AppRouter.router.navigateTo(
        context,
        AppRouter.getDetailRoute(title),
        transition: TransitionType.fadeIn
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 140),
          child: UVUBar(pgChg: pgChg,)
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );

  }
}

