-- 1. Definição dos tipos de dados
data Fabricante = Taurus | Glock | Imbel 
    deriving (Show, Eq)

data Arma = Pistola  {num :: String, preco :: Float, fab :: Fabricante}
          | Revolver {num :: String, preco :: Float, fab :: Fabricante}
          deriving (Show)

-- 2. Lista de armas
armas :: [Arma]
armas = [ Pistola "1111" 4000 Imbel
        , Pistola "222" 5555 Imbel
        , Revolver "838383" 2000 Taurus
        , Revolver "5665" 4000 Glock
        ]

-- 3. Função para somar preços (List Comprehension)
somarPreco :: [Arma] -> Float
somarPreco xs = sum [preco x | x <- xs]

-- 4. Função booleana para identificar revólveres (Pattern Matching)
-- Usamos '_' para ignorar os campos que não importam na verificação
ehRevolver :: Arma -> Bool
ehRevolver (Revolver _ _ _) = True
ehRevolver _                = False

-- 5. Função para filtrar apenas os revólveres da lista
listarRevolvers :: [Arma] -> [Arma]
listarRevolvers xs = [x | x <- xs, ehRevolver x]
