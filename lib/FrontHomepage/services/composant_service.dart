import '../../Respositories/repository.dart';
import 'composant.dart';

class ComposantsService {
  Repository _repository;

  ComposantsService() {
    _repository = Repository();
  }

  saveComposants(Component component) async {
    return await _repository.insertData('Components', component.componentMap());
  }

  readComposants() async {
    return await _repository.readData('componants');
  }
}
