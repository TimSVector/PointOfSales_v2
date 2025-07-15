

package WHITEBOX is

   type pointer_type is private;

   procedure initialize (pointer : in out pointer_type);
   function Create_Pointer return Pointer_Type;

private
   type pointer_type is 
      record
         data_index : integer;
         data_value : integer;
      end record;

end WHITEBOX;

