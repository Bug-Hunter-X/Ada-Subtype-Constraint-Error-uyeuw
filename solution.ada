```ada
procedure Example_Solution is
   subtype My_Sub is Integer range 1..10;
   X : My_Sub := 1;
begin
   X := X + 1;
   begin
      X := 11; -- This will raise Constraint_Error
   exception
      when Constraint_Error =>
         Put_Line("Constraint_Error exception handled");
         X := 10; -- Set to a valid value
   end;
   Put_Line("Program continued execution");
end Example_Solution;
```