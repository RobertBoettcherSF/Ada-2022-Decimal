pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Decimal_Demo;
procedure Tests is
begin
   Assert (Decimal_Demo.Max_Scale_Value = 38);
   Assert (Decimal_Demo.Min_Scale_Value = -38);
   Assert (Decimal_Demo.Max_Decimal_Digits_Value = 38);
   Assert (Decimal_Demo.Divide_Works);
   Put_Line ("PASS Decimal Max_Scale/Divide");
   Put_Line ("All Decimal topic tests passed.");
end Tests;
