.class public interface abstract Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;
.super Ljava/lang/Object;
.source "ResponseOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/ResponseOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReaderManager"
.end annotation


# virtual methods
.method public abstract parsedChangeTimingParametersResponse(I)V
.end method

.method public abstract parsedMarkPatientEventRecordAsDeletedResponse(I)V
.end method

.method public abstract parsedReadFirstAndLastErrorLogRecordNumbersResponse(II)V
.end method

.method public abstract parsedReadFirstAndLastMiscEventLogRecordNumbersResponse(II)V
.end method

.method public abstract parsedReadNByteSerialFlashRegisterResponse([II[I)V
.end method

.method public abstract parsedReadSingleBloodGlucoseDataRecordResponse(I[I[IIIII)V
.end method

.method public abstract parsedReadSingleMiscEventLogResponse(I[I[II[I)V
.end method

.method public abstract parsedReadSinglePatientEventResponse(I[I[IIIII)V
.end method

.method public abstract parsedReadSingleSensorGlucoseAlertRecordResponse(I[I[IIIII)V
.end method

.method public abstract parsedReadSingleSensorGlucoseDataRecordResponseData(I[I[III)V
.end method

.method public abstract parsedReadTwoByteSerialFlashRegisterResponse([I[I)V
.end method

.method public abstract parsedWriteFourByteSerialFlashRegisterResponse([I[I)V
.end method

.method public abstract parsedWriteNByteSerialFlashRegisterResponse([II)V
.end method
