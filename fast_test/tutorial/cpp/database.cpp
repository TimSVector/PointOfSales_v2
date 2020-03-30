#include "database.h"

TableDataType TableData[NumberOfTables];

DataBase::DataBase(){}

DataBase::~DataBase(){}

void DataBase::GetTableRecord(int Table, TableDataType* Data)
{
  *Data = TableData[Table];
}

void DataBase::UpdateTableRecord(int Table, TableDataType* Data)
{
  TableData[Table] = *Data;
}

void DataBase::DeleteRecord(int Table)
{
  DeleteOneRecord(Table, TableData);
}
