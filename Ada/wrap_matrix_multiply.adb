with Interfaces.C;       use Interfaces.C;
with Ada.Text_IO;        use Ada.Text_IO;

package body WRAP_MATRIX_MULTIPLY is

   procedure Try_Matrix_Multiply is
      Matrix1 : aliased Matrix_T := (Row => 2, Col => 3, Matrix => (others => (others => 0)));
      Matrix2 : aliased Matrix_T := (Row => 4, Col => 2, Matrix => (others => (others => 0)));
      Result  : aliased Matrix_T;
      Ret : int;
   begin
      Ret := Matrix_Multiply (Matrix1'Access, Matrix2'Access, Result'Access);

      if Ret = 1 then
         Put_Line ("Matrix multiplication failed (FAILURE).");
      else
         Put_Line ("Matrix multiplication succeeded (SUCCESS).");
      end if;
   end Try_Matrix_Multiply;

end WRAP_MATRIX_MULTIPLY;
