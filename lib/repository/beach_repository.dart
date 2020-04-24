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
          descricao: 'Uma das praias mais conhecidas de São Paulo, recebe diversos turistas no verão.',
          avaliacao: 3.5,
        ),
      );
      beaches.add(
        new BeachModel(
          id: 2,
          nome: 'Jurerê Internacional',
          local: 'Santa Catarina',
          descricao: 'Uma das praias mais badalas de florianópolis, com muita vida noturna agitada para você que gosta de festa.',
          avaliacao: 5,
        ),
      );
      beaches.add(
        new BeachModel(
          id: 3,
          nome: 'Itamambuca',
          local: 'São Paulo',
          descricao: 'Uma boa praia para pegar uma onda e aproveitar com os amigos.',
          avaliacao: 4,
        ),
      );
      beaches.add(
        new BeachModel(
          id: 4,
          nome: 'Praia do rosa',
          local: 'Santa Catarina',
          descricao: 'Uma praia linda para curtir com toda a família.',
          avaliacao: 4.5,
        ),
      );
      beaches.add(
        new BeachModel(
          id: 5,
          nome: 'Arraial do Cabo',
          local: 'Rio de janeiro',
          descricao: 'Também conhecida como o caribe brasileiro, arraial do cabo é uma das praias mais bonitas do Brasil.',
          avaliacao: 5,
        ),
      );

    }

    return new Future.value(beaches);
  }
}
