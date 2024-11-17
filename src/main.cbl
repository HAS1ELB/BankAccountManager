       IDENTIFICATION DIVISION.
       PROGRAM-ID. BankAccountManager.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NUM-COMPTES         PIC 9(2) VALUE 0.
           01 TABLE-COMPTES.
              05 COMPTE OCCURS 10 TIMES.
                 10 NUMERO-COMPTE   PIC 9(5).
                 10 NOM-TITULAIRE   PIC X(20).
                 10 SOLDE           PIC 9(9)V99.
        
           01 CHOIX-UTILISATEUR     PIC 9 VALUE 0.
           01 TEMP-NUMERO           PIC 9(5).
           01 TEMP-MONTANT          PIC 9(9)V99.
           01 TEMP-NOM              PIC X(20).
       
       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           PERFORM MENU
           STOP RUN.

       MENU.
        DISPLAY "==== MENU ====".
        DISPLAY "1. Ajouter un compte"
        DISPLAY "2. Consulter un solde".
        DISPLAY "3. Effectuer un dépôt".
        DISPLAY "4. Effectuer un retrait".
        DISPLAY "5. Afficher un rapport".
        DISPLAY "6. Quitter"
        ACCEPT CHOIX-UTILISATEUR.

        EVALUATE CHOIX-UTILISATEUR
         WHEN 1
          PERFORM AJOUTER-COMPTE
         WHEN 2
          PERFORM CONSULTER-SOLDE
         WHEN 3
          PERFORM EFFECTUER-DEPOT
         WHEN 4
          PERFORM EFFECTUER-RETRAIT
         WHEN 5
          PERFORM AFFICHER-RAPPORT
         WHEN 6
          DISPLAY "Au revoir!"
         WHEN OTHER
          DISPLAY "Choix non valide, réessayer."
         END-EVALUATE.

       AJOUTER-COMPTE.
        IF NUM-COMPTES < 10
         ADD 1 TO NUM-COMPTES
         DISPLAY "Entrer le numéro de compte : ".
         ACCEPT TEMP-NUMERO.
         DISPLAY "Entrer le nom du titulaire : ".
         ACCEPT TEMP-NOM.
         DISPLAY "Entrer le solde initial : ".
         ACCEPT TEMP-MONTANT.

         MOVE TEMP-NUMERO TO NUMERO-COMPTE(NUM-COMPTES)
         MOVE TEMP-NOM TO NOM-TITULAIRE(NUM-COMPTES)
         MOVE TEMP-MONTANT TO SOLDE(NUM-COMPTES)
        else
         DISPLAY "Table pleine, impossible d'ajouter d'autres comptes."
        END-IF.


        PERFORM MENU.

       CONSULTER-SOLDE.
        DISPLAY "Fonction non implémentée pour l'instant.".

       EFFECTUER-DEPOT.
        DISPLAY "Fonction non implémentée pour l'instant.".

       EFFECTUER-RETRAIT.
        DISPLAY "Fonction non implémentée pour l'instant.".
    
       AFFICHER-RAPPORT.
        DISPLAY "Fonction non implémentée pour l'instant.".