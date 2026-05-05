:m Data.List

Em um jogo joga-se dois dados (6 faces) e apenas uma bola de uma urna que contém bolas coloridas: branco, preto, verde, azul e vermelho.

let a = [1,2,3,4,5,6]
let b = [1,2,3,4,5,6]
let c = ["branco","preto","verde","azul","vermelho"]

A) Conjunto de todas as jogadas:

let jogadas = [(x,y,z)| x <- a,y <- b, z <- c]
print jogadas
[(1,1,"branco"),(1,1,"preto"),(1,1,"verde"),(1,1,"azul"),(1,1,"vermelho"),(1,2,"branco"),(1,2,"preto"),(1,2,"verde"),(1,2,"azul"),(1,2,"vermelho"),(1,3,"branco"),(1,3,"preto"),(1,3,"verde"),(1,3,"azul"),(1,3,"vermelho"),(1,4,"branco"),(1,4,"preto"),(1,4,"verde"),(1,4,"azul"),(1,4,"vermelho"),(1,5,"branco"),(1,5,"preto"),(1,5,"verde"),(1,5,"azul"),(1,5,"vermelho"),(1,6,"branco"),(1,6,"preto"),(1,6,"verde"),(1,6,"azul"),(1,6,"vermelho"),(2,1,"branco"),(2,1,"preto"),(2,1,"verde"),(2,1,"azul"),(2,1,"vermelho"),(2,2,"branco"),(2,2,"preto"),(2,2,"verde"),(2,2,"azul"),(2,2,"vermelho"),(2,3,"branco"),(2,3,"preto"),(2,3,"verde"),(2,3,"azul"),(2,3,"vermelho"),(2,4,"branco"),(2,4,"preto"),(2,4,"verde"),(2,4,"azul"),(2,4,"vermelho"),(2,5,"branco"),(2,5,"preto"),(2,5,"verde"),(2,5,"azul"),(2,5,"vermelho"),(2,6,"branco"),(2,6,"preto"),(2,6,"verde"),(2,6,"azul"),(2,6,"vermelho"),(3,1,"branco"),(3,1,"preto"),(3,1,"verde"),(3,1,"azul"),(3,1,"vermelho"),(3,2,"branco"),(3,2,"preto"),(3,2,"verde"),(3,2,"azul"),(3,2,"vermelho"),(3,3,"branco"),(3,3,"preto"),(3,3,"verde"),(3,3,"azul"),(3,3,"vermelho"),(3,4,"branco"),(3,4,"preto"),(3,4,"verde"),(3,4,"azul"),(3,4,"vermelho"),(3,5,"branco"),(3,5,"preto"),(3,5,"verde"),(3,5,"azul"),(3,5,"vermelho"),(3,6,"branco"),(3,6,"preto"),(3,6,"verde"),(3,6,"azul"),(3,6,"vermelho"),(4,1,"branco"),(4,1,"preto"),(4,1,"verde"),(4,1,"azul"),(4,1,"vermelho"),(4,2,"branco"),(4,2,"preto"),(4,2,"verde"),(4,2,"azul"),(4,2,"vermelho"),(4,3,"branco"),(4,3,"preto"),(4,3,"verde"),(4,3,"azul"),(4,3,"vermelho"),(4,4,"branco"),(4,4,"preto"),(4,4,"verde"),(4,4,"azul"),(4,4,"vermelho"),(4,5,"branco"),(4,5,"preto"),(4,5,"verde"),(4,5,"azul"),(4,5,"vermelho"),(4,6,"branco"),(4,6,"preto"),(4,6,"verde"),(4,6,"azul"),(4,6,"vermelho"),(5,1,"branco"),(5,1,"preto"),(5,1,"verde"),(5,1,"azul"),(5,1,"vermelho"),(5,2,"branco"),(5,2,"preto"),(5,2,"verde"),(5,2,"azul"),(5,2,"vermelho"),(5,3,"branco"),(5,3,"preto"),(5,3,"verde"),(5,3,"azul"),(5,3,"vermelho"),(5,4,"branco"),(5,4,"preto"),(5,4,"verde"),(5,4,"azul"),(5,4,"vermelho"),(5,5,"branco"),(5,5,"preto"),(5,5,"verde"),(5,5,"azul"),(5,5,"vermelho"),(5,6,"branco"),(5,6,"preto"),(5,6,"verde"),(5,6,"azul"),(5,6,"vermelho"),(6,1,"branco"),(6,1,"preto"),(6,1,"verde"),(6,1,"azul"),(6,1,"vermelho"),(6,2,"branco"),(6,2,"preto"),(6,2,"verde"),(6,2,"azul"),(6,2,"vermelho"),(6,3,"branco"),(6,3,"preto"),(6,3,"verde"),(6,3,"azul"),(6,3,"vermelho"),(6,4,"branco"),(6,4,"preto"),(6,4,"verde"),(6,4,"azul"),(6,4,"vermelho"),(6,5,"branco"),(6,5,"preto"),(6,5,"verde"),(6,5,"azul"),(6,5,"vermelho"),(6,6,"branco"),(6,6,"preto"),(6,6,"verde"),(6,6,"azul"),(6,6,"vermelho")]

