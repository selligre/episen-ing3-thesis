# Todo ligne:
Après un élément :
```tex
\todo[fancyline]{Le contenu de la todo}
\todo{Une autre todo note}
```

# Mise en forme rapide :
## Gras
```tex
\textbf{un text en gras}
```
## Underline
```tex
\underline{souligné}
```
## Italique
```tex
\textit{text}
```

# Référeces
## Glossaire :
Dans le fichier glossaire.tex :
```tex
\newglossaryentry{latex}
{
    name=latex,
    description={Is a markup language specially suited 
    for scientific documents; PUIS ON AJOUTE DU BLABLA~;}
}
```
Dans le fichier du chapitre :
```tex
blabla \Gls{latex} ou bien en minuscule \gls{latex} etc
```
Pour faire apparaître la définition :
```tex
\glsxtrlong{latex} 
```

## Acronyme :
Dans le fichier glossaire.tex :
```tex
\newacronym{ref}{rendu}
{
    {\bf\color{colorEPISEN-MEMOIRE}\textsc{I}}nitial
    {\bf\color{colorEPISEN-MEMOIRE}\textsc{S}}upplementaire~;
    traduction, explication
}
```
Dans le fichier du chapitre :
```tex
blabla \glsxtrshort{gcd} etc
```