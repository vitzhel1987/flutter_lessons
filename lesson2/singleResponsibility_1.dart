//Нарушен принцип единственной ответственности
//В первоначальном коде в методе processUserData происходила валидация, преобразование и сохранение данных
//Разнесли валидацию, преобразование и сохранение данных в разные методы
//Дополнительно реализовали метод логирования


class UserManager{
  //Валидация данных
  void validateData(Map<String, dynamic> userData){
    if(userData['name'] == null || userData['name'].isEmpty){
      throw Exception('Имя пользователя не может быть пустым');
    }

    if(userData['age'] == null || userData['age'] < 0){
      throw Exception('Возраст пользователя не может быть отрицательным');
    }

    _logger(userData, 'Данные пользователя успешно валидированы');
  }

  //Преобразование данных
  void transrormData(Map<String, dynamic> userData){
    userData['name'] = userData['name'].toString().toUpperCase();
    userData['age'] = userData['age'] + 1; //Увеличиваем возраст на 1
    _logger(userData, 'Данные пользователя успешно преобразованы');
  }

  //Здесь может быть код для сохранения данных в базу данных или файл
  void saveData(Map<String, dynamic> userData){
    _logger(userData, 'Данные сохранены');
  }

  //Логирование
  void _logger(Map<String, dynamic> userData, String str){
    print('Пользователь ${userData['name']}: $str');
  }
}

void main(){
  final Map<String, dynamic> user = {'name': 'Alice', 'age': 25};
  final userManager = UserManager();
  userManager.validateData(user);
  userManager.transrormData(user);
  userManager.saveData(user);
}