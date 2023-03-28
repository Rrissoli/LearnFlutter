import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raphael App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            Task(
                "ler livro",
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7B7_B_m1UHCJVAUTTT5mMzQwRV6H9T7shDC_ZukyLBw&s',
                3),
            Task(
                "academia",
                'https://img.freepik.com/fotos-gratis/casal-em-forma-levantando-halteres-na-academia_329181-19979.jpg?w=1380&t=st=1680044398~exp=1680044998~hmac=d97deb7aff2c0688d15dad241e80a6e630209706c2ad0cbad2f0a224799b5b3c',
                1),
            Task(
                "jogar",
                'https://img.freepik.com/fotos-gratis/dois-amigos-adolescentes-jogando-videogame-juntos-em-casa_23-2149332884.jpg?w=1380&t=st=1680044425~exp=1680045025~hmac=134552d726cab4d2cf50503d2c41b8374c6058eb9e3962504ee74169dbe11d80',
                2),
            Task(
                "estudar",
                'https://img.freepik.com/fotos-gratis/feche-a-mao-fazendo-anotacoes_23-2148950524.jpg?w=1380&t=st=1680044481~exp=1680045081~hmac=9f0bec99dc1fac3df31f0b1522ed6da9ada430581b4eff9c56790b70d8f62f4a',
                3),
            Task(
                "dormir",
                'https://img.freepik.com/fotos-gratis/minha-cama-e-minha-melhor-amiga_329181-10418.jpg?w=1380&t=st=1680044502~exp=1680045102~hmac=a7273cb795f657dce972783d44b2b320a174033c5e62aebd69fb5c673345d62f',
                4)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;
  final String url;
  final int dificuldade;

  const Task(this.nome, this.url, this.dificuldade, {Key? key})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                        child: Image.network(
                          widget.url,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                widget.nome,
                                style: TextStyle(
                                    fontSize: 24,
                                    overflow: TextOverflow.ellipsis),
                              )),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  size: 15,
                                  color: (widget.dificuldade >= 1)
                                      ? Colors.blue
                                      : Colors.blue[100]),
                              Icon(Icons.star,
                                  size: 15,
                                  color: (widget.dificuldade >= 1)
                                      ? Colors.blue
                                      : Colors.blue[100]),
                              Icon(Icons.star,
                                  size: 15,
                                  color: (widget.dificuldade >= 2)
                                      ? Colors.blue
                                      : Colors.blue[100]),
                              Icon(Icons.star,
                                  size: 15,
                                  color: (widget.dificuldade >= 3)
                                      ? Colors.blue
                                      : Colors.blue[100]),
                              Icon(Icons.star,
                                  size: 15,
                                  color: (widget.dificuldade >= 4)
                                      ? Colors.blue
                                      : Colors.blue[100])
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 52,
                        height: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_drop_up),
                                Text(
                                  "up",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        child: LinearProgressIndicator(
                          value: (widget.dificuldade > 0) ? (nivel/widget.dificuldade) / 10: 1,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Nivel:$nivel",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
