class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
});

  static List<ToDo> todoList(){
    return [
      ToDo(id: '01', todoText: 'Exercicio de manhã', isDone: true),
      ToDo(id: '02', todoText: 'Comprar comida'),
      ToDo(id: '03', todoText: 'Olhar os emails'),
      ToDo(id: '04', todoText: 'Reunião do time'),
      ToDo(id: '05', todoText: 'Trabalhar em um app mobile por 2hrs'),
      ToDo(id: '06', todoText: 'Comer como um cavalo'),
    ];
  }
}