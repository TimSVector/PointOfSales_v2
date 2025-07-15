with Interfaces.C; use Interfaces.C;
with Ada.Text_IO;

package WRAP_MATRIX_MULTIPLY is
   MAX_MATRIX : constant := 4;

   type Matrix_Array is array (0 .. MAX_MATRIX - 1, 0 .. MAX_MATRIX - 1) of Interfaces.C.unsigned;
   pragma Convention (C, Matrix_Array);

   type Matrix_T is record
      Row    : Interfaces.C.unsigned;
      Col    : Interfaces.C.unsigned;
      Matrix : Matrix_Array;
   end record;
   pragma Convention (C, Matrix_T);

   -- Import C function
   function Matrix_Multiply (
      M1, M2 : access Matrix_T;
      Result : access Matrix_T
   ) return Interfaces.C.int;
   pragma Import (C, Matrix_Multiply, "matrix_multiply");

   -- Your clean Ada interface
    procedure Try_Matrix_Multiply;

end WRAP_MATRIX_MULTIPLY;
