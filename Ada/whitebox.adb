with TYPES; use TYPES;

package body WHITEBOX is

   type color is (red, green, blue);
   type day   is (monday, tuesday, wednesday, thursday);

   procedure init_day (val : day);

   procedure init_color (val : color);

   procedure my_ADD_INCLUDED_DESSERT (MYORDER : in out TYPES.ORDER_TYPE);

   current_day : day;
   current_color : color;

procedure initialize (pointer : in out pointer_type) is
   ORDER  : TYPES.ORDER_TYPE;
   TABLE_DATA : TYPES.TABLE_DATA_TYPE;

begin
  init_day (day'first);
  init_color (color'first);
  pointer.data_index := 1;
  pointer.data_value := 12;

  ORDER.ENTREE   := TYPES.STEAK;
  ORDER.SALAD    := TYPES.CAESAR;
  ORDER.BEVERAGE := TYPES.MIXED_DRINK;
  TABLE_DATA.IS_OCCUPIED := true;
  TABLE_DATA.NUMBER_IN_PARTY := TABLE_DATA.NUMBER_IN_PARTY + 1;
  TABLE_DATA.ORDER (3) := ORDER;
  MY_ADD_INCLUDED_DESSERT ( TABLE_DATA.ORDER(3) );

  ORDER.ENTREE   := TYPES.STEAK;
  ORDER.SALAD    := TYPES.CAESAR;
  ORDER.BEVERAGE := TYPES.WINE;
  TABLE_DATA.IS_OCCUPIED := true;
  TABLE_DATA.NUMBER_IN_PARTY := TABLE_DATA.NUMBER_IN_PARTY + 1;
  TABLE_DATA.ORDER (2) := ORDER;
  MY_ADD_INCLUDED_DESSERT ( TABLE_DATA.ORDER(2) );

  ORDER.ENTREE   := TYPES.LOBSTER;
  ORDER.SALAD    := TYPES.CAESAR;
  ORDER.BEVERAGE := TYPES.WINE;
  TABLE_DATA.IS_OCCUPIED := true;
  TABLE_DATA.NUMBER_IN_PARTY := TABLE_DATA.NUMBER_IN_PARTY + 1;
  MY_ADD_INCLUDED_DESSERT ( TABLE_DATA.ORDER(1) );

  
end initialize;




procedure MY_ADD_INCLUDED_DESSERT ( MYORDER : in out TYPES.ORDER_TYPE ) is
begin
  if MYORDER.ENTREE   = STEAK and
     MYORDER.SALAD    = CAESAR and
     MYORDER.BEVERAGE = MIXED_DRINK
  then
     MYORDER.DESSERT := PIE;
  elsif MYORDER.ENTREE   = LOBSTER and
        MYORDER.SALAD    = GREEN and
        MYORDER.BEVERAGE = WINE
  then
     MYORDER.DESSERT := CAKE;
  end if;
end my_ADD_INCLUDED_DESSERT;

procedure init_day (val : day) is
begin
  current_day := val;
end init_day;

procedure init_color (val : color) is
begin
  current_color := val;
end init_color;

function Create_Pointer return Pointer_Type is
begin
   return (Data_Index => 0, Data_Value => 0);
end Create_Pointer;

end WHITEBOX;
