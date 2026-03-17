-- Tipos de Dados Recursivos (Imagens 5, 6 e 7)
module TiposCustomizados where

-- Definição de uma lista customizada (similar a um struct em C)
data List a = a :>: (List a) | End 
    deriving Show

-- Exemplo de instância:
-- elementos = 10 :>: (20 :>: (30 :>: End))

-- Função para inserir elemento ao final da lista customizada
inserirElemento :: a -> List a -> List a
inserirElemento elemento End = elemento :>: End
inserirElemento elemento (eL :>: restoL) = eL :>: inserirElemento elemento restoL

-- Exemplo de execução (Imagem 7):
-- inserirElemento 55 (10 :>: (20 :>: (30 :>: End)))
-- Resultado: 10 :>: (20 :>: (30 :>: (55 :>: End)))
