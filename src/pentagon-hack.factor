USING: kernel io math math.order sequences formatting calendar
       threads random ;
IN: pentagon-hack

: randint ( min max -- v )
    over - 1 + random + ;

: next-progress ( p -- p' )
    [ 1 + ] [ 20 + 100 min ] bi randint ;

: progress-seq ( -- seq )
    0 [ dup 100 < ] [ next-progress dup ] produce nip ;

: print-progress ( p -- )
    "Pentagon hack progress: %d%%\n" printf flush
    1 seconds sleep ;

: print-progress-seq ( -- )
    progress-seq [ print-progress ] each ;

: hack-success? ( -- ? )
    1 30 randint 20 > ;

: print-result ( -- )
    hack-success? [ "Pentagon hack: Completed successfully." ]
                  [ "Pentagon hack: Failed." ]
    if print ;

: hack-pentagon ( -- )
    print-progress-seq print-result ;

MAIN: hack-pentagon
