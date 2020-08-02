import 'package:faker/faker.dart';

List UserInfoRole(){
  return [
    {
      "path":'/userinfo',
      "method":"GET",
      "response":{
        "status":0,
        "data":{
          "username":faker.internet.userName(),
          "email":faker.internet.email(),
          "address":faker.address.city()
        }
      }
    }
  ];
}