def func(var_a: str, /,var_b: str, * ,var_c: str ) -> None:
    print(var_a)
    print(var_b)
    print(var_c)

    func('a', 'b')