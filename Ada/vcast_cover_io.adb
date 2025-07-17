---------------------------------------------
-- Copyright 2020 Vector Informatik, GmbH. --
---------------------------------------------

 with TEXT_IO; use TEXT_IO;
--target=apex with ADA.COMMAND_LINE;
with unchecked_conversion;
with VCAST_Ada_Options;
package body VCAST_COVER_IO is

   ---------- COVERAGE CONSTANTS AND TYPES ----------
   -- WARNING: these numbers might need to change!!!!!
   AVL_SUBTYPE_LIMIT  : constant := 1_000;
   BITS_SUBTYPE_LIMIT : constant := 99_999;

   subtype VCAST_AVL_TYPE is VCAST_AVL_TREE_ARRAY (0 .. AVL_SUBTYPE_LIMIT);
   type VCAST_AVL_TYPE_PTR is access VCAST_AVL_TYPE;

   subtype VCAST_BITS_TYPE is VCAST_BIT_ARRAY_TYPE (0..BITS_SUBTYPE_LIMIT);
   type VCAST_BITS_TYPE_PTR is access VCAST_BITS_TYPE;

--target=gmart   package IND_IO is
--target=gmart      type Call_ID is private;
--target=gmart      subtype Chars_Ptr is System.Address;
--target=gmart
--target=gmart      SC_Read         : constant Call_ID;
--target=gmart      SC_Write        : constant Call_ID;
--target=gmart      SC_Open         : constant Call_ID;
--target=gmart      SC_Open2        : constant Call_ID;
--target=gmart      SC_Close        : constant Call_ID;
--target=gmart      SC_Creat        : constant Call_ID;
--target=gmart      Sc_LSeek        : constant Call_ID;
--target=gmart      SC_Unlink       : constant Call_ID;
--target=gmart
--target=gmart      Error : constant := -1;
--target=gmart
--target=gmart      Flag_Read  : constant Integer := 0;
--target=gmart      Flag_Write : constant Integer := 1;
--target=gmart      Flag_RW    : constant Integer := 2;
--target=gmart
--target=gmart      type Rel_Pos is (Start, Current, EOF);
--target=gmart
--target=gmart      -- Use this for SC_Read, SC_Write.
--target=gmart      function GHS_SC (Call    : Call_ID;
--target=gmart                 File_No : Integer;
--target=gmart                 Buf     : Chars_Ptr;
--target=gmart                 Size    : Integer) return Integer;
--target=gmart
--target=gmart      -- Use this for SC_Open or SC_Creat.
--target=gmart      -- F_or_P is Flags for SC_Open.
--target=gmart      -- F_or_P is Prot for SC_Creat.
--target=gmart      function GHS_SC (Call     : Call_ID;
--target=gmart                 Filename : Chars_Ptr;
--target=gmart                 F_or_P    : Integer) return Integer;
--target=gmart
--target=gmart      -- Use this for SC_Open2
--target=gmart      function GHS_SC (Call     : Call_ID := SC_Open2;
--target=gmart                 Filename : Chars_Ptr;
--target=gmart                 Flags    : Integer;
--target=gmart                 Mode     : Integer) return Integer;
--target=gmart
--target=gmart      -- Use this for SC_Close.
--target=gmart      function GHS_SC (Call    : Call_ID := SC_Close;
--target=gmart                 File_No : Integer) return Integer;
--target=gmart
--target=gmart      -- Use this for SC_Unlink.
--target=gmart      function GHS_SC (Call     : Call_ID := SC_Unlink;
--target=gmart                 Filename : Chars_Ptr) return Integer;
--target=gmart
--target=gmart      -- Use this for SC_LSeek.
--target=gmart      function GHS_SC (Call    : Call_ID := SC_LSeek;
--target=gmart                 File_No : Integer;
--target=gmart                 Offset  : Long_Integer;
--target=gmart                 Rel     : Rel_Pos) return Long_Integer;
--target=gmart
--target=gmart   private
--target=gmart      type Call_ID is new Integer;
--target=gmart
--target=gmart      SC_Read         : constant Call_ID := 16#40000#;
--target=gmart      SC_Write        : constant Call_ID := 16#40001#;
--target=gmart      SC_Open         : constant Call_ID := 16#30004#;
--target=gmart      SC_Open2        : constant Call_ID := 16#40004#;
--target=gmart      SC_Close        : constant Call_ID := 16#20005#;
--target=gmart      SC_Creat        : constant Call_ID := 16#30006#;
--target=gmart      Sc_LSeek        : constant Call_ID := 16#40007#;
--target=gmart      SC_Unlink       : constant Call_ID := 16#20008#;
--target=gmart
--target=gmart      pragma Import (C, GHS_SC, "__ghs_syscall");
--target=gmart
--target=gmart   end Ind_IO;

   IS_OPEN     : boolean := false;

   OUTPUT_FILE : TEXT_IO.FILE_TYPE;
--target=gmart     OUTPUT_FILE : integer;


