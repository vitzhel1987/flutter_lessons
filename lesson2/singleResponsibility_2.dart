//Нарушен принцип единственной ответственности, т.к. один класс сочетает в себе различные функции:
// Разнесли валидацию, преобразование, сохранение и логирование в разные классы

//Валидация данных
class UserValidate {
  void validate(Map<String, dynamic> userData) {
    if (userData['name'] == null || userData['name'].isEmpty) {
      throw Exception('Имя пользователя не может быть пустым');
    }

    if (userData['age'] == null || userData['age'] < 0) {
      throw Exception('Возраст пользователя не может быть отрицательным');
    }
  }
}

//Преобразование данных
class UseTransform {
  void transform(Map<String, dynamic> userData){
    userData['name'] = userData['name'].toString().toUpperCase();
    userData['age'] = userData['age'] + 1; //Увеличиваем возраст на 1
  }
}

//Сохранение данных
class UseSave {
  void save(Map<String, dynamic> userData) {
  }
}

//Сохранение данных
class UseLog {
  void log(Map<String, dynamic> userData, String str){
    print('Пользователь ${userData['name']}: $str');
  }
}

void main(){
  final Map<String, dynamic> user1 = {'name': 'Alice', 'age': 25};
  final Map<String, dynamic> user2 = {'name': '', 'age': -5};
  final userValidate = UserValidate();
  final useTransform = UseTransform();
  final useSave = UseSave();
  final useLog = UseLog();

  userValidate.validate(user1);
  useLog.log(user1, 'Данные пользователя успешно валидированы');
  useTransform.transform(user1);
  useLog.log(user1, 'Данные пользователя успешно преобразованы');
  useSave.save(user1);
  useLog.log(user1, 'Данные сохранены');

  userValidate.validate(user2);
  useLog.log(user1, 'Данные пользователя успешно валидированы');
}