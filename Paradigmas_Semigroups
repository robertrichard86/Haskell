-- Definindo um novo tipo para encapsular valores numéricos
newtype Soma a = Soma { getSoma :: a } deriving Show

-- Implementando Semigroup para Soma
-- O operador (<>) define como dois valores de Soma devem ser combinados
instance (Num a) => Semigroup (Soma a) where
    Soma x <> Soma y = Soma (x + y)

-- Implementando Monoid para Soma
-- Monoid estende Semigroup adicionando o elemento neutro (mempty)
instance (Num a) => Monoid (Soma a) where
    mempty = Soma 0

-- Terminal (GHCi)

-- Testando a operação de Semigroup (Junção)
-- ghci> Soma 10 <> Soma 20
-- Soma {getSoma = 30}

-- Testando a propriedade do Elemento Neutro (Monoid)
-- ghci> Soma 20 <> mempty
-- Soma {getSoma = 20}

-- ghci> mempty <> Soma 0
-- Soma {getSoma = 0}
