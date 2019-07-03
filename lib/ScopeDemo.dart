import 'package:flutter/material.dart';
import 'CounterModel.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  CountModel model = CountModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CountModel>(
      model: model,
      child: new MaterialApp(
        title: 'Scoped Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: TopScreen(),
      ),
    );
  }
}

class TopScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TopState();
  }
}

class TopState extends State<TopScreen> {
  CountModel getModel(BuildContext context) {
    final countModel = CountModel().of(context);
    return countModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('topScreen'),
      ),
      body: Center(
        child: Text(getModel(context).getCount().toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return UnderScreen();
          }));
        },
        child: Icon(Icons.forward),
      ),
    );
//    return ScopedModelDescendant<CountModel>(
//      builder: (context, child, model) {
//        return Scaffold(
//          appBar: AppBar(
//            title: Text('topScreen'),
//          ),
//          body: Center(
//            child: Text(model.getCount().toString()),
//          ),
//          floatingActionButton: FloatingActionButton(
//            onPressed: () {
//              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//                return UnderScreen();
//              }));
//            },
//            child: Icon(Icons.forward),
//          ),
//        );
//      },
//      rebuildOnChange: true,
//    );
  }
}

class UnderScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UnderState();
  }
}

class UnderState extends State<UnderScreen> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CountModel>(
      builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Under Screen'),
          ),
          body: Center(
            child: Text(model.getCount().toString()),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              model.increment();
            },
            child: Icon(Icons.add),
            tooltip: 'Increment',
          ),
        );
      },
      rebuildOnChange: true,
    );
  }
}
