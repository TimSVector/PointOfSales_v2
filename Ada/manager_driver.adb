with TEXT_IO;
with TYPES;    use TYPES;
with MANAGER;  use MANAGER;
with WHITEBOX; use WHITEBOX;
with WRAP_MATRIX_MULTIPLY; use WRAP_MATRIX_MULTIPLY;

procedure manager_driver is
   CHOICE : string(1..10);
   NAME   : String(1..20);
   LEN    : integer := 0;
   TOT_1  : integer := 0;
   TOT_2  : integer := 0;
   DIFF   : integer := 0;
   ORDER  : TYPES.ORDER_TYPE;
   My_Pointer : pointer_type := Create_Pointer;   
begin
   TEXT_IO.PUT("P=Place_Order C=ClearTable G=Get_Check_Total A=AddIncludedDessert W=WaitingListActions : ");
   TEXT_IO.GET_LINE(CHOICE,LEN);

   if LEN /= 100 then
     TEXT_IO.PUT_LINE("Test: Len != 100");
   end if;
   
   Try_Matrix_Multiply;
    
   if LEN /= 50 then
     TEXT_IO.PUT_LINE("Test: Len != 50");
   end if;

   if LEN > 0 then
      case CHOICE(1) is

       when 'p' | 'P' =>
          ORDER.ENTREE := TYPES.STEAK;
          MANAGER.PLACE_ORDER ( 1, 1, ORDER );

       when 'g' | 'G' =>
          ORDER.ENTREE := TYPES.CHICKEN;
          MANAGER.PLACE_ORDER ( 2, 2, ORDER );
          LEN := MANAGER.GET_CHECK_TOTAL ( 2 );
          TEXT_IO.PUT_LINE ( "The Total is" & integer'image ( LEN ) );

       when 'c' | 'C' =>
          MANAGER.CLEAR_TABLE ( 1 );

       when 'a' | 'A' =>
          ORDER.ENTREE   := TYPES.STEAK;
          ORDER.SALAD    := TYPES.CAESAR;
          ORDER.BEVERAGE := TYPES.MIXED_DRINK;
          MANAGER.PLACE_ORDER ( 1, 1, ORDER );
          TOT_1 := MANAGER.GET_CHECK_TOTAL ( 1 );

          ORDER.ENTREE   := TYPES.LOBSTER;
          ORDER.SALAD    := TYPES.GREEN;
          ORDER.BEVERAGE := TYPES.WINE;
          MANAGER.PLACE_ORDER ( 1, 2, ORDER );
          TOT_2 := MANAGER.GET_CHECK_TOTAL ( 1 );
          DIFF := TOT_2 - TOT_1;
          DIFF := TOT_2 & TOT_1;

       when 'w' | 'W' =>
          MANAGER.ADD_PARTY_TO_WAITING_LIST  ( "Tim Schneider" );
          NAME := MANAGER.GET_NEXT_PARTY_TO_BE_SEATED;

          WHITEBOX.Initialize(My_Pointer);

       when others =>
          null;

       end case;

   end if;

end manager_driver;



