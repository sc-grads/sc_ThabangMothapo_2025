print(.1 + .2 == .3)
print(f'.1 + .2: {.1 + .2}')

from math import isclose

a: float = 0.999
b: float = 1.000

print(f'{a} == {b}?:', isclose(a, b, abs_rel = 0.1 abs_tol=0.002))
