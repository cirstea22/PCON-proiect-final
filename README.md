# An interactive audio analsys and remix tool using Fluid Corpus Manipulation Toolkit


  -Drum Loop Analyzer and Slice Processor este un proiect realizat în Max/MSP care utilizează biblioteca Fluid Corpus Manipulation Toolkit pentru analiza și procesarea buclelor audio de percuție.
  
  -Proiectul se concentrează pe analiza buclelor de tobe, detectarea tranzienților și generarea automată de variații ritmice prin tehnici de audio slicing și procesare digitală a semnalelor (DSP). Scopul principal este explorarea metodelor moderne de segmentare și manipulare a materialului audio într-un mediu interactiv.
  
  -Features:
    
  *Încărcarea buclelor de tobe și a mostrelor audio
  
  *Detectarea automată a tranzienților folosind Fluid Corpus Manipulation Toolkit
  
  *Segmentarea și slicing-ul mostrelor audio
  
  *Redare aleatorie a segmentelor detectate
  
  *Generarea automată de variații și remixuri
  
  *Redare normală și redare inversată a fragmentelor audio
  
  *Controlul parametrilor de procesare în timp real
  
  *Efecte audio integrate:
  
  *Distortion / Drive
  
  *Filtru Low-Pass
  
  *Delay
  
  *Vizualizarea formei de undă prin waveform~
  
  *Vizualizarea semnalului audio prin scope~
  
  *Analiza spectrală în timp real prin spectroscope~
  
    
## (Instalare)
-Instalați Max/MSP (versiunea 8 sau mai nouă).

-Instalați biblioteca Fluid Corpus Manipulation Toolkit.

-Descărcați sau clonați acest repository.

-Deschideți fișierul .maxpat în Max/MSP.

-Încărcați o mostră audio și porniți analiza.


## (Utilizare)
-Apăsați butonul Replace pentru a încărca un fișier audio.

-Apăsați Process pentru detectarea tranzienților.

-Utilizați controalele de redare pentru:

    *redare normală;
    *redare pe segmente;
    *redare aleatorie;
    *redare inversată.
    
-Ajustați parametrii efectelor audio și ai motorului de slicing.

-Observați modificările în reprezentările grafice și spectrale ale semnalului.

## (Istoric)

(07.05.2026)-Primul draft al proiectului a fost prezentat fizic la laborator

(27.05.2026)-Al doilea draft al proiectului a fost incarcat pe Github aici.De mentionat faptul ca proiectul nu este inca gata, Fluid Corpus Manipulations Toolkit features nefiind inca implementate la modul complet functional

(18.06.2026)-Al treilea draft al proiectului a fost incarcat pe Github aici. De mentionat faptul ca in proiect au fost adaugate librariile de Fluid Corpus Manipulations Toolkit (slicing features) pentru drum sample remix.

## (Link-uri)
...

# Dezvoltarea proiectului


Apoi, procesul este următorul (inspirat de [aici](https://cs.anu.edu.au/courses/comp1720/deliverables/05-major-project/#submission-process)):

1. *fork* al acestui template către propriul tău cont de Github

![](assets/fork.gif)

_(dacă preferi cumva ca repo-ul să nu fie vizibil de către public, îl poți seta ca Private din Settings - "Change visibility". Atunci trebuie să mă adaugi drept colaborator, ca eu să am acces.)_

2. *clone* al repo-ului din Github Desktop pentru a-l downloada local

![](assets/clone.gif)

3. *commit* și *push* pe măsură ce lucrezi la proiect. Ultima versiune push-ată pe server înainte de deadline va conta pentru evaluare.

![](assets/commit.gif)

## Elemente obligatorii

1. Acest readme completat. Titlu, descriere, mod de utilizare, istoric, link-uri utile.

   Poți include și imagini și chiar [gif-uri animate](https://www.screentogif.com/), sau link-uri către materiale audio/video.
   
   Vezi [aici](https://charlesmartin.com.au/blog/2020/08/09/student-project-repository) mai multe sugestii.

2. [Declarația de originalitate](statement-of-originality.yml) completată. Tot ce nu este inclus acolo va fi considerat 100% contribuție proprie.

    *(formatul este adaptat de [aici](https://gitlab.cecs.anu.edu.au/comp1720/2018/comp1720-2018-major-project/-/blob/master/statement-of-originality.yml). Da, este un pic ironic să refolosim un doc [de altundeva](https://cs.anu.edu.au/courses/comp1720/resources/faq/#how-do-i-fill-out-my-statement-of-originality), dar menționăm sursa deci nu este plagiat!)*

3. Proiectul în sine. Tot codul trebuie să fie prezent, proiectul trebuie să poată rula conform instrucțiunilor din readme. Dacă e nevoie de asset-uri mari (sunete, video etc), [folosește Git LFS](https://git-lfs.github.com/) sau include link de download în instrucțiunile de instalare.

