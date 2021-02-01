import 'package:flutter/material.dart';
import 'Question.dart';
class HomeQuestion extends StatefulWidget {
  @override
  _HomeQuestionState createState() => _HomeQuestionState();
}

class _HomeQuestionState extends State<HomeQuestion> {
  int indixe=0;
  List<Question> _Question=Question.generateQuestion();
  List<bool> listAnswer=new List<bool>();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text(_Question[indixe].question,style: new TextStyle(fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new FlatButton(onPressed: (){
              setState(() {
               checkAnswer(true);

                indixe=(indixe+1)%_Question.length;
              });
            },child: (new Text("True"))),
            new FlatButton(onPressed: (){
              setState(() {
                checkAnswer(false);
                indixe=(indixe+1)%_Question.length;
              });
            },child: (new Text("False"))),
          ],
        ),
     Container(
       height: 50.0,
       child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: listAnswer.length,itemBuilder: (BuildContext context,int position)
          {
           return new Icon(Icons.check,color: listAnswer[position]?Colors.green:Colors.red);
          }),
     )

      ],
    );

  }
  checkAnswer(bool userAnswer){
    bool trueAnswer=_Question[indixe].reponse;
    if(userAnswer==trueAnswer){
      listAnswer.add(true);
      final snackBar = SnackBar(content: Text('Bien'));

// Find the Scaffold in the widget tree and use it to show a SnackBar.
      Scaffold.of(context).showSnackBar(snackBar);

    }else{
      listAnswer.add(false);
      final snackBar = SnackBar(content: Text('Non!!!'));

// Find the Scaffold in the widget tree and use it to show a SnackBar.
      Scaffold.of(context).showSnackBar(snackBar);

    }
  }
}
