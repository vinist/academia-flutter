main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.

  Set<String> setPessoas = Set();
  setPessoas.addAll(pessoas);

  var qtdeMasculino = setPessoas.where((p) => p.split('|')[2] == 'Masculino').length;
  var qtdeFeminino = setPessoas.where((p) => p.split('|')[2] == 'Feminino').length;

  print('Quantidade do sexo Masculino: ${qtdeMasculino}');
  print('Quantidade do sexo Feminino: ${qtdeFeminino}');

  List<String> pessoasMaior18 = setPessoas.where((e) => int.tryParse(e.split('|')[1]) > 18).toList();
  print('Quantidade de pessoas com mais de 18 anos: ${pessoasMaior18.length}');

  pessoasMaior18.sort((e1, e2) => e1.split('|')[1].compareTo(e2.split('|')[1]));

  var pessoaMaisVelha = pessoasMaior18.last.split('|');
  print('A pessoa mais velha é ${pessoaMaisVelha[0]}, tem ${pessoaMaisVelha[1]} anos e é do sexo ${pessoaMaisVelha[2]}');

}