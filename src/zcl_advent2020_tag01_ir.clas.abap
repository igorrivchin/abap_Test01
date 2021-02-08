CLASS zcl_advent2020_tag01_ir DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_advent2020_ir .

    METHODS part1
      IMPORTING
        !input        TYPE string
      RETURNING
        VALUE(output) TYPE string .
    METHODS part2
      IMPORTING
        !input        TYPE string
      RETURNING
        VALUE(output) TYPE string .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_advent2020_tag01_ir IMPLEMENTATION.


  METHOD part1.

    SPLIT input AT |\n| INTO TABLE DATA(lt_strings).

    LOOP AT lt_strings INTO DATA(lv_string1).
      LOOP AT lt_strings INTO DATA(lv_string2).
        IF lv_string1 + lv_string2 = 2020.
          output = condense( CONV i( lv_string1 * lv_string2 ) ).
          RETURN.
        ENDIF.
      ENDLOOP.
    ENDLOOP.

  ENDMETHOD.


  METHOD part2.

    SPLIT input AT |\n| INTO TABLE DATA(lt_strings).

    LOOP AT lt_strings INTO DATA(lv_string1).
      LOOP AT lt_strings INTO DATA(lv_string2).
        LOOP AT lt_strings INTO DATA(lv_string3).
          IF lv_string1 + lv_string2 + lv_string3 = 2020.
            output = condense( CONV i( lv_string1 * lv_string2 * lv_string3 ) ).
            RETURN.
          ENDIF.
        ENDLOOP.
      ENDLOOP.
    ENDLOOP.

  ENDMETHOD.


  METHOD zif_advent2020_ir~solve.

    output = part2( input ).

  ENDMETHOD.
ENDCLASS.
