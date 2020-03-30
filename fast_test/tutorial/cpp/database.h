#ifndef _DATABASE_
#define _DATABASE_

#include "cpptypes.h"

class DataBase 
{
  public :
    DataBase();       /* Constructor */
    ~DataBase();      /* Destructor */

    void GetTableRecord(int Table, TableDataType *Data);
    void UpdateTableRecord(int Table, TableDataType *Data);
    void DeleteRecord(int Table);
   
    void DeleteTableRecord(TableDataType *Data)
    {
      DeleteOneRecord(0, Data);
    }

  private :

    void DeleteOneRecord(int Table, TableDataType *Data)
    {
      Data[Table].IsOccupied = false;
      Data[Table].NumberInParty = 0;
      Data[Table].Designator = ' ';
      Data[Table].WaitPerson[0] = '\0';
      Data[Table].CheckTotal = 0;
    
      for(int J=0;J<SeatsAtOneTable;J++)
      {
        Data[Table].Order[J].Soup     = NoSoup;
        Data[Table].Order[J].Salad    = NoSalad;
        Data[Table].Order[J].Entree   = NoEntree;
        Data[Table].Order[J].Dessert  = NoDessert;
        Data[Table].Order[J].Beverage = NoBeverage;
      }
    }

    void DeleteAllRecords(int size, TableDataType *Data)
    {
      for(int I=0;I<size;I++) 
        DeleteOneRecord(I, Data);
    }
};

#endif
