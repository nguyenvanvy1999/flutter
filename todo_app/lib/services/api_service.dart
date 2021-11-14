import 'package:get/get.dart';
import 'package:todo_app/constants/api.dart';
import 'package:todo_app/models/task.dart';

class ApiService extends GetConnect {
  Future<Response> getAllTask() => get('$kApiUrl/task');

  Future<Response> postTask(Task data) => post('$kApiUrl/task', data);

  Future<Response> postCases(List<int> image) {
    final form = FormData({
      'file': MultipartFile(image, filename: 'avatar.png'),
      'otherFile': MultipartFile(image, filename: 'cover.png'),
    });
    return post('http://youapi/users/upload', form);
  }

  GetSocket userMessages() {
    return socket('https://yourapi/users/socket');
  }
}
