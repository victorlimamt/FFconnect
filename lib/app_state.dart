import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _obras = prefs
              .getStringList('ff_obras')
              ?.map((x) {
                try {
                  return DadosobraStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _obras;
    });
    _safeInit(() {
      _estoque = prefs
              .getStringList('ff_estoque')
              ?.map((x) {
                try {
                  return EstoqueStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _estoque;
    });
    _safeInit(() {
      _tarefas = prefs
              .getStringList('ff_tarefas')
              ?.map((x) {
                try {
                  return TarefasStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _tarefas;
    });
    _safeInit(() {
      _gastos = prefs
              .getStringList('ff_gastos')
              ?.map((x) {
                try {
                  return GastosStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _gastos;
    });
    _safeInit(() {
      _compras = prefs
              .getStringList('ff_compras')
              ?.map((x) {
                try {
                  return ComprasStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _compras;
    });
    _safeInit(() {
      _obrapadrao = prefs.getString('ff_obrapadrao') ?? _obrapadrao;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ChartYgastos')) {
        try {
          final serializedData = prefs.getString('ff_ChartYgastos') ?? '{}';
          _ChartYgastos = ChartgastoslineYStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_ChartXgastos')) {
        try {
          final serializedData = prefs.getString('ff_ChartXgastos') ?? '{}';
          _ChartXgastos = ChartgastoslineXStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_Chartgastos')) {
        try {
          final serializedData = prefs.getString('ff_Chartgastos') ?? '{}';
          _Chartgastos =
              ChartgastosStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _Subscription = prefs.getBool('ff_Subscription') ?? _Subscription;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _calculadora = '';
  String get calculadora => _calculadora;
  set calculadora(String value) {
    _calculadora = value;
  }

  List<ItenscalculadosStruct> _itenscalcul = [
    ItenscalculadosStruct.fromSerializableMap(jsonDecode(
        '{"image":"https://img.freepik.com/fotos-gratis/jovem-artesao-construindo-uma-casa_1303-27967.jpg?w=740&t=st=1701187444~exp=1701188044~hmac=acd1d70eff1b41dcb6ed3a6f0cbc54c072b60ae807ae95921abf20040b8e4f2d","itenscalc":"[\\"Tijolos\\",\\"Cimento\\",\\"Cal\\",\\"Areia\\"]","name":"Assentamento de tijolos","id":"tijolos","descricao":"Cálculos de materiais para parede de tijolos furados.","retornoid":"tijolos","dadoscalc":"[\\"propcimento\\",\\"propcal\\",\\"propareia\\",\\"dimensoestijolos\\",\\"juntatijolos\\",\\"area\\"]"}')),
    ItenscalculadosStruct.fromSerializableMap(jsonDecode(
        '{"image":"https://img.freepik.com/fotos-gratis/tiler-trabalhando-na-renovacao-do-apartamento_23-2149278621.jpg?w=740&t=st=1701230086~exp=1701230686~hmac=77b71496fb002e19df30e96d9b328c5026881b9dab7d2a035cd4bf16970fbadf","itenscalc":"[\\"Argamassa\\",\\"Rejunte\\"]","name":"Argamassa e rejunte","id":"argamassa","descricao":"Cálculos de materiais para assentamento de pisos e revestimentos.","retornoid":"argamassa","dadoscalc":"[\\"dimensoespeca\\",\\"juntaarg\\",\\"area\\"]"}')),
    ItenscalculadosStruct.fromSerializableMap(jsonDecode(
        '{"image":"https://img.freepik.com/fotos-gratis/barra-de-aco-no-local-de-construcao_1150-10124.jpg?w=740&t=st=1701231999~exp=1701232599~hmac=e6a1b39927754baf28583932120aa2c43847a6d9722c1575e71d6d7b31404bfe","itenscalc":"[\\"Cimento\\",\\"Areia\\",\\"Brita\\"]","name":"Vigas","id":"vigas","descricao":"Cálculos de materiais básicos para construções de vigas.","retornoid":"vigas","dadoscalc":"[\\"propcimento\\",\\"propareia\\",\\"propbrita\\",\\"dimensoesviga\\"]"}')),
    ItenscalculadosStruct.fromSerializableMap(jsonDecode(
        '{"image":"https://img.freepik.com/fotos-gratis/trabalhador-masculino-usando-maquina-de-betonilha-no-canteiro-de-obras_651396-2749.jpg?w=826&t=st=1701232899~exp=1701233499~hmac=3ce2e8cb67b3227d8cfb0e88955db05215c3996187d7aa29c3a1aa8ab6ca7a2f","itenscalc":"[\\"Cimento\\",\\"Areia\\",\\"Brita\\"]","name":"Laje de concreto","id":"laje","descricao":"Cálculos de materiais básicos para capa da laje de concreto.","retornoid":"laje","dadoscalc":"[\\"propcimento\\",\\"propareia\\",\\"propbrita\\",\\"espessura\\",\\"area\\"]"}')),
    ItenscalculadosStruct.fromSerializableMap(jsonDecode(
        '{"image":"https://img.freepik.com/fotos-gratis/trabalhadores-no-canteiro-de-obras_181624-23246.jpg?w=740&t=st=1701291510~exp=1701292110~hmac=50abe4f33c3280665b20d7fc0d199fdff45615b83452d54117cf479cfba93613","itenscalc":"[\\"Cimento\\",\\"Areia\\",\\"Brita\\"]","name":"Piso de concreto","id":"piso","descricao":"Materiais para piso de concreto, piso industrial ou piso de alto desempenho.","retornoid":"piso","dadoscalc":"[\\"propcimento\\",\\"propareia\\",\\"propbrita\\",\\"espessura\\",\\"area\\"]"}')),
    ItenscalculadosStruct.fromSerializableMap(jsonDecode(
        '{"image":"https://img.freepik.com/fotos-gratis/parede-de-concreto-antiga_1249-367.jpg?w=360&t=st=1701405274~exp=1701405874~hmac=1f37d8403368f2e1a8f9b85bfc58f898447f89c19a76df62ef681d2231d93a8c","itenscalc":"[\\"Cimento\\",\\"Cal\\",\\"Areia\\"]","name":"Emboço","id":"emboco","descricao":"Materiais para nivelamento do chapisco, o emboço é preparado para receber o reboco.","retornoid":"emboco","dadoscalc":"[\\"propcimento\\",\\"propcal\\",\\"propareia\\",\\"espessura\\",\\"area\\"]"}')),
    ItenscalculadosStruct.fromSerializableMap(jsonDecode(
        '{"image":"https://blog.cassol.com.br/wp-content/uploads/2022/10/homem-acentando-muro.png","itenscalc":"[\\"Cimento\\",\\"Areia\\"]","name":"Chapisco","id":"emboco","descricao":"Materiais para principal base de suporte para o reboco, o chapisco.","retornoid":"chapisco","dadoscalc":"[\\"propcimento\\",\\"propareia\\",\\"espessura\\",\\"area\\"]"}')),
    ItenscalculadosStruct.fromSerializableMap(jsonDecode(
        '{"image":"https://img.freepik.com/fotos-gratis/tecnicos-de-construcao-estao-misturando-cimento-pedra-areia-para-construcao_1150-15091.jpg?w=740&t=st=1701291638~exp=1701292238~hmac=52851ad83e6852a7ecffa96990804d350edbb49cc3699881101936bcab85ce6b","itenscalc":"[\\"Cimento\\",\\"Areia\\"]","name":"Contrapiso","id":"piso","descricao":"Camada que fica entre a estrutura da edificação e o revestimento de piso.","retornoid":"contrapiso","dadoscalc":"[\\"propcimento\\",\\"propareia\\",\\"espessura\\",\\"area\\"]"}')),
    ItenscalculadosStruct.fromSerializableMap(jsonDecode(
        '{"image":"https://img.freepik.com/fotos-gratis/local-de-construcao_1398-2991.jpg?w=360&t=st=1701401695~exp=1701402295~hmac=fd626513013fdf4c87309aa3da47acb45dd4269710717acecefa9eaf05a35b5b","itenscalc":"[\\"Cimento\\",\\"Areia\\",\\"Brita\\"]","name":"Pilar isolado","id":"pilar","descricao":"Pilar isolado ou embutido em paredes de tijolos maciços.","retornoid":"pilarisolado","dadoscalc":"[\\"propcimento\\",\\"propareia\\",\\"propbrita\\",\\"dimensoespilar\\",\\"quantidadepilares\\"]"}')),
    ItenscalculadosStruct.fromSerializableMap(jsonDecode(
        '{"image":"https://img.freepik.com/fotos-gratis/novo-tijolo-parede-concreto_23-2147625839.jpg?w=740&t=st=1701403665~exp=1701404265~hmac=83c35d3a67515c0d92a97719a643f59ec646dc025963cb4e9093eefe015866c2","itenscalc":"[\\"Cimento\\",\\"Areia\\",\\"Brita\\"]","name":"Pilar embutido","id":"pilar","descricao":"Pilar embutido em paredes de tijolos furados.","retornoid":"pilarembutido","dadoscalc":"[\\"propcimento\\",\\"propareia\\",\\"propbrita\\",\\"dimensoespilar\\",\\"quantidadepilares\\"]"}'))
  ];
  List<ItenscalculadosStruct> get itenscalcul => _itenscalcul;
  set itenscalcul(List<ItenscalculadosStruct> value) {
    _itenscalcul = value;
  }

  void addToItenscalcul(ItenscalculadosStruct value) {
    _itenscalcul.add(value);
  }

  void removeFromItenscalcul(ItenscalculadosStruct value) {
    _itenscalcul.remove(value);
  }

  void removeAtIndexFromItenscalcul(int index) {
    _itenscalcul.removeAt(index);
  }

  void updateItenscalculAtIndex(
    int index,
    ItenscalculadosStruct Function(ItenscalculadosStruct) updateFn,
  ) {
    _itenscalcul[index] = updateFn(_itenscalcul[index]);
  }

  void insertAtIndexInItenscalcul(int index, ItenscalculadosStruct value) {
    _itenscalcul.insert(index, value);
  }

  int _menuNavBar = 1;
  int get menuNavBar => _menuNavBar;
  set menuNavBar(int value) {
    _menuNavBar = value;
  }

  List<DadosobraStruct> _obras = [];
  List<DadosobraStruct> get obras => _obras;
  set obras(List<DadosobraStruct> value) {
    _obras = value;
    prefs.setStringList('ff_obras', value.map((x) => x.serialize()).toList());
  }

  void addToObras(DadosobraStruct value) {
    _obras.add(value);
    prefs.setStringList('ff_obras', _obras.map((x) => x.serialize()).toList());
  }

  void removeFromObras(DadosobraStruct value) {
    _obras.remove(value);
    prefs.setStringList('ff_obras', _obras.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromObras(int index) {
    _obras.removeAt(index);
    prefs.setStringList('ff_obras', _obras.map((x) => x.serialize()).toList());
  }

  void updateObrasAtIndex(
    int index,
    DadosobraStruct Function(DadosobraStruct) updateFn,
  ) {
    _obras[index] = updateFn(_obras[index]);
    prefs.setStringList('ff_obras', _obras.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInObras(int index, DadosobraStruct value) {
    _obras.insert(index, value);
    prefs.setStringList('ff_obras', _obras.map((x) => x.serialize()).toList());
  }

  List<EstoqueStruct> _estoque = [];
  List<EstoqueStruct> get estoque => _estoque;
  set estoque(List<EstoqueStruct> value) {
    _estoque = value;
    prefs.setStringList(
        'ff_estoque', value.map((x) => x.serialize()).toList());
  }

  void addToEstoque(EstoqueStruct value) {
    _estoque.add(value);
    prefs.setStringList(
        'ff_estoque', _estoque.map((x) => x.serialize()).toList());
  }

  void removeFromEstoque(EstoqueStruct value) {
    _estoque.remove(value);
    prefs.setStringList(
        'ff_estoque', _estoque.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromEstoque(int index) {
    _estoque.removeAt(index);
    prefs.setStringList(
        'ff_estoque', _estoque.map((x) => x.serialize()).toList());
  }

  void updateEstoqueAtIndex(
    int index,
    EstoqueStruct Function(EstoqueStruct) updateFn,
  ) {
    _estoque[index] = updateFn(_estoque[index]);
    prefs.setStringList(
        'ff_estoque', _estoque.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInEstoque(int index, EstoqueStruct value) {
    _estoque.insert(index, value);
    prefs.setStringList(
        'ff_estoque', _estoque.map((x) => x.serialize()).toList());
  }

  List<TarefasStruct> _tarefas = [
    TarefasStruct.fromSerializableMap(jsonDecode(
        '{"tarefa":"Comprar Cimento","info":"Hello World","datetime":"1702700700000","idobra":"Hello World","status":"Pendente"}'))
  ];
  List<TarefasStruct> get tarefas => _tarefas;
  set tarefas(List<TarefasStruct> value) {
    _tarefas = value;
    prefs.setStringList(
        'ff_tarefas', value.map((x) => x.serialize()).toList());
  }

  void addToTarefas(TarefasStruct value) {
    _tarefas.add(value);
    prefs.setStringList(
        'ff_tarefas', _tarefas.map((x) => x.serialize()).toList());
  }

  void removeFromTarefas(TarefasStruct value) {
    _tarefas.remove(value);
    prefs.setStringList(
        'ff_tarefas', _tarefas.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTarefas(int index) {
    _tarefas.removeAt(index);
    prefs.setStringList(
        'ff_tarefas', _tarefas.map((x) => x.serialize()).toList());
  }

  void updateTarefasAtIndex(
    int index,
    TarefasStruct Function(TarefasStruct) updateFn,
  ) {
    _tarefas[index] = updateFn(_tarefas[index]);
    prefs.setStringList(
        'ff_tarefas', _tarefas.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTarefas(int index, TarefasStruct value) {
    _tarefas.insert(index, value);
    prefs.setStringList(
        'ff_tarefas', _tarefas.map((x) => x.serialize()).toList());
  }

  List<GastosStruct> _gastos = [];
  List<GastosStruct> get gastos => _gastos;
  set gastos(List<GastosStruct> value) {
    _gastos = value;
    prefs.setStringList('ff_gastos', value.map((x) => x.serialize()).toList());
  }

  void addToGastos(GastosStruct value) {
    _gastos.add(value);
    prefs.setStringList(
        'ff_gastos', _gastos.map((x) => x.serialize()).toList());
  }

  void removeFromGastos(GastosStruct value) {
    _gastos.remove(value);
    prefs.setStringList(
        'ff_gastos', _gastos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromGastos(int index) {
    _gastos.removeAt(index);
    prefs.setStringList(
        'ff_gastos', _gastos.map((x) => x.serialize()).toList());
  }

  void updateGastosAtIndex(
    int index,
    GastosStruct Function(GastosStruct) updateFn,
  ) {
    _gastos[index] = updateFn(_gastos[index]);
    prefs.setStringList(
        'ff_gastos', _gastos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInGastos(int index, GastosStruct value) {
    _gastos.insert(index, value);
    prefs.setStringList(
        'ff_gastos', _gastos.map((x) => x.serialize()).toList());
  }

  List<ComprasStruct> _compras = [];
  List<ComprasStruct> get compras => _compras;
  set compras(List<ComprasStruct> value) {
    _compras = value;
    prefs.setStringList(
        'ff_compras', value.map((x) => x.serialize()).toList());
  }

  void addToCompras(ComprasStruct value) {
    _compras.add(value);
    prefs.setStringList(
        'ff_compras', _compras.map((x) => x.serialize()).toList());
  }

  void removeFromCompras(ComprasStruct value) {
    _compras.remove(value);
    prefs.setStringList(
        'ff_compras', _compras.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCompras(int index) {
    _compras.removeAt(index);
    prefs.setStringList(
        'ff_compras', _compras.map((x) => x.serialize()).toList());
  }

  void updateComprasAtIndex(
    int index,
    ComprasStruct Function(ComprasStruct) updateFn,
  ) {
    _compras[index] = updateFn(_compras[index]);
    prefs.setStringList(
        'ff_compras', _compras.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCompras(int index, ComprasStruct value) {
    _compras.insert(index, value);
    prefs.setStringList(
        'ff_compras', _compras.map((x) => x.serialize()).toList());
  }

  String _novoitem = '';
  String get novoitem => _novoitem;
  set novoitem(String value) {
    _novoitem = value;
  }

  String _obrapadrao = '';
  String get obrapadrao => _obrapadrao;
  set obrapadrao(String value) {
    _obrapadrao = value;
    prefs.setString('ff_obrapadrao', value);
  }

  ChartgastoslineYStruct _ChartYgastos = ChartgastoslineYStruct();
  ChartgastoslineYStruct get ChartYgastos => _ChartYgastos;
  set ChartYgastos(ChartgastoslineYStruct value) {
    _ChartYgastos = value;
    prefs.setString('ff_ChartYgastos', value.serialize());
  }

  void updateChartYgastosStruct(Function(ChartgastoslineYStruct) updateFn) {
    updateFn(_ChartYgastos);
    prefs.setString('ff_ChartYgastos', _ChartYgastos.serialize());
  }

  ChartgastoslineXStruct _ChartXgastos = ChartgastoslineXStruct();
  ChartgastoslineXStruct get ChartXgastos => _ChartXgastos;
  set ChartXgastos(ChartgastoslineXStruct value) {
    _ChartXgastos = value;
    prefs.setString('ff_ChartXgastos', value.serialize());
  }

  void updateChartXgastosStruct(Function(ChartgastoslineXStruct) updateFn) {
    updateFn(_ChartXgastos);
    prefs.setString('ff_ChartXgastos', _ChartXgastos.serialize());
  }

  ChartgastosStruct _Chartgastos = ChartgastosStruct();
  ChartgastosStruct get Chartgastos => _Chartgastos;
  set Chartgastos(ChartgastosStruct value) {
    _Chartgastos = value;
    prefs.setString('ff_Chartgastos', value.serialize());
  }

  void updateChartgastosStruct(Function(ChartgastosStruct) updateFn) {
    updateFn(_Chartgastos);
    prefs.setString('ff_Chartgastos', _Chartgastos.serialize());
  }

  bool _Subscription = false;
  bool get Subscription => _Subscription;
  set Subscription(bool value) {
    _Subscription = value;
    prefs.setBool('ff_Subscription', value);
  }

  bool _connected = false;
  bool get connected => _connected;
  set connected(bool value) {
    _connected = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
