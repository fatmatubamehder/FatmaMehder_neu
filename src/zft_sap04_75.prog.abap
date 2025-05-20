*&---------------------------------------------------------------------*
*& Report ZFT_SAP04_75
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZFT_SAP04_75.

*PARAMETERS: p_1 TYPE i.
*PARAMETERS: p_2 TYPE i.
*
*DATA: gv_1 TYPE n LENGTH 3.
*
*IF p_1 > p_2.
*
*  MESSAGE 'Ilk sayi ikinci sayidan kücük veya esit olacak sekilde giris yapiniz.' TYPE 'S' DISPLAY LIKE 'E'.
*  EXIT.
*
*ENDIF.
*
*DO.
*
*  IF p_1 = p_2.
*  EXIT.
*
*  ENDIF.
*
*  ADD 1 TO gv_1.
*
*  ADD 1 TO p_1.
*
*
*
*ENDDO.
*
*MESSAGE gv_1 TYPE 'I'.




PARAMETERS: p_kucuk TYPE i,
            p_buyuk TYPE i.

DATA: gv_count TYPE n LENGTH 2,
      gv_message TYPE string.


IF p_kucuk >= p_buyuk.

  MESSAGE TEXT-001 TYPE 'S' DISPLAY LIKE 'E'.
  EXIT.

ENDIF.

*CASE p_kucuk.
*  WHEN p_buyuk.
*    MESSAGE TEXT-001 TYPE 'S' DISPLAY LIKE 'E'.
*    EXIT.
*  WHEN OTHERS.
*    MESSAGE TEXT-002 TYPE 'I'.
*ENDCASE.

DO.

  add 1 to p_kucuk.
  add 1 to gv_count.

  IF p_kucuk = p_buyuk.

    EXIT.

  ENDIF.

ENDDO.



CONCATENATE TEXT-003 gv_count TEXT-004 INTO gv_message SEPARATED BY space.

MESSAGE gv_message TYPE 'I'.