--target=apex   function GET_PROCESS return vcast_string is
--target=apex      RET_VAL : constant string := ADA.COMMAND_LINE.COMMAND_NAME;
--target=apex   begin
--target=apex      for INDEX in reverse RET_VAL'first .. RET_VAL'last - 1 loop
--target=apex         if RET_VAL(INDEX) = '/' or else
--target=apex            RET_VAL(INDEX) = '\' or else
--target=apex            RET_VAL(INDEX) = ']' or else
--target=apex            RET_VAL(INDEX) = ':'
--target=apex         then
--target=apex            return "-" & RET_VAL(INDEX + 1 .. RET_VAL'last);
--target=apex         end if;
--target=apex      end loop;
--target=apex      return "-" & RET_VAL;
--target=apex   exception
--target=apex      when others =>
--target=apex         return "";
--target=apex   end GET_PROCESS;
--target=apex
--target=apex   function GETPID return vcast_string is
--target=apex      function C_GETPID return integer;
--target=apex      pragma IMPORT ( C, C_GETPID, "getpid" );
--target=apex      PID : integer;
--target=apex   begin
--target=apex      PID := C_GETPID;
--target=apex      declare
--target=apex         RETVAL : constant string := integer'image ( PID );
--target=apex      begin
--target=apex         return "-" & RETVAL(RETVAL'first+1..RETVAL'last);
--target=apex      end;
--target=apex   exception
--target=apex      when others =>
--target=apex         return "";
--target=apex   end GETPID;

   function TESTINSS_DAT return string is
      FILENAME  : constant string := "TESTINSS";
      EXTENSION : constant string := ".DAT";
   begin
      return FILENAME &
--target=apex             GET_PROCESS &
--target=apex             GETPID &
             EXTENSION;
   end TESTINSS_DAT;

   ------------------------------------------------------
   procedure OPEN_FILE is
   begin
            -- If using the "Append To TESTINSS" feature, you will need to
            -- uncomment the following block of code. This will only work
            -- if your run-time supports exception handlers

            -- if not IS_OPEN and VCAST_ADA_OPTIONS.VCAST_APPEND_TO_TESTINSS then
            --    begin
            --       TEXT_IO.OPEN (OUTPUT_FILE, TEXT_IO.APPEND_FILE, TESTINSS_DAT);
            --       IS_OPEN := true;
            --    exception
            --       when others => null;
            --    end;
            -- end if;

--target=apex            -- Apex will always allow APPEND_TO_TESTINSS
--target=apex            if not IS_OPEN and VCAST_ADA_OPTIONS.VCAST_APPEND_TO_TESTINSS then
--target=apex               begin
--target=apex                  TEXT_IO.OPEN (OUTPUT_FILE, TEXT_IO.APPEND_FILE, TESTINSS_DAT);
--target=apex                  IS_OPEN := true;
--target=apex               exception
--target=apex                  when others => null;
--target=apex               end;
--target=apex            end if;

      if not IS_OPEN then
         TEXT_IO.CREATE (OUTPUT_FILE, TEXT_IO.OUT_FILE, TESTINSS_DAT);
         IS_OPEN := true;
      end if;
--target=apex                       exception
--target=apex                          when TEXT_IO.USE_ERROR =>
--target=apex                             TEXT_IO.OPEN (OUTPUT_FILE, TEXT_IO.OUT_FILE, TESTINSS_DAT);
--target=apex                             IS_OPEN := true;
   end OPEN_FILE;

--target=gmart   procedure OPEN_FILE is
--target=gmart      C_Name : constant string := TESTINSS_DAT & Ascii.NUL;
--target=gmart   begin
--target=gmart      if not IS_OPEN then
--target=gmart         OUTPUT_FILE :=
--target=gmart            Ind_IO.GHS_SC (Call => Ind_IO.SC_Creat,
--target=gmart                Filename => C_Name'Address,
--target=gmart                 F_or_P => 8#666#); -- Unix file Permission
--target=gmart
--target=gmart         OUTPUT_FILE :=
--target=gmart           Ind_IO.GHS_SC (
--target=gmart              Call     => Ind_IO.SC_Open,
--target=gmart              Filename => C_Name'Address,
--target=gmart              F_or_P   => Ind_IO.Flag_Write);
--target=gmart         IS_OPEN := true;
--target=gmart      end if;
--target=gmart   end OPEN_FILE;

   ------------------------------------------------------
--target=general,apex,ada83   procedure WRITE_TO_INST_FILE (S : string) is
--target=general,apex,ada83   begin
--target=general,apex,ada83      OPEN_FILE;
--target=general,apex,ada83      TEXT_IO.PUT_LINE (OUTPUT_FILE, S);
--target=general,apex,ada83   end WRITE_TO_INST_FILE;

   procedure C_WRITE_TO_INST_FILE ( STR   : SYSTEM.ADDRESS;
                                    FLUSH : integer );
   pragma IMPORT ( C, C_WRITE_TO_INST_FILE, "VCAST_WRITE_TO_INST_FILE_COVERAGE" );
   procedure WRITE_TO_INST_FILE (S : string) is
      STR : constant string := S & ASCII.NUL;
   begin
      C_WRITE_TO_INST_FILE ( STR'address, 1 );
   end WRITE_TO_INST_FILE;

--target=gmart   procedure WRITE_TO_INST_FILE (S : string) is
--target=gmart      STR               : constant string := S & ASCII.LF;
--target=gmart      Total_Written     : Natural := 0;
--target=gmart      Str_Len           : Natural := STR'Length;
--target=gmart      To_Write          : Natural;
--target=gmart      This_Start        : Natural;
--target=gmart      Written_This_Time : Integer;
--target=gmart   begin
--target=gmart      -- Uncomment this line for Ada / C Environments
--target=gmart      --ADA_AND_C-- C_WRITE_TO_INST_FILE ( STR'address );
--target=gmart
--target=gmart      -- Comment out the following 2 lines for Ada / C.
--target=gmart      OPEN_FILE;
--target=gmart
--target=gmart      while Total_Written < Str_Len loop
--target=gmart         To_Write := Str_Len - Total_Written;
--target=gmart         This_Start := STR'First + Total_Written;
--target=gmart         Written_This_Time :=
--target=gmart            Ind_IO.GHS_SC(Call    => Ind_IO.SC_Write,
--target=gmart              File_No => OUTPUT_FILE,
--target=gmart              Buf     => STR(This_Start)'address,
--target=gmart              Size    => To_Write);
--target=gmart         if Written_This_Time = Ind_IO.Error then
--target=gmart            exit; -- Maybe raise an exception?
--target=gmart         end if;
--target=gmart         Total_Written := Total_Written + Written_This_Time;
--target=gmart      end loop;
--target=gmart   end WRITE_TO_INST_FILE;

   ------------------------------------------------------
   ------------------------------------------------------
   procedure CLOSE_FILE is
--target=gmart Status : Integer;
   begin
      -- Uncomment this line for Ada / C Environments
      --ADA_AND_C-- C_CLOSE_FILE;

      -- Comment out the following 4 lines for Ada / C.
      if IS_OPEN then
         TEXT_IO.CLOSE ( OUTPUT_FILE );
--target=gmart         Status := Ind_IO.GHS_SC(
--target=gmart               Call    => Ind_IO.SC_Close,
--target=gmart               File_No => OUTPUT_FILE);
         IS_OPEN := false;
      end if;

   end CLOSE_FILE;

   ---------------------------------------------------------------------------
   -- Utility functions, used only by optimized coverage functions below.
   ---------------------------------------------------------------------------
   ---------------------------------------------------------------------------
   -- This function converts the bit array into an unsigned_32 number. We
   -- don't use UNCHECKED_CONVERSION because it doesn't work correctly on SOLARIS!
   function BIT_ARRAY_MCDC_TO_INT ( BITS : VCAST_BIT_ARRAY_MCDC_TYPE )
                                    return UNSIGNED_32 is
      RV  : Unsigned_32 := 0;
      PV  : Unsigned_32 := 1;
   begin
      for I in BITS'first .. BITS'last loop
         if BITS(I) then
            RV := RV + PV;
         end if;
         if PV >= UNSIGNED_32_MAX then
            return 0;
         end if;
         PV := PV * 2;
      end loop;
      return RV;
   end BIT_ARRAY_MCDC_TO_INT;

   --  Supporting subprograms
   ---------------------------------------------------------------------------
   function address_to_avl_node_ref is new
     unchecked_conversion (system.address, AVL_Node_Ref);

   function Get_Avl_Node return AVL_Node_Ref is
   begin
         if VCAST_Ada_Options.VCAST_USE_STATIC_MEMORY then
         AVL_Node_Array_Pos := AVL_Node_Array_Pos+1;
         return address_to_avl_node_ref (
            AVL_Node_Array(AVL_Node_Array_Pos-1)'Address);
         else
            return new AVL_Node;
         end if;
   end Get_Avl_Node;

   function address_to_mcdc_statement_ptr is new
     unchecked_conversion (system.address, VCAST_MCDC_Statement_Ptr);
   function Get_MCDC_Statement return VCAST_MCDC_Statement_Ptr is
      Ptr : VCAST_MCDC_Statement_Ptr;
   begin
     if VCAST_Ada_Options.VCAST_USE_STATIC_MEMORY then
         -- If has another avl item.
         if not (AVL_Item_Array_Pos <= VCAST_NUM_MCDC_STMNTS) then
            if not VCAST_Max_MCDC_Statements_Exceeded then
               WRITE_TO_INST_FILE ("VCAST_MAX_MCDC_STATEMENTS exceeded!");
               VCAST_Max_MCDC_Statements_Exceeded := true;
            end if;
            return null;
         end if;

         AVL_Item_Array_Pos := AVL_Item_Array_Pos+1;
         return address_to_mcdc_statement_ptr (AVL_Item_Array(AVL_Item_Array_Pos-1)'Address);
     else
       Ptr := new VCAST_MCDC_Statement;
       return ptr;
     end if;
   end Get_MCDC_Statement;

   function VCAST_MCDC_Statement_Is_Equal (L, R : VCAST_MCDC_Statement_Ptr)
     return Integer is
   begin
     if L.MCDC_Bits = R.MCDC_Bits then
       if L.MCDC_Bits_Used = R.MCDC_Bits_Used then
         return 0;
       elsif L.MCDC_Bits_Used < R.MCDC_Bits_Used then
         return -1;
       else
         return 1;
       end if;
     elsif L.MCDC_Bits < R.MCDC_Bits then
       return -1;
     else
       return 1;
     end if;
   end VCAST_MCDC_Statement_Is_Equal;


   procedure Search_Insert (T : in out AVL_Tree;
                            Element : VCAST_MCDC_Statement_Ptr;
                            Node : in out AVL_Node_Ref;
                            Increased : in out Boolean;
                            Inserted : out Boolean);

   procedure Balance_Left (Node : in out AVL_Node_Ref;
                           Decreased : in out Boolean);

   procedure Balance_Right (Node : in out AVL_Node_Ref;
                            Decreased : in out Boolean);

   function Search (
      T : AVL_Tree;
      Element : VCAST_MCDC_Statement_Ptr;
      Node : AVL_Node_Ref) return Boolean;

   procedure Search_Insert (T : in out AVL_Tree;
                            Element : VCAST_MCDC_Statement_Ptr;
                            Node : in out AVL_Node_Ref;
                            Increased : in out Boolean;
                            Inserted : out Boolean) is
      P1, P2 : AVL_Node_Ref;
      Val : integer;
   begin
      Inserted := True;
      if Node = null then
         Node := Get_Avl_Node;

         Node.Element := Element;
         Node.Left := Null;
         Node.Right := Null;
         Node.Balance := Middle;

         Increased := True;
      else
         Val := VCAST_MCDC_Statement_Is_Equal (Element, Node.Element);
         if Val = -1 then
            Search_Insert (T, Element, Node.Left, Increased, Inserted);
            if Increased then
               case Node.Balance is
                  when Right =>
                     Node.Balance := Middle;
                     Increased := False;
                  when Middle =>
                     Node.Balance := Left;
                  when Left =>
                     P1 := Node.Left;
                     if P1.Balance = Left then
                        Node.Left := P1.Right;
                        P1.Right := Node;
                        Node.Balance := Middle;
                        Node := P1;
                     else
                        P2 := P1.Right;
                        P1.Right := P2.Left;
                        P2.Left := P1;
                        Node.Left := P2.Right;
                        P2.Right := Node;
                        if P2.Balance = Left then
                           Node.Balance := Right;
                        else
                           Node.Balance := Middle;
                        end if;
                        if P2.Balance = Right then
                           P1.Balance := Left;
                        else
                           P1.Balance := Middle;
                        end if;
                        Node := P2;
                     end if;
                     Node.Balance := Middle;
                     Increased := False;
               end case;
            end if;
         elsif Val = 1 then
            Search_Insert (T, Element, Node.Right, Increased, Inserted);
            if Increased then
               case Node.Balance is
                  when Left =>
                     Node.Balance := Middle;
                     Increased := False;
                  when Middle =>
                     Node.Balance := Right;
                  when Right =>
                     P1 := Node.Right;
                     if P1.Balance = Right then
                        Node.Right := P1.Left;
                        P1.Left := Node;
                        Node.Balance := Middle;
                        Node := P1;
                     else
                        P2 := P1.Left;
                        P1.Left := P2.Right;
                        P2.Right := P1;
                        Node.Right := P2.Left;
                        P2.Left := Node;
                        if P2.Balance = Right then
                           Node.Balance := Left;
                        else
                           Node.Balance := Middle;
                        end if;
                        if P2.Balance = Left then
                           P1.Balance := Right;
                        else
                           P1.Balance := Middle;
                        end if;
                        Node := P2;
                     end if;
                     Node.Balance := Middle;
                     Increased := False;
               end case;
            end if;
         else
            --  We need to cope with the case where elements _compare_
            --  equal but their non-VCAST_MCDC_Statement_Ptr data content has changed.
            Node.Element := Element;
            Inserted := False;
         end if;
      end if;
   end Search_Insert;

   procedure Balance_Left (Node : in out AVL_Node_Ref;
                           Decreased : in out Boolean) is
      P1, P2 : AVL_Node_Ref;
      Balance1, Balance2 : Node_Balance;
   begin
      case Node.Balance is
         when Left =>
            Node.Balance := Middle;
         when Middle =>
            Node.Balance := Right;
            Decreased := False;
         when Right =>
            P1 := Node.Right;
            Balance1 := P1.Balance;
            if Balance1 >= Middle then
               Node.Right := P1.Left;
               P1.Left := Node;
               if Balance1 = Middle then
                  Node.Balance := Right;
                  P1.Balance := Left;
                  Decreased := False;
               else
                  Node.Balance := Middle;
                  P1.Balance := Middle;
               end if;
               Node := P1;
            else
               P2 := P1.Left;
               Balance2 := P2.Balance;
               P1.Left := P2.Right;
               P2.Right := P1;
               Node.Right := P2.Left;
               P2.Left := Node;
               if Balance2 = Right then
                  Node.Balance := Left;
               else
                  Node.Balance := Middle;
               end if;
               if Balance2 = Left then
                  P1.Balance := Right;
               else
                  P1.Balance := Middle;
               end if;
               Node := P2;
               P2.Balance := Middle;
            end if;
      end case;
   end Balance_Left;

   procedure Balance_Right (Node : in out AVL_Node_Ref;
                            Decreased : in out Boolean)  is
      P1, P2 : AVL_Node_Ref;
      Balance1, Balance2 : Node_Balance;
   begin
      case Node.Balance is
         when Right =>
            Node.Balance := Middle;
         when Middle =>
            Node.Balance := Left;
            Decreased := False;
         when Left =>
            P1 := Node.Left;
            Balance1 := P1.Balance;
            if Balance1 <= Middle then
               Node.Left := P1.Right;
               P1.Right := Node;
               if Balance1 = Middle then
                  Node.Balance := Left;
                  P1.Balance := Right;
                  Decreased := False;
               else
                  Node.Balance := Middle;
                  P1.Balance := Middle;
               end if;
               Node := P1;
            else
               P2 := P1.Right;
               Balance2 := P2.Balance;
               P1.Right := P2.Left;
               P2.Left := P1;
               Node.Left := P2.Right;
               P2.Right := Node;
               if Balance2 = Left then
                  Node.Balance := Right;
               else
                  Node.Balance := Middle;
               end if;
               if Balance2 = Right then
                  P1.Balance := Left;
               else
                  P1.Balance := Middle;
               end if;
               Node := P2;
               P2.Balance := Middle;
            end if;
      end case;
   end Balance_Right;

   function Search (
      T : AVL_Tree;
      Element : VCAST_MCDC_Statement_Ptr;
      Node : AVL_Node_Ref) return Boolean is
      VAL : integer;
   begin
      if Node /= null then
         VAL := VCAST_MCDC_Statement_Is_Equal ( Node.Element, Element );
         if VAL = 0 then
            return True;
         elsif VAL = 1 then
            return Search (T, Element, Node.Left);
         else
            return Search (T, Element, Node.Right);
         end if;
      else
         return False;
      end if;
   end Search;

   --  end supporting functions

   procedure Insert (T : in out AVL_Tree;
                     Element : VCAST_MCDC_Statement_Ptr;
                     Not_Found : out Boolean) is
      Increased : Boolean := False;
      Result : Boolean;
   begin
      Search_Insert (T, Element, T.Rep, Increased, Result);
      if Result then
         T.Size := T.Size + 1;
         Not_Found := True;
      else
         Not_Found := False;
      end if;
   end Insert;

   function Extent (T : in AVL_Tree) return Natural is
   begin
      return T.Size;
   end Extent;

   function Is_Null (T : in AVL_Tree) return Boolean is
   begin
      return T.Rep = null;
   end Is_Null;

   function Is_Member (
      T : in AVL_Tree;
      Element : VCAST_MCDC_Statement_Ptr) return Boolean is
   begin
      return Search (T, Element, T.Rep);
   end Is_Member;

   procedure Access_Actual_VCAST_MCDC_Statement_Ptr (
      Node : in      AVL_Node_Ref;
      K    : in      VCAST_MCDC_Statement_Ptr;
      Elem :    out  VCAST_MCDC_Statement_Ptr;
      Found: in out  Boolean) is
      VAL : integer;
   begin
      if Found then
         return;
      end if;

      if Node /= null then
         VAL := VCAST_MCDC_Statement_Is_Equal (Node.Element, K );
         if VAL = 0 then
            Found := True;
            Elem := Node.Element;
         elsif VAL = 1 then
            Access_Actual_VCAST_MCDC_Statement_Ptr ( Node.Left, K, Elem, Found);
         else
            Access_Actual_VCAST_MCDC_Statement_Ptr ( Node.Right, K, Elem, Found);
         end if;
      end if;
   end Access_Actual_VCAST_MCDC_Statement_Ptr;

   procedure Find (
      In_The_Tree : in     AVL_Tree;
      K           : in     VCAST_MCDC_Statement_Ptr;
      Elem        :    out VCAST_MCDC_Statement_Ptr;
      Found       :    out Boolean) is
      Found_Result : Boolean := False;
   begin
      Access_Actual_VCAST_MCDC_Statement_Ptr (In_The_Tree.Rep, K, Elem, Found_Result);
      Found := Found_Result;
   end Find;

   function address_to_mcdc_statement is new
     unchecked_conversion (system.address, VCAST_MCDC_Statement_Ptr);
   function address_to_subprogram_coverage is new
     unchecked_conversion (system.address, VCAST_Subprogram_Coverage_Ptr);
   function address_to_statement_coverage is new
     unchecked_conversion (system.address, VCAST_Statement_Coverage_Ptr);
   function address_to_branch_coverage is new
     unchecked_conversion (system.address, VCAST_Branch_Coverage_Ptr);
   function address_to_mcdc_coverage is new
     unchecked_conversion (system.address, VCAST_MCDC_Coverage_Ptr);
   function address_to_STATEMENT_MCDC_coverage is new
     unchecked_conversion (system.address, VCAST_STATEMENT_MCDC_Coverage_Ptr);
   function address_to_STATEMENT_BRANCH_coverage is new
     unchecked_conversion (system.address, VCAST_STATEMENT_BRANCH_Coverage_Ptr);

   function ADDRESS_TO_AVL_TREE_PTR is new
            UNCHECKED_CONVERSION ( SYSTEM.ADDRESS, VCAST_AVL_TYPE_PTR );

   function ADDRESS_TO_VCAST_BITS_TYPE is new
            UNCHECKED_CONVERSION ( SYSTEM.ADDRESS, VCAST_BITS_TYPE_PTR );

   function ADDRESS_TO_COVERAGE_PTR is new
            UNCHECKED_CONVERSION ( SYSTEM.ADDRESS, VCAST_SUBPROGRAM_COVERAGE_PTR);

   procedure SAVE_STATEMENT_REALTIME(
     Coverage  : in System.Address;
     Statement : in integer) is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     Statement_Coverage_Ptr : VCAST_Statement_Coverage_Ptr :=
       address_to_statement_coverage (Subprogram_Coverage.Coverage_Ptr);
     VCAST_Bits : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Statement_Coverage_Ptr.Coverage_Bits);
   begin
     if VCAST_Bits (STATEMENT) = false then
        VCAST_Bits (STATEMENT) := true;
        WRITE_TO_INST_FILE (
           INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
           INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
           INTEGER_TIC_IMAGE (Statement+1));
     end if;
   end SAVE_STATEMENT_REALTIME;

   procedure SAVE_STATEMENT_STATEMENT_MCDC_REALTIME(
     Coverage  : in System.Address;
     Statement : in integer) is

     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     SM_Coverage : VCAST_STATEMENT_MCDC_Coverage_Ptr :=
       address_to_STATEMENT_MCDC_coverage (Subprogram_Coverage.Coverage_Ptr);
     Statement_Coverage_Ptr : VCAST_Statement_Coverage_Ptr :=
       address_to_statement_coverage (SM_Coverage.Statement_Coverage);
     VCAST_Bits : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Statement_Coverage_Ptr.Coverage_Bits);
   begin
     if VCAST_Bits (STATEMENT) = false then
        VCAST_Bits (STATEMENT) := true;
        WRITE_TO_INST_FILE (
           INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
           INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
           INTEGER_TIC_IMAGE (Statement+1));
     end if;
   end SAVE_STATEMENT_STATEMENT_MCDC_REALTIME;

   procedure SAVE_STATEMENT_STATEMENT_BRANCH_REALTIME(
     Coverage  : in System.Address;
     Statement : in integer) is

     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     SB_Coverage : VCAST_STATEMENT_BRANCH_Coverage_Ptr :=
       address_to_STATEMENT_BRANCH_coverage (Subprogram_Coverage.Coverage_Ptr);
     Statement_Coverage_Ptr : VCAST_Statement_Coverage_Ptr :=
       address_to_statement_coverage (SB_Coverage.Statement_Coverage);
     VCAST_Bits : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Statement_Coverage_Ptr.Coverage_Bits);
   begin
     if VCAST_Bits (STATEMENT) = false then
        VCAST_Bits (STATEMENT) := true;
        WRITE_TO_INST_FILE (
           INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
           INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
           INTEGER_TIC_IMAGE (Statement+1));
     end if;
   end SAVE_STATEMENT_STATEMENT_BRANCH_REALTIME;

   function SAVE_BRANCH_CONDITION_REALTIME (
     Coverage  : in System.Address;
     Statement : in integer;
     CONDITION : in boolean)
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     Branch_Coverage_Ptr : VCAST_Branch_Coverage_Ptr :=
       address_to_branch_coverage (Subprogram_Coverage.Coverage_Ptr);
     VCAST_Bits_True : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Branch_Coverage_Ptr.Branch_Bits_True);
     VCAST_Bits_False : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Branch_Coverage_Ptr.Branch_Bits_False);
     VCAST_IO : string(1..1) := " ";
   begin
     if Condition and then VCAST_BITS_TRUE (Statement) = false then
       VCAST_BITS_TRUE (Statement) := true;
       VCAST_IO(1) := 'T';
     elsif not Condition and then VCAST_BITS_FALSE (Statement) = false then
       VCAST_BITS_FALSE (Statement) := true;
       VCAST_IO(1) := 'F';
     end if;

     if VCAST_IO(1) /= ' ' then
       WRITE_TO_INST_FILE (
          INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
          INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
          INTEGER_TIC_IMAGE (Statement) & " " & VCAST_IO);
     end if;
     return Condition;
   end SAVE_BRANCH_CONDITION_REALTIME;

   function SAVE_BRANCH_STATEMENT_BRANCH_CONDITION_REALTIME (
     Coverage  : in System.Address;
     Statement : in integer;
     CONDITION : in boolean)
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     SB_Coverage : VCAST_STATEMENT_BRANCH_Coverage_Ptr :=
       address_to_STATEMENT_BRANCH_coverage (Subprogram_Coverage.Coverage_Ptr);
     Branch_Coverage_Ptr : VCAST_Branch_Coverage_Ptr :=
       address_to_branch_coverage (SB_Coverage.Branch_Coverage);
     VCAST_Bits_True : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Branch_Coverage_Ptr.Branch_Bits_True);
     VCAST_Bits_False : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Branch_Coverage_Ptr.Branch_Bits_False);
     VCAST_IO : string(1..1) := " ";
   begin
     if Condition and then VCAST_BITS_TRUE (Statement) = false then
       VCAST_BITS_TRUE (Statement) := true;
       VCAST_IO(1) := 'T';
     elsif not Condition and then VCAST_BITS_FALSE (Statement) = false then
       VCAST_BITS_FALSE (Statement) := true;
       VCAST_IO(1) := 'F';
     end if;

     if VCAST_IO(1) /= ' ' then
       WRITE_TO_INST_FILE (
          INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
          INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
          INTEGER_TIC_IMAGE (Statement) & " " & VCAST_IO);
     end if;
     return Condition;
   end SAVE_BRANCH_STATEMENT_BRANCH_CONDITION_REALTIME;

   procedure SAVE_STATEMENT_ANIMATION(
     Coverage  : in System.Address;
     Statement : in integer) is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
   begin
     WRITE_TO_INST_FILE (
        INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
        INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
        INTEGER_TIC_IMAGE (Statement+1));
   end SAVE_STATEMENT_ANIMATION;

   procedure SAVE_STATEMENT_STATEMENT_MCDC_ANIMATION(
     Coverage  : in System.Address;
     Statement : in integer) is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
        address_to_subprogram_coverage (Coverage);
   begin
     WRITE_TO_INST_FILE (
        INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
        INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
        INTEGER_TIC_IMAGE (Statement+1));
   end SAVE_STATEMENT_STATEMENT_MCDC_ANIMATION;

   procedure SAVE_STATEMENT_STATEMENT_BRANCH_ANIMATION(
     Coverage  : in System.Address;
     Statement : in integer) is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
        address_to_subprogram_coverage (Coverage);
   begin
     WRITE_TO_INST_FILE (
        INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
        INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
        INTEGER_TIC_IMAGE (Statement+1));
   end SAVE_STATEMENT_STATEMENT_BRANCH_ANIMATION;

   function SAVE_BRANCH_CONDITION_ANIMATION (
     Coverage  : in System.Address;
     Statement : in integer;
     CONDITION : in boolean;
     ON_PATH   : in boolean )
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
        address_to_subprogram_coverage (Coverage);
     VCAST_IO : string(1..2) := "  ";
   begin
     if Condition then
       VCAST_IO(1) := 'T';
     else
       VCAST_IO(1) := 'F';
     end if;

     if not ON_PATH then
       VCAST_IO(2) := 'X';
     end if;

     if VCAST_IO(1) /= ' ' then
       WRITE_TO_INST_FILE (
          INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
          INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
          INTEGER_TIC_IMAGE (Statement) & " " & VCAST_IO);
     end if;
     return Condition;
   end SAVE_BRANCH_CONDITION_ANIMATION;

   function SAVE_BRANCH_STATEMENT_BRANCH_CONDITION_ANIMATION (
      Coverage  : in System.Address;
      Statement : in integer;
      CONDITION : in boolean)
      return boolean is
      Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
         address_to_subprogram_coverage (Coverage);
      VCAST_IO : string(1..1) := " ";
   begin
     if Condition then
       VCAST_IO(1) := 'T';
     else
       VCAST_IO(1) := 'F';
     end if;

     if VCAST_IO(1) /= ' ' then
       WRITE_TO_INST_FILE (
          INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
          INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
          INTEGER_TIC_IMAGE (Statement) & " " & VCAST_IO);
     end if;
     return Condition;
   end SAVE_BRANCH_STATEMENT_BRANCH_CONDITION_ANIMATION;

   function SAVE_BRANCH_CONDITION_BUFFERED (
     Coverage  : in System.Address;
     Statement : in integer;
     CONDITION : in boolean)
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     Branch_Coverage_Ptr : VCAST_Branch_Coverage_Ptr :=
       address_to_branch_coverage (Subprogram_Coverage.Coverage_Ptr);
     VCAST_Bits_True : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Branch_Coverage_Ptr.Branch_Bits_True);
     VCAST_Bits_False : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Branch_Coverage_Ptr.Branch_Bits_False);
   begin
     if Condition and then VCAST_BITS_TRUE (Statement) = false then
       VCAST_BITS_TRUE (Statement) := true;
     elsif not Condition and then VCAST_BITS_FALSE (Statement) = false then
       VCAST_BITS_FALSE (Statement) := true;
     end if;
     return Condition;
   end SAVE_BRANCH_CONDITION_BUFFERED;

   function SAVE_BRANCH_STATEMENT_BRANCH_CONDITION_BUFFERED (
     Coverage  : in System.Address;
     Statement : in integer;
     CONDITION : in boolean)
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     SB_Coverage : VCAST_STATEMENT_BRANCH_Coverage_Ptr :=
       address_to_STATEMENT_BRANCH_coverage (Subprogram_Coverage.Coverage_Ptr);
     Branch_Coverage_Ptr : VCAST_Branch_Coverage_Ptr :=
       address_to_branch_coverage (SB_Coverage.Branch_Coverage);
     VCAST_Bits_True : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Branch_Coverage_Ptr.Branch_Bits_True);
     VCAST_Bits_False : VCAST_BITS_TYPE_PTR :=
       address_to_vcast_bits_type (Branch_Coverage_Ptr.Branch_Bits_False);
   begin
     if Condition and then VCAST_BITS_TRUE (Statement) = false then
       VCAST_BITS_TRUE (Statement) := true;
     elsif not Condition and then VCAST_BITS_FALSE (Statement) = false then
       VCAST_BITS_FALSE (Statement) := true;
     end if;
     return Condition;
   end SAVE_BRANCH_STATEMENT_BRANCH_CONDITION_BUFFERED;

   function SAVE_MCDC_SUBCONDITION (
     MCDC_Statement: in System.Address;
     BIT           : in integer;
     CONDITION     : in boolean)
     return boolean is
     MCDC_Statement_Ptr : VCAST_MCDC_Statement_Ptr :=
       address_to_mcdc_statement (MCDC_Statement);
   begin
     -- If this is a sub-condition for an MCDC expression, just record the bit
     if Condition then
       MCDC_Statement_Ptr.MCDC_BITS(BIT+1) := true;
     end if;
     MCDC_Statement_Ptr.MCDC_Bits_Used(BIT+1) := true;

     return CONDITION;
   end SAVE_MCDC_SUBCONDITION;

   function SAVE_MCDC_STATEMENT_MCDC_SUBCONDITION (
     MCDC_Statement: in System.Address;
     BIT           : in integer;
     CONDITION     : in boolean)
     return boolean is
     MCDC_Statement_Ptr : VCAST_MCDC_Statement_Ptr :=
       address_to_mcdc_statement (MCDC_Statement);
   begin
     -- If this is a sub-condition for an MCDC expression, just record the bit
     if Condition then
       MCDC_Statement_Ptr.MCDC_BITS(BIT+1) := true;
     end if;
     MCDC_Statement_Ptr.MCDC_Bits_Used(BIT+1) := true;

     return CONDITION;
   end SAVE_MCDC_STATEMENT_MCDC_SUBCONDITION;

   function SAVE_MCDC_CONDITION_REALTIME (
     Coverage      : in System.Address;
     MCDC_Statement: in System.Address;
     Statement     : in integer;
     CONDITION     : in boolean)
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     MCDC_Statement_Ptr : VCAST_MCDC_Statement_Ptr :=
       address_to_mcdc_statement (MCDC_Statement);
     MCDC_Coverage : VCAST_MCDC_Coverage_Ptr :=
       address_to_mcdc_coverage (Subprogram_Coverage.Coverage_Ptr);
     AVL_TYPE_PTR : VCAST_AVL_TYPE_PTR :=
       address_to_avl_tree_ptr (MCDC_Coverage.AVL_Trees);
   begin
     -- Store the total expression
     if Condition then
       MCDC_Statement_Ptr.MCDC_BITS(1) := true;
     end if;
     MCDC_Statement_Ptr.MCDC_Bits_Used(1) := true;

     if not Is_Member (AVL_TYPE_PTR(Statement), MCDC_Statement_Ptr) then
       declare
         New_MCDC_Statement : VCAST_MCDC_Statement_Ptr := Get_MCDC_Statement;
         found : boolean;
       begin
         if New_MCDC_Statement = null then
           return Condition;
         end if;
         New_MCDC_Statement.all := MCDC_Statement_Ptr.all;
         Insert (AVL_TYPE_PTR(Statement), New_MCDC_Statement, found);
         WRITE_TO_INST_FILE (
            INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
            INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
            INTEGER_TIC_IMAGE (Statement) &
            UNSIGNED_32_TIC_IMAGE (BIT_ARRAY_MCDC_TO_INT (MCDC_Statement_Ptr.MCDC_BITS)) &
            UNSIGNED_32_TIC_IMAGE (BIT_ARRAY_MCDC_TO_INT (MCDC_Statement_Ptr.MCDC_BITS_USED)));
       end;
     end if;

     MCDC_Statement_Ptr.MCDC_BITS := (others => false);
     MCDC_Statement_Ptr.MCDC_Bits_Used := (others => false);

     return Condition;
   end SAVE_MCDC_CONDITION_REALTIME;

   function SAVE_MCDC_STATEMENT_MCDC_CONDITION_REALTIME (
     Coverage      : in System.Address;
     MCDC_Statement: in System.Address;
     Statement     : in integer;
     CONDITION     : in boolean)
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     SM_Coverage : VCAST_STATEMENT_MCDC_Coverage_Ptr :=
       address_to_STATEMENT_MCDC_coverage (Subprogram_Coverage.Coverage_Ptr);
     MCDC_Statement_Ptr : VCAST_MCDC_Statement_Ptr :=
       address_to_mcdc_statement (MCDC_Statement);
     MCDC_Coverage : VCAST_MCDC_Coverage_Ptr :=
       address_to_mcdc_coverage (SM_Coverage.MCDC_Coverage);
     AVL_TYPE_PTR : VCAST_AVL_TYPE_PTR :=
       address_to_avl_tree_ptr (MCDC_Coverage.AVL_Trees);
   begin
     -- Store the total expression
     if Condition then
       MCDC_Statement_Ptr.MCDC_BITS(1) := true;
     end if;
     MCDC_Statement_Ptr.MCDC_Bits_Used(1) := true;

     if not Is_Member (AVL_TYPE_PTR(Statement), MCDC_Statement_Ptr) then
       declare
         New_MCDC_Statement : VCAST_MCDC_Statement_Ptr := Get_MCDC_Statement;
         found : boolean;
       begin
         if New_MCDC_Statement = null then
           return Condition;
         end if;
         New_MCDC_Statement.all := MCDC_Statement_Ptr.all;
         Insert (AVL_TYPE_PTR(Statement), New_MCDC_Statement, found);
         WRITE_TO_INST_FILE (
            INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
            INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
            INTEGER_TIC_IMAGE (Statement) &
            UNSIGNED_32_TIC_IMAGE (BIT_ARRAY_MCDC_TO_INT (MCDC_Statement_Ptr.MCDC_BITS)) &
            UNSIGNED_32_TIC_IMAGE (BIT_ARRAY_MCDC_TO_INT (MCDC_Statement_Ptr.MCDC_BITS_USED)));
       end;
     end if;

     MCDC_Statement_Ptr.MCDC_BITS := (others => false);
     MCDC_Statement_Ptr.MCDC_Bits_Used := (others => false);

     return Condition;
   end SAVE_MCDC_STATEMENT_MCDC_CONDITION_REALTIME;

   function SAVE_MCDC_CONDITION_ANIMATION (
     Coverage      : in System.Address;
     MCDC_Statement: in System.Address;
     Statement     : in integer;
     CONDITION     : in boolean)
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     MCDC_Statement_Ptr : VCAST_MCDC_Statement_Ptr :=
       address_to_mcdc_statement (MCDC_Statement);
   begin
     -- Store the total expression
     if Condition then
       MCDC_Statement_Ptr.MCDC_BITS(1) := true;
     end if;
     MCDC_Statement_Ptr.MCDC_Bits_Used(1) := true;


     WRITE_TO_INST_FILE (
        INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
        INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
        INTEGER_TIC_IMAGE (Statement) &
        UNSIGNED_32_TIC_IMAGE (BIT_ARRAY_MCDC_TO_INT (MCDC_Statement_Ptr.MCDC_BITS)) &
        UNSIGNED_32_TIC_IMAGE (BIT_ARRAY_MCDC_TO_INT (MCDC_Statement_Ptr.MCDC_BITS_USED)));

     MCDC_Statement_Ptr.MCDC_BITS := (others => false);
     MCDC_Statement_Ptr.MCDC_Bits_Used := (others => false);

     return Condition;
   end SAVE_MCDC_CONDITION_ANIMATION;

   function SAVE_MCDC_STATEMENT_MCDC_CONDITION_ANIMATION (
     Coverage      : in System.Address;
     MCDC_Statement: in System.Address;
     Statement     : in integer;
     CONDITION     : in boolean)
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     MCDC_Statement_Ptr : VCAST_MCDC_Statement_Ptr :=
       address_to_mcdc_statement (MCDC_Statement);
   begin
     -- Store the total expression
     if Condition then
       MCDC_Statement_Ptr.MCDC_BITS(1) := true;
     end if;
     MCDC_Statement_Ptr.MCDC_Bits_Used(1) := true;


     WRITE_TO_INST_FILE (
        INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
        INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
        INTEGER_TIC_IMAGE (Statement) &
        UNSIGNED_32_TIC_IMAGE (BIT_ARRAY_MCDC_TO_INT (MCDC_Statement_Ptr.MCDC_BITS)) &
        UNSIGNED_32_TIC_IMAGE (BIT_ARRAY_MCDC_TO_INT (MCDC_Statement_Ptr.MCDC_BITS_USED)));

     MCDC_Statement_Ptr.MCDC_BITS := (others => false);
     MCDC_Statement_Ptr.MCDC_Bits_Used := (others => false);

     return Condition;
   end SAVE_MCDC_STATEMENT_MCDC_CONDITION_ANIMATION;

   function SAVE_MCDC_CONDITION_BUFFERED (
     Coverage      : in System.Address;
     MCDC_Statement: in System.Address;
     Statement     : in integer;
     CONDITION     : in boolean)
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     MCDC_Statement_Ptr : VCAST_MCDC_Statement_Ptr :=
       address_to_mcdc_statement (MCDC_Statement);
     MCDC_Coverage : VCAST_MCDC_Coverage_Ptr :=
       address_to_mcdc_coverage (Subprogram_Coverage.Coverage_Ptr);
     AVL_TYPE_PTR : VCAST_AVL_TYPE_PTR :=
       address_to_avl_tree_ptr (MCDC_Coverage.AVL_Trees);
   begin
     -- Store the total expression
     if Condition then
       MCDC_Statement_Ptr.MCDC_BITS(1) := true;
     end if;
     MCDC_Statement_Ptr.MCDC_Bits_Used(1) := true;

     if not Is_Member (AVL_TYPE_PTR(Statement), MCDC_Statement_Ptr) then
       declare
         New_MCDC_Statement : VCAST_MCDC_Statement_Ptr := Get_MCDC_Statement;
         found : boolean;
       begin
         if New_MCDC_Statement = null then
           return Condition;
         end if;
         New_MCDC_Statement.all := MCDC_Statement_Ptr.all;
         Insert (AVL_TYPE_PTR(Statement), New_MCDC_Statement, found);
       end;
     end if;

     MCDC_Statement_Ptr.MCDC_BITS := (others => false);
     MCDC_Statement_Ptr.MCDC_Bits_Used := (others => false);

     return Condition;
   end SAVE_MCDC_CONDITION_BUFFERED;

   function SAVE_MCDC_STATEMENT_MCDC_CONDITION_BUFFERED (
     Coverage      : in System.Address;
     MCDC_Statement: in System.Address;
     Statement     : in integer;
     CONDITION     : in boolean)
     return boolean is
     Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr :=
       address_to_subprogram_coverage (Coverage);
     SM_Coverage : VCAST_STATEMENT_MCDC_Coverage_Ptr :=
       address_to_STATEMENT_MCDC_coverage (Subprogram_Coverage.Coverage_Ptr);
     MCDC_Statement_Ptr : VCAST_MCDC_Statement_Ptr :=
       address_to_mcdc_statement (MCDC_Statement);
     MCDC_Coverage : VCAST_MCDC_Coverage_Ptr :=
       address_to_mcdc_coverage (SM_Coverage.MCDC_Coverage);
     AVL_TYPE_PTR : VCAST_AVL_TYPE_PTR :=
       address_to_avl_tree_ptr (MCDC_Coverage.AVL_Trees);
   begin
     -- Store the total expression
     if Condition then
       MCDC_Statement_Ptr.MCDC_BITS(1) := true;
     end if;
     MCDC_Statement_Ptr.MCDC_Bits_Used(1) := true;

     if not Is_Member (AVL_TYPE_PTR(Statement), MCDC_Statement_Ptr) then
       declare
         New_MCDC_Statement : VCAST_MCDC_Statement_Ptr := Get_MCDC_Statement;
         found : boolean;
       begin
         if New_MCDC_Statement = null then
           return Condition;
         end if;
         New_MCDC_Statement.all := MCDC_Statement_Ptr.all;
         Insert (AVL_TYPE_PTR(Statement), New_MCDC_Statement, found);
       end;
     end if;

     MCDC_Statement_Ptr.MCDC_BITS := (others => false);
     MCDC_Statement_Ptr.MCDC_Bits_Used := (others => false);

     return Condition;
   end SAVE_MCDC_STATEMENT_MCDC_CONDITION_BUFFERED;

   procedure VCAST_Append_Subprog_List_Ptr (Coverage : System.Address) is
     VCAST_New : VCAST_Subprog_List_Ptr;
   begin
     if VCAST_Ada_Options.VCAST_USE_STATIC_MEMORY then
       VCAST_Subprogram_Coverage_Array_Obj(VCAST_Subprogram_Coverage_Array_Pos) :=
         address_to_coverage_ptr (Coverage);
       VCAST_Subprogram_Coverage_Array_Pos := VCAST_Subprogram_Coverage_Array_Pos + 1;
     else
       VCAST_New := new VCAST_Subprog_List;
       VCAST_New.VCAST_Data := address_to_coverage_ptr (Coverage);
       VCAST_New.VCAST_NExt := null;
       if VCAST_Subprog_Root = null then
         VCAST_Subprog_Root := VCAST_New;
         VCAST_Subprog_Cur := VCAST_New;
       else
         VCAST_Subprog_Cur.VCAST_Next := VCAST_New;
         VCAST_Subprog_Cur := VCAST_Subprog_Cur.VCAST_Next;
       end if;
     end if;
   end VCAST_Append_Subprog_List_Ptr;

   procedure VCAST_REGISTER_SUBPROGRAM (
     Coverage  : in System.Address) is
   begin
     if VCAST_Ada_Options.VCAST_USE_STATIC_MEMORY then
      if VCAST_Subprogram_Coverage_Array_Pos > VCAST_Ada_Options.VCAST_MAX_COVERED_SUBPROGRAMS then
         if VCAST_Max_Covered_Subprograms_Exceeded = false then
            WRITE_TO_INST_FILE ("VCAST_MAX_COVERED_SUBPROGRAMS exceeded!");
            VCAST_Max_Covered_Subprograms_Exceeded := true;
         end if;
      else
         VCAST_Subprogram_Coverage_Array_Obj(VCAST_Subprogram_Coverage_Array_Pos) :=
            address_to_coverage_ptr (Coverage);
         VCAST_Subprogram_Coverage_Array_Pos := VCAST_Subprogram_Coverage_Array_Pos + 1;
      end if;
     else
       VCAST_Append_Subprog_List_Ptr (Coverage);
     end if;
   end VCAST_REGISTER_SUBPROGRAM;

   procedure VCAST_DUMP_STATEMENT_COVERAGE (Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr) is
     Statement_Coverage_Ptr : VCAST_Statement_Coverage_Ptr;
   begin
     if Subprogram_Coverage.Coverage_Kind = VCAST_COVERAGE_STATEMENT then
       Statement_Coverage_Ptr :=
         address_to_statement_coverage (Subprogram_Coverage.Coverage_Ptr);
     elsif Subprogram_Coverage.Coverage_Kind = VCAST_COVERAGE_STATEMENT_MCDC then
       declare
         SM_Coverage : VCAST_STATEMENT_MCDC_Coverage_Ptr :=
           address_to_STATEMENT_MCDC_coverage (Subprogram_Coverage.Coverage_Ptr);
       begin
          Statement_Coverage_Ptr :=
            address_to_statement_coverage (SM_Coverage.Statement_Coverage);
       end;
     elsif Subprogram_Coverage.Coverage_Kind = VCAST_COVERAGE_STATEMENT_BRANCH then
       declare
         SB_Coverage : VCAST_STATEMENT_BRANCH_Coverage_Ptr :=
           address_to_STATEMENT_BRANCH_coverage (Subprogram_Coverage.Coverage_Ptr);
       begin
          Statement_Coverage_Ptr :=
            address_to_statement_coverage (SB_Coverage.Statement_Coverage);
       end;
     end if;

     declare
       VCAST_Bits : VCAST_BITS_TYPE_PTR :=
         address_to_vcast_bits_type (Statement_Coverage_Ptr.Coverage_Bits);
     begin
       for I in 0 .. Subprogram_Coverage.VCAST_Num_Statement_Statements-1 loop
         if VCAST_Bits (I) = true then
            WRITE_TO_INST_FILE (
               INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
               INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
               INTEGER_TIC_IMAGE (I+1));
         end if;
       end loop;
     end;
   end VCAST_DUMP_STATEMENT_COVERAGE;

   procedure VCAST_DUMP_BRANCH_COVERAGE (Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr) is
     Branch_Coverage_Ptr : VCAST_Branch_Coverage_Ptr;
   begin
     if Subprogram_Coverage.Coverage_Kind = VCAST_COVERAGE_BRANCH then
         Branch_Coverage_Ptr :=
           address_to_branch_coverage (Subprogram_Coverage.Coverage_Ptr);
     elsif Subprogram_Coverage.Coverage_Kind = VCAST_COVERAGE_STATEMENT_BRANCH then
       declare
         SB_Coverage : VCAST_STATEMENT_BRANCH_Coverage_Ptr :=
           address_to_STATEMENT_BRANCH_coverage (Subprogram_Coverage.Coverage_Ptr);
       begin
         Branch_Coverage_Ptr :=
           address_to_branch_coverage (SB_Coverage.Branch_Coverage);
       end;
     end if;

     declare
       VCAST_Bits_True : VCAST_BITS_TYPE_PTR :=
         address_to_vcast_bits_type (Branch_Coverage_Ptr.Branch_Bits_True);
       VCAST_Bits_False : VCAST_BITS_TYPE_PTR :=
         address_to_vcast_bits_type (Branch_Coverage_Ptr.Branch_Bits_False);
     begin
       for I in 0 .. Subprogram_Coverage.VCAST_Num_Statement_Statements-1 loop
         if VCAST_BITS_TRUE (I) = true then
           WRITE_TO_INST_FILE (
              INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
              INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
              INTEGER_TIC_IMAGE (I) & " T");
         end if;

         if VCAST_BITS_FALSE (I) = true then
           WRITE_TO_INST_FILE (
              INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
              INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
              INTEGER_TIC_IMAGE (I) & " F");
         end if;
       end loop;
     end;
   end VCAST_DUMP_BRANCH_COVERAGE;

   procedure VCAST_DUMP_MCDC_COVERAGE (Subprogram_Coverage : VCAST_Subprogram_Coverage_Ptr) is
     AVL_TYPE_PTR : VCAST_AVL_TYPE_PTR;
     Statement : integer := 0;
     procedure VCAST_DUMP_MCDC_STATEMENT (Item : in     VCAST_MCDC_Statement_Ptr;
                                          OK   :    out Boolean) is
     begin
       OK := true;
       WRITE_TO_INST_FILE (
         INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Unit_ID) & " " &
         INTEGER_TIC_IMAGE (Subprogram_Coverage.VCAST_Subprogram_ID) & " " &
         INTEGER_TIC_IMAGE (Statement) &
         UNSIGNED_32_TIC_IMAGE (BIT_ARRAY_MCDC_TO_INT (Item.MCDC_BITS)) &
         UNSIGNED_32_TIC_IMAGE (BIT_ARRAY_MCDC_TO_INT (Item.MCDC_BITS_USED)));
     end VCAST_DUMP_MCDC_STATEMENT;

     procedure VCAST_DUMP_MCDC_STATEMENTS (Over_The_Tree : AVL_Tree) is
        Continue : Boolean := True;
        procedure Visit (Node : AVL_Node_Ref);
        procedure Visit (Node : AVL_Node_Ref) is
        begin
           if Node /= null then
              Visit (Node.Left);
              if not Continue then
                 return;
              end if;
              VCAST_DUMP_MCDC_STATEMENT (Node.Element, Continue);
              if not Continue then
                 return;
              end if;
              Visit (Node.Right);
           end if;
        end Visit;
     begin
        Visit (Over_The_Tree.Rep);
     end VCAST_DUMP_MCDC_STATEMENTS;
   begin
     if Subprogram_Coverage.Coverage_Kind = VCAST_COVERAGE_MCDC then
       declare
         MCDC_Coverage : VCAST_MCDC_Coverage_Ptr :=
           address_to_mcdc_coverage (Subprogram_Coverage.Coverage_Ptr);
       begin
         AVL_TYPE_PTR := address_to_avl_tree_ptr (MCDC_Coverage.AVL_Trees);
       end;
     elsif Subprogram_Coverage.Coverage_Kind = VCAST_COVERAGE_STATEMENT_MCDC then
       declare
         SM_Coverage : VCAST_STATEMENT_MCDC_Coverage_Ptr :=
           address_to_STATEMENT_MCDC_coverage (Subprogram_Coverage.Coverage_Ptr);
         MCDC_Coverage : VCAST_MCDC_Coverage_Ptr :=
            address_to_mcdc_coverage (SM_Coverage.MCDC_Coverage);
       begin
         AVL_TYPE_PTR := address_to_avl_tree_ptr (MCDC_Coverage.AVL_Trees);
       end;
     end if;

     -- Walk the tree and output the data
     for I in 0 .. Subprogram_Coverage.VCAST_Num_Statement_Statements-1 loop
       Statement := I;
       VCAST_DUMP_MCDC_STATEMENTS (AVL_TYPE_PTR (Statement));
     end loop;
   end VCAST_DUMP_MCDC_COVERAGE;

   procedure VCAST_DUMP_COVERAGE_DATA is
     Ptr : VCAST_Subprogram_Coverage_Ptr;
     Cur : VCAST_Subprog_List_Ptr;
   begin
     if VCAST_Ada_Options.VCAST_USE_STATIC_MEMORY then
       for I in 1..VCAST_Subprogram_Coverage_Array_Pos-1 loop
         Ptr := VCAST_Subprogram_Coverage_Array_Obj(I);
         case Ptr.Coverage_Kind is
           when VCAST_COVERAGE_STATEMENT =>
             VCAST_DUMP_STATEMENT_COVERAGE (Ptr);
           when VCAST_COVERAGE_BRANCH =>
             VCAST_DUMP_BRANCH_COVERAGE (Ptr);
           when VCAST_COVERAGE_MCDC =>
             VCAST_DUMP_MCDC_COVERAGE (Ptr);
           when VCAST_COVERAGE_STATEMENT_MCDC =>
             VCAST_DUMP_STATEMENT_COVERAGE (Ptr);
             VCAST_DUMP_MCDC_COVERAGE (Ptr);
           when VCAST_COVERAGE_STATEMENT_BRANCH =>
             VCAST_DUMP_STATEMENT_COVERAGE (Ptr);
             VCAST_DUMP_BRANCH_COVERAGE (Ptr);
         end case;
       end loop;
     else
       Cur := VCAST_Subprog_Root;
       while Cur /= null loop
         Ptr := Cur.VCAST_Data;
         case Ptr.Coverage_Kind is
           when VCAST_COVERAGE_STATEMENT =>
             VCAST_DUMP_STATEMENT_COVERAGE (Ptr);
           when VCAST_COVERAGE_BRANCH =>
             VCAST_DUMP_BRANCH_COVERAGE (Ptr);
           when VCAST_COVERAGE_MCDC =>
             VCAST_DUMP_MCDC_COVERAGE (Ptr);
           when VCAST_COVERAGE_STATEMENT_MCDC =>
             VCAST_DUMP_STATEMENT_COVERAGE (Ptr);
             VCAST_DUMP_MCDC_COVERAGE (Ptr);
           when VCAST_COVERAGE_STATEMENT_BRANCH =>
             VCAST_DUMP_STATEMENT_COVERAGE (Ptr);
             VCAST_DUMP_BRANCH_COVERAGE (Ptr);
         end case;
         Cur := Cur.VCAST_Next;
       end loop;
     end if;
   end VCAST_DUMP_COVERAGE_DATA;

   function INTEGER_TIC_IMAGE (THE_INTEGER : integer)
      return vcast_string is
   begin
      return integer'image (THE_INTEGER);
   end INTEGER_TIC_IMAGE;

   function UNSIGNED_32_TIC_IMAGE (THE_UNSIGNED_32 : UNSIGNED_32)
      return vcast_string is
   begin
      return Unsigned_32'image (THE_UNSIGNED_32);
   end UNSIGNED_32_TIC_IMAGE;

end VCAST_COVER_IO;
