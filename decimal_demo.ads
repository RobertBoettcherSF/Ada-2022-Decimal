--  Ada 2022 topic: Ada.Decimal.
pragma Ada_2022;
package Decimal_Demo is
   function Max_Scale_Value return Integer;
   function Min_Scale_Value return Integer;
   function Max_Decimal_Digits_Value return Integer;
   --  Divide with decimal fixed-point types yields expected quotient/remainder.
   function Divide_Works return Boolean;
end Decimal_Demo;
