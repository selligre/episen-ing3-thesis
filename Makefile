# Pour les LINUX et Mac/Apple !
CP=cp
RM=rm

# Pour les WINDOWS !  (pauvre de vous, merci d'enlever les dieses ci-dessous et de mettre des dièses au dessus
#CP=copy
#RM=del


diplome:
	cd Manuscrit; make manuscrit
	$(CP) Manuscrit/manuscrit.pdf PDF
	cd Poster; make poster
	$(CP) Poster/poster.pdf PDF
	cd Diaporama; make diaporama
	$(CP) Diaporama/diaporama.pdf PDF

clean:
	cd Manuscrit; make clean
	cd Poster; make clean
	cd Diaporama; make clean
	
allClean: clean
	cd Manuscrit; $(RM) -f *.pdf
	cd Poster; $(RM) -f *.pdf
	cd Diaporama; $(RM) -f *.pdf
	cd PDF; $(RM) -f *.pdf

fast:
	echo "Make sure to use gitbash"
	cd Manuscrit; $(RM) -f *.pdf; make manuscrit;
	cd PDF; $(RM) -f manuscrit.pdf
	$(CP) Manuscrit/manuscrit.pdf PDF

full:
	echo "Make sure to use gitbash"
	cd Manuscrit; $(RM) -f *.pdf; make full;
	cd PDF; $(RM) -f manuscritfull.pdf
	$(CP) Manuscrit/manuscritfull.pdf PDF

