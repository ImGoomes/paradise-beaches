import 'package:paradise_beaches/models/beach_model.dart';

import 'database.dart';

class BeachRepository {


  Future<List<BeachModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<BeachModel> beaches = new List<BeachModel>();

    if (db.created) {
      beaches = new List<BeachModel>();
      beaches.add(
        new BeachModel(
          id: 1,
          nome: 'Long Beach',
          local: 'São Paulo',
          descrico: 'Uma das praias mais conhecidas de São Paulo, recebe diversos turistas no verão.',
        ),
      );
      beaches.add(
        new BeachModel(
          id: 2,
          nome: 'Jurerê Internacional',
          local: 'Santa Catarina',
          descrico: 'Uma das praias mais badalas de florianopolis, com muita vida noturna para você que gosta de festa.',
        ),
      );
      beaches.add(
        new BeachModel(
          id: 3,
          nome: 'Itamambuca',
          local: 'São Paulo',
          descrico: 'Uma boa praia para pegar uma onda e aproveitar com os amigos.',
        ),
      );
      beaches.add(
        new BeachModel(
          id: 4,
          nome: 'Praia do rosa',
          local: 'Santa Catarina',
          descrico: 'Uma praia linda para curtir com toda a familia',
        ),
      );
      beaches.add(
        new BeachModel(
          id: 5,
          nome: 'Arraial do Cabo',
          local: 'Rio de janeiro',
          descrico: 'Também conhecida como o caribe brasileiro, arraial do cabo é uma das praias mais bonitas do Brasil.',
        ),
      );

    }

    return new Future.value(beaches);
  }

}
