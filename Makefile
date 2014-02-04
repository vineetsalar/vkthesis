.PHONY: clean

EXTRASTYS = abhepexpt.sty abhep.sty abmath.sty lineno.sty SIunits.sty varwidth.sty

#DiMuons.pdf: DiMuons.tex mythesis.cls chap1.tex chap2.tex chap3.tex frontmatter.tex appendices.tex 
DiMuons.pdf: DiMuons.tex mythesis.cls chap_SMAndQGP.tex chap_QuarkoniaSurvey.tex chap_CMSDetector.tex chap_DiMuonContinuum.tex chap_YInPbPbColl2010.tex chap_YInPbPbColl2011.tex frontmatter.tex appendices.tex 
	@rm -f $(EXTRASTYS)
	unzip extrastyles.zip
	@rm -f DiMuons.{aux,toc,lof,lot}
	#(pdflatex DiMuons && bibtex DiMuons && pdflatex DiMuons && pdflatex DiMuons) || rm -f $(EXTRASTYS)
	(pdflatex DiMuons && pdflatex DiMuons && pdflatex DiMuons) || rm -f $(EXTRASTYS)	
	@rm -f DiMuons.{aux,toc,lof,lot}
	@rm -f $(EXTRASTYS)

clean:
	@rm -f $(EXTRASTYS)
	@rm -f DiMuons.log DiMuons.aux
	@rm -f *.lof *.cut
	@rm -f *.lot *.out *.toc
