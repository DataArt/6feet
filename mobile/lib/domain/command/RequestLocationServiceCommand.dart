import 'package:location/location.dart';

import '../model/Result.dart';
import 'Command.dart';

class RequestLocationServiceCommand extends Command<Result<bool>> {
  RequestLocationServiceCommand();

  @override
  Future<Result<bool>> run() async {
    bool enabled = await Location().requestService();
    return Result.success(enabled);
  }
}
