,                  ; read user input string and store in memory
[                  ; start loop
    ->             ; move to next memory cell and subtract 1 from current cell
    [->+<]         ; swap current and next cell values
    >+             ; move to next cell and increment its value by 1
    [<]            ; move back to previous cell
    <-             ; subtract 1 from current cell
    ]              ; end loop
<[-]               ; move to start of input string
[.>]               ; output reversed string
