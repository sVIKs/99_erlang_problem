99 проблем Erlang-а: 1-15
=================

*Основано на [99 проблем Lisp-а] 
(http://www.ic.unicamp.br/~meidanis/courses/mc336/2006s2/funcional/L-99_Ninety-Nine_Lisp_Problems.html)*

Работа со списками
-----------------

__P01 (*) Найти последний элемент списка.__  
Пример:

    1> p01:last([a,b,c,d,e,f]).
    [f]


__P02 (*) Найти две последних элемента списка.__  
Пример:

    1> p02:but_last([a,b,c,d,e,f]).
    [e,f]

__P03 (*) Найти N-й элемент списка.__  
Пример:

    1> p03:element_at([a,b,c,d,e,f], 4).
    d
    2> p03:element_at([a,b,c,d,e,f], 10).
    undefined

__P04 (*) Посчитать количество элементов списка.__  
Пример:

    1> p04:len([]).
    0
    2> p04:len([a,b,c,d]).
    4

__P05 (*) Перевернуть список.__  
Пример:

    1> p05:reverse([1,2,3]).
    [3,2,1]

__P06 (*) Определить, является ли список палиндромом.__  
Пример:

    1> p06:is_palindrome([1,2,3,2,1]).
    true

__P07 (**) Выровнять структуру с вложеными списками.__  
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
    
__P16 (**) Удалить N-ый элемент из списка.__         
Пример:

    1> p16:drop([a,b,c,d,e,f],3).
    [a,b,d,e,f]
    
__P17 (*) Разделить список на две части.__      
Пример:

    1> p17:split([a,b,c,d,e,f,g],3).
    [[a,b,c],[d,e,f,g]]

__P18 (**) Извлеч часть списка из списка.__     
Пример:

    1> p18:slice([a,b,c,d,e,f,g,h,i,k],3,7).
    [c,d,e,f,g]
    
__P19 (**) Переместить список первых N элементов в конец.__     
Пример:

    1> p19:rotate([a,b,c,d,e,f,g,h], 3).
    [d,e,f,g,h,a,b,c]


__P20 (*) Удаление k-го элемента из списка.__       
Пример:

    1> p20:delete([a,b,c,d,e,f,g,h], 3).
    [a,b,d,e,f,g,h]


__P21 (*) Вставить элемент в заданную позицию списка.__     
Пример:

    1> p21:insert_at(alfa,[a,b,c,d,e,f,g,h], 3).
    [a,b,alfa,c,d,e,f,g,h]

__P22 (*) Создание списка, содержащего все целые числа в заданном диапазоне.__      
Пример:

    1> p22:range(4, 9).
    [4,5,6,7,8,9]
    
__P23 (*) Извлечение заданного количества случайно выбранных элементов из списка.__     
Пример:

    1> p23:rnd_select([a,b,c,d,e,f,g,h], 4).
    [d,a,h,e]
    
__P24 (*) Генерация N чисел из диапазона от 1 до M.__       
Пример:

    1> p24:lotto_select(5, 100).
    [15,11,67,13,91]    
    
__P25 (*) Создание случайной перестановки элементов списка.__       
Пример:

    1> p25:rnd_permu([a,b,c,d,e]).
    [c,a,d,b,e] 
    2> p25:rnd_permu([a,b,c,d,e]).
    [b,c,a,e,d]

__P26 (**) Создание всех комбинаций заданной длинны из списка.__        
Пример:

    1> p26:combination([a,b,c,d,e],3).
    [[a,b,c],[a,b,d],[a,b,e],...]
