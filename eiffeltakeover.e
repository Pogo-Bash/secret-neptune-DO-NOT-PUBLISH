class
    DRAW_SHAPE

create
    make

feature
    -- Attributes
    shape: STRING -- User inputted shape
    size: INTEGER -- Size of the shape

    -- Creation procedure
    make is
    do
        io.put_string("Enter a shape to draw: ")
        io.read_line(shape)
        io.put_string("Enter the size of the shape: ")
        io.read_integer(size)
    end

    -- Drawing the shape
    draw is
        local
            i, j: INTEGER
        do
            from
                i := 1
            until
                i > size
            loop
                from
                    j := 1
                until
                    j > size
                loop
                    if is_shape_point(i, j) then
                        print ("*")
                    else
                        print (" ")
                    end
                    j := j + 1
                end
                print ("%N")
                i := i + 1
            end
        end

    -- Helper function to determine if a point is part of the shape
    is_shape_point (i, j: INTEGER): BOOLEAN
        do
            if shape.item(i) = "*" and shape.item(j) = "*" then
                Result := True
            else
                Result := False
            end
        end
end
