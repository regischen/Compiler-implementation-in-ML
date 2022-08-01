datatype geometry = Triangle of real * real
| Rectangle of real * real
| Circle of real
| Line;


fun area (Triangle(w,h)) = w * h
| area (Rectangle(w,h)) = w * h /2.0
| area (Circle r)= Math.pi * r * r
| area _ = 0.0;