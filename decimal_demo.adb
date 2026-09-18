pragma Ada_2022;

with Ada.Decimal;

package body Decimal_Demo is

   function Max_Scale_Value return Integer is
   begin
      return Ada.Decimal.Max_Scale;
   end Max_Scale_Value;

   function Min_Scale_Value return Integer is
   begin
      return Ada.Decimal.Min_Scale;
   end Min_Scale_Value;

   function Max_Decimal_Digits_Value return Integer is
   begin
      return Ada.Decimal.Max_Decimal_Digits;
   end Max_Decimal_Digits_Value;

   function Divide_Works return Boolean is
      type Money is delta 0.01 digits 8;
      procedure Div is new Ada.Decimal.Divide
        (Dividend_Type  => Money,
         Divisor_Type   => Money,
         Quotient_Type  => Money,
         Remainder_Type => Money);
      Q : Money;
      R : Money;
   begin
      --  7.50 = 3.00 * 2.50 + 0.00
      Div (Dividend => 7.50, Divisor => 2.50, Quotient => Q, Remainder => R);
      return Q = 3.00 and then R = 0.00;
   end Divide_Works;

end Decimal_Demo;
