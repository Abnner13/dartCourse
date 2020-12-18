class FactoryAnimal {
  static final FactoryAnimal instance = FactoryAnimal._constructNomeado('Alce');
  String nome;
  factory FactoryAnimal() => instance;
  FactoryAnimal._constructNomeado(this.nome);
}
