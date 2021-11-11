class Quote{

  String? text;
  String? author;
  //trying only String author
  //produces a Non-nullable instance field must be initialized error
  //so we need to add a ?, which then becomes
  //String? author
  //which tells data this variable will be set at a later time.
  //https://stackoverflow.com/questions/67034475/non-nullable-instance-field-must-be-initialized

  //by adding {} inside the parameters field, we can make it a named variable
  Quote({this.text, this.author}) {

  }
}