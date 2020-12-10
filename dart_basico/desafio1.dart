import 'dart:collection';

void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  var quantidade = 0;
  Map<String, List<String>> mapFamilia = HashMap();

  for (var p in pacientes) {

    var paciente = p.split('|');
    var nomeCompleto = paciente[0].split(' ');
    var idade = int.tryParse(paciente[1]) ?? 0;
    var primeiroNome = nomeCompleto[0];
    var sobrenome = nomeCompleto[1];

    if(idade > 20) {
      quantidade++;
    }

    if(mapFamilia.containsKey(sobrenome)) {
      mapFamilia[sobrenome].add(primeiroNome);
    } else {
      mapFamilia.putIfAbsent(sobrenome, () => [primeiroNome]);
    }
  }

  print('Quantidade de pacientes com mais de 20 anos: $quantidade');

  for (var o in mapFamilia.keys) {
    print('\nFamilia $o:');
    for (var v in mapFamilia[o]) {
      print(v);
    }
  }
}