
<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="">
    <img src="https://user-images.githubusercontent.com/49700354/114078715-a61b2f00-987f-11eb-8eef-6fd7cfc17d33.png" alt="" width="80" height="80">
  </a>

  <h3 align="center">Arquitetura e Organização de Computadores: Projeto Final</h3>

  <p align="center">
    Este repositório contempla um projeto software e um relatório em formato de artigo de 6 páginas cujo objetivo é a aplicação de técnicas de projetos e arquitetura de computadores
    <br />
    <a href=""><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="">View Demo</a>
    ·
    <a href="">Report Bug</a>
    ·
    <a href="">Request Feature</a>
  </p>
</p>

<!-- ABOUT THE PROJECT -->
## Sobre o projeto
É um processador MIPS(Microprocessor without interlocked pipeline stages). MIPS é uma arquitetura de microprocessadores RISC comum na década de 80 em plataformas Nintendo, NEC, Sony, SG, etc que foi desenvolvida pela MIPS Computer Systems, muito semelhante aos RISC modernos e simples, portanto muito didática :)

## Para fazer esse processador..
Foi preciso primeiramente entender a linguagem Assembly MIPS e para isso é necessário entender a arquitetura do MIPS. A estudada foi de 32 registradores de uso geral de 32 bits cada, cuja nomenclatura vai de $s0 a $s32 para variáveis ou $t0 a $t21 para registradores temporários. Por que apenas 32? Porque mais registradores aumentam a complexidade do processador e afetam o desempenho.
Há três principais classes de instruções e cada uma delas possui 32bits. Nelas temos segmentação das intruções: opcode(nos 6 primeiros bits), rs, rt, rd, shamt, funct(6 bits)

### Objetivos de aprendizagem da disciplina
Apresentar a natureza e as características dos sistemas de computação modernos, conhecendo os paradigmas organizacionais que determinam as capacidades e o desempenho dos sistemas computacionais, transmitindo o conhecimento necessário para a utilização, gerenciamento e projetos dos sistemas computacionais para revitalizar os processos de organização e as arquiteturas de computadores existentes.

### Construido com
* [Intel Quartus](https://getbootstrap.com)


