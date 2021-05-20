
<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="">
    <img src="https://user-images.githubusercontent.com/49700354/114078715-a61b2f00-987f-11eb-8eef-6fd7cfc17d33.png" alt="" width="80" height="80">
  </a>

  <h3 align="center">Arquitetura e Organização de Computadores: Projeto Final</h3>

  <p align="center">
    Este repositório contempla um projeto software e um relatório em formato de artigo cujo objetivo é a aplicação de técnicas de projetos e arquitetura de computadores
    <br />
    <a href=""><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/karengiovanna/AOC_KarenGiovanna_JoaoPaulo_UFRR2020/blob/main/relatorio_processadorSPLIT.pdf">Relatório</a>
    ·
    <a href="https://github.com/karengiovanna/AOC_KarenGiovanna_JoaoPaulo_UFRR2020/blob/main/apresenta%C3%A7%C3%A3o/Apresenta%C3%A7%C3%A3o%20Split.pdf">Slides</a>
    ·
    <a href="https://github.com/karengiovanna/AOC_KarenGiovanna_JoaoPaulo_UFRR2020/tree/main/split/componentes">Processador</a>
  </p>
</p>

<!-- ABOUT THE PROJECT -->
## Sobre o projeto
É um processador de 8 bits denominado Split baseado no processador MIPS(Microprocessor without interlocked pipeline stages) capaz de realizar operações aritméticas básicas, operações de transferência de dados e operações de saltos. MIPS é uma arquitetura de microprocessadores RISC comum na década de 80 em plataformas Nintendo, NEC, Sony, SG, etc que foi desenvolvida pela MIPS Computer Systems, muito semelhante aos RISC modernos e simples :)

## Esquema para implementação
<p align="center">
  <a href="">
    <img src="https://github.com/karengiovanna/AOC_KarenGiovanna_JoaoPaulo_UFRR2020/blob/main/DATAPATH_8_BITS.jpg?raw=true" alt="" width="90%" height="%">
  </a>

## Para construir esse processador..
Foi preciso primeiramente aprender a linguagem Assembly MIPS e para isso foi necessário entender a arquitetura do MIPS. A estudada foi de 32 registradores de uso geral de 32 bits cada, cuja nomenclatura vai de $s0 a $s32 para variáveis ou $t0 a $t21 para registradores temporários. Por que apenas 32? Porque mais registradores aumentam a complexidade do processador e afetam o desempenho.
  
 Pelo fato do processaor de 8 bits possuir limitações quanto ao tamanho da palavra, O Split possui apenas quatro registradores possíveis de uso e são compostos por 
  
Há três principais classes de instruções e cada uma delas possui 32bits. Nelas temos segmentação das intruções: opcode(nos 6 primeiros bits), rs, rt, rd, shamt, funct(6 bits). [Simulador MIPS32](http://spimsimulator.sourceforge.net/)
[MIS DataPath](http://mi.eng.cam.ac.uk/~ahg/MIPS-Datapath/)

### Objetivos de aprendizagem da disciplina
Apresentar a natureza e as características dos sistemas de computação modernos, conhecendo os paradigmas organizacionais que determinam as capacidades e o desempenho dos sistemas computacionais, transmitindo o conhecimento necessário para a utilização, gerenciamento e projetos dos sistemas computacionais para revitalizar os processos de organização e as arquiteturas de computadores existentes.

### Construido com
* [Intel Quartus](https://getbootstrap.com)


