book: book_of_math.tex
	while IFS= read -r line; do modified_line=$$(echo "$$line" | sed 's/<0-9>/'"$$((RANDOM % 10))"'/g'); echo "$$modified_line"; done < "book_of_math.tex" > tmp.tex
	pdflatex --jobname=book_of_math tmp.tex
	rm tmp.tex

clean:
	rm book_of_math.pdf book_of_math.aux book_of_math.log book_of_math.tex~
