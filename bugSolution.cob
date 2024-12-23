01  WS-AREA-1 PIC 9(5) VALUE 0.
01  WS-AREA-2 PIC 9(5) VALUE 0.
01  WS-OVERFLOW-FLAG PIC 9 VALUE 0.

PROCEDURE DIVISION.
    ADD 1 TO WS-AREA-1.
    IF WS-AREA-1 > 99999 THEN
        MOVE 1 TO WS-OVERFLOW-FLAG
        MOVE 99999 TO WS-AREA-1
    END-IF
    DISPLAY WS-AREA-1
    ADD 1 TO WS-AREA-2
    IF WS-AREA-2 > 99999 THEN
        MOVE 1 TO WS-OVERFLOW-FLAG
        MOVE 99999 TO WS-AREA-2
    END-IF
    DISPLAY WS-AREA-2
    IF WS-OVERFLOW-FLAG = 1 THEN
        DISPLAY "OVERFLOW DETECTED!" 
    END-IF
    STOP RUN.