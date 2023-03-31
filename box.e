class
    MOVE_BOX

create
    make

feature
    -- Attributes
    x, y: INTEGER -- Position of the box
    graph: ARRAY[1..10, 1..10] -- Graph represented as a 2D array

    -- Creation procedure
    make is
    do
        x := 1
        y := 1
        create graph.make_filled (0)
    end

    -- Moving the box
    move_up is
    do
        if y > 1 then
            y := y - 1
        end
    end

    move_down is
    do
        if y < 10 then
            y := y + 1
        end
    end

    move_left is
    do
        if x > 1 then
            x := x - 1
        end
    end

    move_right is
    do
        if x < 10 then
            x := x + 1
        end
    end

    -- Displaying the graph with the box
    display is
        local
            i, j: INTEGER
        do
            from
                i := 1
            until
                i > 10
            loop
                from
                    j := 1
                until
                    j > 10
                loop
                    if i = y and j = x then
                        print ("O")
                    else
                        print (graph[i, j].out)
                    end
                    j := j + 1
                end
                print ("%N")
                i := i + 1
            end
        end
end