length jogadas
180

--------------------------------------------------------------------------

B) Todas as jogadas com soma 9 sem as cores branco e preto:

let somanove = [(x, y, z) | x <- a, y <- b, z <- c, x + y == 9, z /= "branco" && z /= "preto"]
print somanove
[(3,6,"verde"),(3,6,"azul"),(3,6,"vermelho"),(4,5,"verde"),(4,5,"azul"),(4,5,"vermelho"),(5,4,"verde"),(5,4,"azul"),(5,4,"vermelho"),(6,3,"verde"),(6,3,"azul"),(6,3,"vermelho")]

length somanove
12

--------------------------------------------------------------------------

C) Todas as jogadas com bola azul:

let bolaazul = [(x,y,z)| x <- a,y <- b, z <- c, z == "azul"]
print bolaazul
[(1,1,"azul"),(1,2,"azul"),(1,3,"azul"),(1,4,"azul"),(1,5,"azul"),(1,6,"azul"),(2,1,"azul"),(2,2,"azul"),(2,3,"azul"),(2,4,"azul"),(2,5,"azul"),(2,6,"azul"),(3,1,"azul"),(3,2,"azul"),(3,3,"azul"),(3,4,"azul"),(3,5,"azul"),(3,6,"azul"),(4,1,"azul"),(4,2,"azul"),(4,3,"azul"),(4,4,"azul"),(4,5,"azul"),(4,6,"azul"),(5,1,"azul"),(5,2,"azul"),(5,3,"azul"),(5,4,"azul"),(5,5,"azul"),(5,6,"azul"),(6,1,"azul"),(6,2,"azul"),(6,3,"azul"),(6,4,"azul"),(6,5,"azul"),(6,6,"azul")]

length bolaazul
36

--------------------------------------------------------------------------

D) Todas as jogadas com soma 15:

let somaquinze = [(x, y, z) | x <- a, y <- b, z <- c, x + y == 15]
print somaquinze
[]

length somaquinze
0

--------------------------------------------------------------------------

E) Todas as jogadas com soma 7 e o primeiro ímpar:

let somasete = [(x, y, z) | x <- a, y <- b, z <- c, x + y == 7, odd (x)]
print somasete
[(1,6,"branco"),(1,6,"preto"),(1,6,"verde"),(1,6,"azul"),(1,6,"vermelho"),(3,4,"branco"),(3,4,"preto"),(3,4,"verde"),(3,4,"azul"),(3,4,"vermelho"),(5,2,"branco"),(5,2,"preto"),(5,2,"verde"),(5,2,"azul"),(5,2,"vermelho")]

length somasete
15

--------------------------------------------------------------------------

F) Todas as jogadas com soma ímpar que não seja nem verde, azul ou vermelho:

let somaimpar = [(x, y, z) | x <- a, y <- b, z <- c, odd (x + y), z /= "verde" && z/= "azul" && z /= "vermelho"]
print somaimpar
[(1,2,"branco"),(1,2,"preto"),(1,4,"branco"),(1,4,"preto"),(1,6,"branco"),(1,6,"preto"),(2,1,"branco"),(2,1,"preto"),(2,3,"branco"),(2,3,"preto"),(2,5,"branco"),(2,5,"preto"),(3,2,"branco"),(3,2,"preto"),(3,4,"branco"),(3,4,"preto"),(3,6,"branco"),(3,6,"preto"),(4,1,"branco"),(4,1,"preto"),(4,3,"branco"),(4,3,"preto"),(4,5,"branco"),(4,5,"preto"),(5,2,"branco"),(5,2,"preto"),(5,4,"branco"),(5,4,"preto"),(5,6,"branco"),(5,6,"preto"),(6,1,"branco"),(6,1,"preto"),(6,3,"branco"),(6,3,"preto"),(6,5,"branco"),(6,5,"preto")]

length somaimpar
36
