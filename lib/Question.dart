
class Question{
  String _question;
  bool _reponse;

  Question(this._question, this._reponse);

  bool get reponse => _reponse;

  set reponse(bool value) {
    _reponse = value;
  }

  String get question => _question;

  set question(String value) {
    _question = value;
  }
  static List<Question>  generateQuestion(){
    List<Question> questions =new List<Question>();
    questions.add(new Question("JESUS EST LE FILS DE DIEU", true));
    questions.add(new Question("LES MUSULMAN AIMENT LA VIANDE DU PORT", false));
    return questions;
 }

}