-- Exemplos de Recursão e Funções Básicas
module Fundamentos where

-- Sequência de Fibonacci simplificada (conforme imagem 3)
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib 3 = 3 -- Nota: Representação pedagógica da imagem (2 + 1)

-- Simulação do funcionamento interno do map (Imagens 1 e 2)
-- map (+1) [1, 2, 3] 
-- Resulta em [2, 3, 4]
-- A imagem demonstra a expansão: [1+1, 2+1, 3+1] -> [2] ++ [3] ++ [4] ++ []
