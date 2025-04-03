--ex 1
calculaArea x = 3.14 * (x * x)
--let x = 5 in calculaArea x

--ex2

triangulo a b c
    | a == b && a== c = "equilatero"
    | a == b || a == c || b == c = "isosceles"
    | a /= b && a /= c && b /= c = "escaleno"
    | otherwise = "não é triangulo"

--ex 3

multiplica x y 
    | y < 0 && x < 0 = multiplica (-x) (-y)
    | x > 0 && y < 0 = multiplica (-x) (-y)
    | y==1 = x
    | otherwise = x + multiplica x (y-1)


--ex4

multiplicaNaturais x y 
    | y==1 = x
    | otherwise = x + multiplica x (y-1)

--ex 5

menor x y z
    | x<y && x<z = x
    | y<x && x<z = y
    | z<x && z<y = z

maior x y z
    | x>y && x>z = x
    | y>x && x>z = y
    | z>x && z>y = z