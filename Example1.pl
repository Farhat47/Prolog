%Mein erstes Prolog-Programm
strasseNass :- schneit.
gefaehrlich :- dunkel,friert.
gefaehrlich :- strasseNass.
friert      :- schneit.
schneit.
dunkel.