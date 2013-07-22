99 проблем Erlang-а: 1-15
=================

Основано на [99 проблем Lisp-а] 
(http://www.ic.unicamp.br/~meidanis/courses/mc336/2006s2/funcional/L-99_Ninety-Nine_Lisp_Problems.html)

Работа со списками
-----------------

**P01 (*) Найти последнюю коробку списка.**  
Пример:

    1> p01:last([a,b,c,d,e,f]).
    [f]


**P02 (*) Найти две последних коробки списка.**  
Пример:

    1> p02:but_last([a,b,c,d,e,f]).
    [e,f]

**P03 (*) Найти N-й элемент списка.**  
Пример:

    1> p03:element_at([a,b,c,d,e,f], 4).
    d
    2> p03:element_at([a,b,c,d,e,f], 10).
    undefined

**P04 (*) Посчитать количество элементов списка.**  
Пример:

    1> p04:len([]).
    0
    2> p04:len([a,b,c,d]).
    4

**P05 (*) Перевернуть список.**  
Пример:

    1> p05:reverse([1,2,3]).
    [3,2,1]

**P06 (*) Определить, является ли список палиндромом.**  
Пример:

    1> p06:is_palindrome([1,2,3,2,1]).
    true

**P07 (**) Выровнять структуру с вложеными списками.**  
Пример:

    1> p07:flatten([a,[b,[c,d],e]]).
    [a,b,c,d,e]

__P08 (**) Удалить последовательно следующие дубликаты.__  
Пример:

    1> p08:compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
    [a,b,c,a,d,e]

__P09 (**) Запаковать последовательно следующие дубликаты во вложеные списки.__  
Пример:

    1> p09:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
    [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]

__P10 (**) Закодировать список с использованием алгоритма RLE.__  
Пример:

    1> p10:encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
    [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]


__P11 (**) Закодировать список с использованием модифицированого алгоритма RLE.__  
Пример:

    1> p11:encode-modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
    [{4,a},b,{2,c},{2,a},d,{4,e}]

__P12 (**) Написать декодер для модифицированого алгоритма RLE.__  
Пример:

    1> p12:decode-modified([{4,a},b,{2,c},{2,a},d,{4,e}]).
    [a,a,a,a,b,c,c,a,a,d,e,e,e,e]

__P13 (**) Написать декодер для стандартного алгоритма RLE.__  
Пример:

    1> p13:decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]).
    [a,a,a,a,b,c,c,a,a,d,e,e,e,e]

__P14 (*) Написать дубликатор всех элементов входящего списка.__  
Пример:

      1> p14:duplicate([a,b,c,c,d]).
      [a,a,b,b,c,c,c,c,d,d]

__P15 (**) Написать функцию-репликатор всех элементов входящего списка.__   
Пример:

    1> p15:replicate([a,b,c], 3).
    [a,a,a,b,b,b,c,c,c]
