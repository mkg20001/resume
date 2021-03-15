.PHONY: all resume clean install

MAKE_DIR = output
tex_flags = -xelatex -silent -interaction=batchmode

# *** *** ALL *** ***

all_files = $(wildcard ./*.tex)

all: $(all_files:.tex=.pdf)

# *** *** RESUME *** ***

resume_files = $(wildcard ./CV_Maciej_Krüger*.tex)

resume: $(resume_files:.tex=.pdf)

# *** *** SINGLE FILES *** ***

# to build any pdf file; first create the temp folder, then run these commands on the .tex file
%.pdf: %.tex | $(MAKE_DIR)

	# $< is the name of the source file
	latexmk ${tex_flags} -outdir=${MAKE_DIR} $<

	# $@ is the name of the target being generated
	cp ${MAKE_DIR}/$(notdir $@) .


# create the MAKE_DIR folder
$(MAKE_DIR):
	mkdir -p $@

# *** *** CLEAN *** ***

clean:
	rm -rf ${MAKE_DIR}/
	rm -f $(all_files:.tex=.pdf)
	rm -f $(notdir $(all_files:.tex=.synctex.gz))
	rm -f $(notdir $(all_files:.tex=.run.xml))
	rm -f $(notdir $(all_files:.tex=.bcf))

# *** *** INSTALL *** ***

install:
	mkdir -p ${out}
	cp -r output/*.pdf ${out}
