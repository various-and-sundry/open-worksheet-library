book: book_of_math.tex
	perl insert_numbers.pl
	pdflatex --jobname=book_of_math tmp.tex
	rm tmp.tex

clean:
	rm book_of_math.pdf book_of_math.aux book_of_math.log book_of_math.tex~
