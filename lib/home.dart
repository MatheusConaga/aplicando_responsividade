import 'package:flutter/material.dart';
import 'package:loja_virtual/components/itemProduto.dart';
import 'package:loja_virtual/components/mobile_app_bar.dart';
import 'package:loja_virtual/components/web_app_bar.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _ajustarVisualizacao(double larguraTela){

    int colunas = 2;

    if(larguraTela <= 600){
      colunas = 2;
    } else if(larguraTela <= 960){
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;

  }





  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraint){
          var largura = constraint.maxWidth;
          var alturaBarra = AppBar().preferredSize.height;

          return Scaffold(
            appBar: largura < 600
                ? PreferredSize(
                preferredSize: Size(largura, alturaBarra),
                child: MobileAppBar()
            )
                : PreferredSize(
                preferredSize: Size(largura, alturaBarra),
                child: WebAppBar()
            ),
            body: Padding(
                padding:EdgeInsets.all(16),
              child: GridView.count(
                  crossAxisCount: _ajustarVisualizacao(largura),
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  ItemProduto(descricao: "Kit Marias", preco: "2.000,00", imagem: "p1.jpg"),
                  ItemProduto(descricao: "Biscoito agua e sal", preco: "5.470,00", imagem: "p2.jpg"),
                  ItemProduto(descricao: "Teclado", preco: "1.045,67", imagem: "p3.jpg"),
                  ItemProduto(descricao: "Mouse", preco: "650,00", imagem: "p4.jpg"),
                  ItemProduto(descricao: "Iphone 18", preco: "4.567,00", imagem: "p5.jpg"),
                  ItemProduto(descricao: "Video game xboxZ", preco: "3.216,99", imagem: "p6.jpg"),
                  ItemProduto(descricao: "Teste Miau", preco: "2.040,00", imagem: "p1.jpg"),
                  ItemProduto(descricao: "Mario kart 64", preco: "2.640,00", imagem: "p2.jpg"),
                  ItemProduto(descricao: "Free fire", preco: "3.120,00", imagem: "p3.jpg"),
                  ItemProduto(descricao: "FortNoite", preco: "570,00", imagem: "p4.jpg"),
                  ItemProduto(descricao: "FortDia", preco: "1.000,00", imagem: "p5.jpg"),
                  ItemProduto(descricao: "FortTarde", preco: "6.753,00", imagem: "p6.jpg"),
                ],
              ),
            ),
          );
        }
    );
  }
}
