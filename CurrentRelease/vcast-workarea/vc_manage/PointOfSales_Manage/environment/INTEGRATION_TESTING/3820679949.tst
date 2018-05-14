
-- Unit: encrypt

-- Subprogram: sendData

-- Test Case: sendData.TrustZoneFailure_ResetFail
TEST.UNIT:encrypt
TEST.SUBPROGRAM:sendData
TEST.NEW
TEST.NAME:sendData.TrustZoneFailure_ResetFail
TEST.SPECIALIZED
TEST.VALUE:uut_prototype_stubs.TZ_Write_Data.return:FAILURE
TEST.VALUE:uut_prototype_stubs.TZ_Wait_Reset.return:0
TEST.VALUE:encrypt.sendData.data.row:4
TEST.VALUE:encrypt.sendData.data.col:4
TEST.FLOW
  encrypt.c.sendData
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.__SystemReset
TEST.END_FLOW
TEST.END

-- Test Case: sendData.TrustZoneFailure_ResetOK
TEST.UNIT:encrypt
TEST.SUBPROGRAM:sendData
TEST.NEW
TEST.NAME:sendData.TrustZoneFailure_ResetOK
TEST.SPECIALIZED
TEST.VALUE:uut_prototype_stubs.TZ_Write_Data.return:FAILURE,SUCCESS
TEST.VALUE:uut_prototype_stubs.TZ_Wait_Reset.return:1,0
TEST.VALUE:encrypt.sendData.data.row:4
TEST.VALUE:encrypt.sendData.data.col:4
TEST.EXPECTED:encrypt.sendData.return:SUCCESS
TEST.FLOW
  encrypt.c.sendData
  uut_prototype_stubs.TZ_Write_Data
  uut_prototype_stubs.log_Error
  uut_prototype_stubs.TZ_Reset_Hardware
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Wait_Reset
  uut_prototype_stubs.TZ_Write_Data
  encrypt.c.sendData
TEST.END_FLOW
TEST.END
