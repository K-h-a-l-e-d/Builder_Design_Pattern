import 'user_class.dart';

void main() {
  //method 1 of using builder pattern using the UserBuilder class to set its local User data
  //then using UserBuilder's build method to return a User instance with this data
  User user = UserBuilder(firstName: 'Khaled', lastName: 'Mohamed').build();

  //method 2 using User's builder method to instantiate User after assigning
  //data from a passed UserBuilder instance
  User user2 = User.builder(
    userInfoBuilder: UserBuilder(
      firstName: 'Khaled',
      lastName: 'Mohamed',
      age: '25',
      phone: '010',
    ),
  );

  print(user.toString());
  print(user2.toString());
}
