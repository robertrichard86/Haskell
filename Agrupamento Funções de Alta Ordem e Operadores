-- Funções de Alta Ordem e Operadores
module FoldAndPipe where

-- Demonstração do foldl (Imagens 2 e 3)
-- O foldl (fold left) processa a lista da esquerda para a direita
-- Exemplo: foldl (+) 0 [1,2,3,4,5] gera 15
-- Passo a passo: ((((0+1)+2)+3)+4)+5

-- Operador Pipe customizado (Imagem 4)
-- Emula o comportamento de linguagens como Elixir ou F#
(|>|) :: a -> (a -> b) -> b
valor |>| funcao = funcao valor

-- Exemplo de uso no GHCi:
-- xs |>| reverse |>| tail |>| head
