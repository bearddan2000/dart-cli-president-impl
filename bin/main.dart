class Person {
  String adjustedAge() => '0';
}
class Nationality {
  String preferLanguage() => "";
}

class Leader{
  int id;
  String name;
  String title;

  Leader(this.id, this.name, this.title);

  @override
  String toString() => '$title: id: $id, name: $name';

}
class King extends Leader implements Person, Nationality{
  King(int id, String name) : super(id, name, 'King');

  String adjustedAge() => '31';

  String preferLanguage() => 'spanish';

  @override
  String toString() => super.toString() + ', age: ' + this.adjustedAge() + ', lang: ' + this.preferLanguage();

}
class Pres extends Leader implements Person, Nationality{
  Pres(int id, String name) : super(id, name, 'Pres');

  String adjustedAge() => '57';

  String preferLanguage() => 'english';

  @override
  String toString() => super.toString() + ', age: ' + this.adjustedAge() + ', lang: ' + this.preferLanguage();
}

main(){
  for(var x in {Pres(0, 'Garfield'), Pres(1, 'Johnson'), King(0, 'Alfanso')})
   print(x.toString());
}
