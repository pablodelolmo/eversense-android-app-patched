.class public Lcom/senseonics/bluetoothle/ResponseOperations;
.super Ljava/lang/Object;
.source "ResponseOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/ResponseOperations$Response;,
        Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;
    }
.end annotation


# static fields
.field public static RESULT_OK:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x64

    aput v2, v0, v1

    sput-object v0, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkResponse([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;ILcom/senseonics/bluetoothle/BluetoothService;)Lcom/senseonics/bluetoothle/ResponseOperations$Response;
    .locals 3

    const/4 p3, 0x0

    .line 114
    aget v0, p0, p3

    if-ne p2, v0, :cond_0

    const-string p2, "CHECK CORRECTION"

    const-string v0, "Response ID good!"

    .line 115
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 119
    :goto_0
    aget p3, p0, p3

    const/16 v0, 0x40

    if-lt p3, v0, :cond_1

    const/16 v0, 0x60

    if-ge p3, v0, :cond_1

    const-string v0, "Push Response"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p3, "RESPONSE"

    const-string v0, "Is response to CHANGE TIMING PARAMS"

    .line 196
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isChangeTimingParametersResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 198
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseChangeTimingParametersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 199
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_1
    const-string p1, "RESPONSE"

    const-string p3, "Is response to DISCONNECT N SAVE BLE BONDING INFO"

    .line 187
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isDisconnectBLESavingBondingInformationResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 190
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_2
    const-string p3, "RESPONSE"

    const-string v0, "Is response to WRITE N BYTE REGISTER"

    .line 348
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isWriteNByteSerialFlashRegisterResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 350
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseWriteNByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 352
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_3
    const-string p3, "RESPONSE"

    const-string v0, "Is response to READ N BYTE REGISTER"

    .line 339
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadNByteSerialFlashRegisterResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 341
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadNByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 342
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_4
    const-string p3, "RESPONSE"

    const-string v0, "Is response to WRITE FOUR BYTE REGISTER"

    .line 329
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isWriteFourByteSerialFlashRegisterResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 331
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseWriteFourByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 333
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_5
    const-string p3, "RESPONSE"

    const-string v0, "Is response to READ TWO BYTE REGISTER"

    .line 319
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadTwoByteSerialFlashRegisterResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 321
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadTwoByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 323
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_6
    const-string p3, "RESPONSE"

    const-string v0, "Is response to READ FIRST N LAST ERROR LOG REC. NUMBERS"

    .line 306
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadFirstAndLastErrorLogRecordNumbersResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 309
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadFirstAndLastErrorLogRecordNumbersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 311
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_7
    const-string p1, "RESPONSE"

    const-string p3, "Is response to WRITE SINGLE MISC EVENT LOG"

    .line 296
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isWriteSingleMiscEventLogRecordResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 298
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_8
    const-string p3, "RESPONSE"

    const-string v0, "Is response to READ FIRST N LAST MISC EVENT LOG"

    .line 286
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadFirstAndLastMiscEventLogRecordNumbersResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 288
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadFirstAndLastMiscEventLogRecordNumbersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 290
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_9
    const-string p3, "RESPONSE"

    const-string v0, "Is response to READ SINGLE MISC EVENT LOG"

    .line 277
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSingleMiscEventLogResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 279
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadSingleMiscEventLogResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 280
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_a
    const-string p3, "RESPONSE"

    const-string v0, "Is response to MARK PATIENT EVENT RECORD AS DELETED"

    .line 264
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isMarkPatientEventRecordAsDeletedResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 267
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseMarkPatientEventRecordAsDeletedResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 269
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_b
    const-string p3, "RESPONSE"

    const-string v0, "Is response to READ SINGLE PATIENT EVENT"

    .line 255
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSinglePatientEventResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 257
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadSinglePatientEventResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 258
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_c
    const-string p3, "RESPONSE"

    const-string v0, "Is response to READ SINGLE BLOOD GLUCOSE DATA RECORD"

    .line 242
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSingleBloodGlucoseDataRecordResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 245
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadSingleBloodGlucoseDataRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 247
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_d
    const-string p1, "RESPONSE"

    const-string p3, "Is response to ASSERT SNOOZE AGAINST ALARM"

    .line 232
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "messagecode"

    .line 233
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Is response to ASSERT SNOOZE AGAINST ALARM"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 233
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isAssertSnoozeAgainsAlarmResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 236
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_e
    const-string p3, "RESPONSE"

    const-string v0, "Is response to READ SINGLE SENSOR GLUCOSE ALERT RECORD"

    .line 221
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSingleSensorGlucoseAlertRecordResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 224
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadSingleSensorGlucoseAlertRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 226
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_f
    const-string p3, "RESPONSE"

    const-string v0, "Is response to READ SINGLE SENSOR GLUCOSE RECORD"

    .line 208
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSingleSensorGlucoseDataRecordResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 211
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadSingleSensorGlucoseDataRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 213
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_10
    const-string p1, "RESPONSE"

    const-string p3, "Is response to SET TRM DATE N TIME"

    .line 175
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isSetCurrentTrasmitterDateAndTimeResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 177
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_11
    const-string p3, "RESPONSE"

    const-string v0, "Is response to READ ALL AV. SENSORS"

    .line 165
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadAllAvailableSensorsResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 168
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadAllAvailableSensorsResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 169
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_12
    const-string p1, "RESPONSE"

    const-string p3, "Is response to START SELF TEST SEQ"

    .line 157
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isStartSelfTestSequenceResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 159
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_13
    const-string p1, "RESPONSE"

    const-string p3, "Is response to CLEAR ERROR FLAGS"

    .line 149
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isClearErrorFlagsResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 151
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_14
    const-string p1, "RESPONSE"

    const-string p3, "Is response to RESET TRM"

    .line 141
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isResetTransmitterResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 143
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :sswitch_15
    const-string p1, "RESPONSE"

    const-string p3, "Is response to LINK TRM WITH SENSOR ID"

    .line 133
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isLinkTransmitterWithSensorResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 135
    new-instance p0, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(Z[I)V

    return-object p0

    :cond_2
    :goto_1
    :sswitch_16
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_15
        0x83 -> :sswitch_14
        0x84 -> :sswitch_13
        0x85 -> :sswitch_12
        0x86 -> :sswitch_11
        0x87 -> :sswitch_10
        0x89 -> :sswitch_f
        0x91 -> :sswitch_e
        0x94 -> :sswitch_d
        0x96 -> :sswitch_c
        0x9b -> :sswitch_b
        0x9d -> :sswitch_a
        0xa2 -> :sswitch_9
        0xa3 -> :sswitch_8
        0xa4 -> :sswitch_7
        0xa7 -> :sswitch_6
        0xac -> :sswitch_5
        0xaf -> :sswitch_4
        0xb0 -> :sswitch_3
        0xb1 -> :sswitch_2
        0xe9 -> :sswitch_16
        0xf4 -> :sswitch_1
        0xf5 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isAssertSnoozeAgainsAlarmResponseCorrect([I)Z
    .locals 5

    .line 994
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadAllSensorGlucoseAlertsInSpecifiedRangeResponse length not good!"

    .line 995
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 1000
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    .line 1002
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1003
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1005
    aget v3, v2, v1

    aget v4, p0, v0

    if-ne v3, v4, :cond_2

    aget v2, v2, v0

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadAllSensorGlucoseAlertsInSpecifiedRangeResponse CRC not matching"

    .line 1006
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isChangeTimingParametersResponseCorrect([I)Z
    .locals 5

    .line 672
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ChangeTimingParametersResponse length not good!"

    .line 673
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 678
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aput v4, v2, v3

    .line 680
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 681
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 683
    aget v4, v2, v1

    aget v0, p0, v0

    if-ne v4, v0, :cond_2

    aget v0, v2, v3

    const/4 v2, 0x3

    aget p0, p0, v2

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ChangeTimingParametersResponse CRC not matching"

    .line 684
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isClearErrorFlagsResponseCorrect([I)Z
    .locals 5

    .line 459
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ClearErrorFlagsResponse length not good!"

    .line 460
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 465
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    .line 467
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 468
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 470
    aget v3, v2, v1

    aget v4, p0, v0

    if-ne v3, v4, :cond_2

    aget v2, v2, v0

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ClearErrorFlagsResponse CRC not matching"

    .line 471
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isDisconnectBLESavingBondingInformationResponseCorrect([I)Z
    .locals 5

    .line 643
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "DisconnectBLESavingBondingInformationResponse length not good!"

    .line 644
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 649
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    .line 651
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 652
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 654
    aget v3, v2, v1

    aget v4, p0, v0

    if-ne v3, v4, :cond_2

    aget v2, v2, v0

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "DisconnectBLESavingBondingInformationResponse CRC not matching"

    .line 655
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isLinkTransmitterWithSensorResponseCorrect([I)Z
    .locals 5

    .line 431
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "LinkTransmitterWithSensorResponse length not good!"

    .line 432
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 437
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    .line 439
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 440
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 442
    aget v3, v2, v1

    aget v4, p0, v0

    if-ne v3, v4, :cond_2

    aget v2, v2, v0

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "LinkTransmitterWithSensorResponsee CRC not matching"

    .line 443
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isMarkPatientEventRecordAsDeletedResponseCorrect([I)Z
    .locals 5

    .line 1236
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSinglePatientEventResponse length not good!"

    .line 1237
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x3

    .line 1242
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 1244
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 1245
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1248
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1249
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1251
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/4 v3, 0x4

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSinglePatientEventResponse CRC not matching"

    .line 1252
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isPingResponseCorrect([I)Z
    .locals 5

    .line 374
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "PingResponse length not good!"

    .line 375
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0xd

    .line 379
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 381
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 382
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 386
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 388
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0xe

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "PingResponse CRC not matching"

    .line 389
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isReadAllAvailableSensorsResponseCorrect([I)Z
    .locals 4

    .line 513
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 518
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 519
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_1

    .line 520
    aget v3, p0, v2

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    :cond_1
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v0

    .line 524
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    .line 526
    aget v2, v0, v1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    aget v3, p0, v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    aget v0, v0, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    aget p0, p0, v3

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "StartSelfTestSequenceResponse CRC not matching"

    .line 528
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_2
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadAllSensorsResponse length not good!"

    .line 514
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadAllSensorGlucoseAlertsInSpecifiedRangeResponseCorrect([I)Z
    .locals 5

    .line 963
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xe

    .line 969
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 971
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 972
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 975
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 976
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 978
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0xf

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadAllSensorGlucoseAlertsInSpecifiedRangeResponse CRC not matching"

    .line 979
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadAllSensorGlucoseDataRecordResponseCorrect([I)Z
    .locals 5

    .line 788
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadAllSensorGlucoseDataRecordResponse length not good!"

    .line 789
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0xb

    .line 794
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 796
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 797
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 800
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 801
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 803
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0xc

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadAllSensorGlucoseDataRecordResponse CRC not matching"

    .line 804
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadCurrentTrasmitterDateAndTimeResponseCorrect([I)Z
    .locals 5

    .line 579
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadCurrentTrasmitterDateAndTimeResponse length not good!"

    .line 580
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0x8

    .line 585
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 587
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 588
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 591
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 592
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 594
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0x9

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadCurrentTrasmitterDateAndTimeResponse CRC not matching"

    .line 595
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadFirstAndLastBloodGlucoseDataRecordNumbersResponseCorrect([I)Z
    .locals 5

    .line 1101
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFirstAndLastBloodGlucoseDataRecordNumbersResponse length not good!"

    .line 1102
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 1107
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 1109
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 1110
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1113
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1114
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1116
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/4 v3, 0x6

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFirstAndLastBloodGlucoseDataRecordNumbersResponse CRC not matching"

    .line 1117
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isReadFirstAndLastErrorLogRecordNumbersResponseCorrect([I)Z
    .locals 5

    .line 1404
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFirstAndLastErrorLogRecordNumbersResponse length not good!"

    .line 1405
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 1410
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 1412
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 1413
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1416
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1417
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1419
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/4 v3, 0x6

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFirstAndLastErrorLogRecordNumbersResponse CRC not matching"

    .line 1420
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isReadFirstAndLastMiscEventLogRecordNumbersResponseCorrect([I)Z
    .locals 5

    .line 1329
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFirstAndLastMiscEventLogRecordNumbersResponse length not good!"

    .line 1330
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 1335
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 1337
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 1338
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1341
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1342
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1344
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/4 v3, 0x6

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFirstAndLastMiscEventLogRecordNumbersResponse CRC not matching"

    .line 1345
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadFirstAndLastSensorGlucoseAlertRecordNumbersResponseCorrect([I)Z
    .locals 5

    .line 932
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFirstAndLastSensorGlucoseAlertRecordNumbersResponse length not good!"

    .line 933
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 938
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 940
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 941
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 944
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 945
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 947
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/4 v3, 0x6

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFirstAndLastSensorGlucoseAlertRecordNumbersResponse CRC not matching"

    .line 948
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadFirstAndLastSensorGlucoseRecordNumbersResponseCorrect([I)Z
    .locals 5

    .line 819
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFirstAndLastSensorGlucoseRecordNumbersResponse length not good!"

    .line 820
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x7

    .line 825
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 827
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 828
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 831
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 832
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 834
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0x8

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFirstAndLastSensorGlucoseRecordNumbersResponse CRC not matching"

    .line 835
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadFourByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 6

    .line 1538
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFourByteSerialFlashRegisterResponse length not good!"

    .line 1539
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0x8

    .line 1544
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aput v4, v2, v3

    const/4 v4, 0x2

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x3

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x4

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x5

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x6

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x7

    aget v5, p0, v4

    aput v5, v2, v4

    .line 1547
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1548
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1550
    aget v4, v2, v1

    aget v0, p0, v0

    if-ne v4, v0, :cond_2

    aget v0, v2, v3

    const/16 v2, 0x9

    aget p0, p0, v2

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method public static isReadLogOfBloodGlucoseDataInSpecifiedRangeResponseCorrect([I)Z
    .locals 5

    .line 1132
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xf

    .line 1138
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 1140
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 1141
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1144
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1145
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1147
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0x10

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadLogOfBloodGlucoseDataInSpecifiedRangeResponse CRC not matching"

    .line 1148
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isReadNByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 5

    const/4 v0, 0x4

    .line 1642
    aget v0, p0, v0

    const/4 v1, 0x5

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x6

    .line 1644
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1646
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 1647
    aget v4, p0, v3

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1650
    :cond_0
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v1

    .line 1651
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 1653
    aget v3, v1, v2

    add-int/lit8 v4, v0, 0x7

    aget v4, p0, v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    aget v1, v1, v3

    add-int/lit8 v0, v0, 0x8

    aget p0, p0, v0

    if-eq v1, p0, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadNByteSerialFlashRegisterResponse CRC not good!"

    .line 1654
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isReadSensorGlucoseAlertsAndStatusResponseCorrect([I)Z
    .locals 5

    .line 852
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSensorGlucoseAlertsAndStatusResponse length not good!"

    .line 853
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0xc

    .line 858
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 860
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 861
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 864
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 865
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 867
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0xd

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSensorGlucoseAlertsAndStatusResponse CRC not matching"

    .line 868
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadSensorGlucoseResponseCorrect([I)Z
    .locals 5

    .line 708
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSensorGlucoseResponse length not good!"

    .line 709
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0x12

    .line 714
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 716
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 717
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 720
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 721
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 723
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0x13

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSensorGlucoseResponse CRC not matching"

    .line 724
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isReadSingleBloodGlucoseDataRecordResponseCorrect([I)Z
    .locals 5

    .line 1051
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSingleBloodGlucoseDataRecordResponse length not good!"

    .line 1052
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0xf

    .line 1057
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 1059
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 1060
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1063
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1064
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1066
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0x10

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSingleBloodGlucoseDataRecordResponse CRC not matching"

    .line 1067
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadSingleByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 6

    .line 1448
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSingleByteSerialFlashRegisterResponse length not good!"

    .line 1449
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 1454
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aput v4, v2, v3

    const/4 v4, 0x2

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x3

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x4

    aget v5, p0, v4

    aput v5, v2, v4

    .line 1457
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1458
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1460
    aget v4, v2, v1

    aget v0, p0, v0

    if-ne v4, v0, :cond_2

    aget v0, v2, v3

    const/4 v2, 0x6

    aget p0, p0, v2

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSingleByteSerialFlashRegisterResponse CRC not matching"

    .line 1461
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isReadSingleMiscEventLogResponseCorrect([I)Z
    .locals 5

    .line 1278
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSingleMiscEventLogResponse length not good!"

    .line 1279
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0x11

    .line 1284
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 1286
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 1287
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1290
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1291
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1293
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0x12

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSingleMiscEventLogResponse CRC not matching"

    .line 1294
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isReadSinglePatientEventResponseCorrect([I)Z
    .locals 5

    .line 1189
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSinglePatientEventResponse length not good!"

    .line 1190
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0xd

    .line 1195
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 1197
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 1198
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1201
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1202
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1204
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0xe

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSinglePatientEventResponse CRC not matching"

    .line 1205
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isReadSingleSensorGlucoseAlertRecordResponseCorrect([I)Z
    .locals 5

    .line 883
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSingleSensorGlucoseAlertRecordResponse length not good!"

    .line 884
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0xe

    .line 889
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 891
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 892
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 895
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 896
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 898
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0xf

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSingleSensorGlucoseAlertRecordResponse CRC not matching"

    .line 899
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isReadSingleSensorGlucoseDataRecordResponseCorrect([I)Z
    .locals 5

    .line 739
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSingleSensorGlucoseDataRecordResponse length not good!"

    .line 740
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0xb

    .line 745
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 747
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 748
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 751
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 752
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 754
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0xc

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadSingleSensorGlucoseDataRecordResponse CRC not matching"

    .line 755
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadTwoByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 6

    .line 1502
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadTwoByteSerialFlashRegisterResponse length not good!"

    .line 1503
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x6

    .line 1508
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aput v4, v2, v3

    const/4 v4, 0x2

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x3

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x4

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x5

    aget v5, p0, v4

    aput v5, v2, v4

    .line 1511
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1512
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1514
    aget v4, v2, v1

    aget v0, p0, v0

    if-ne v4, v0, :cond_2

    aget v0, v2, v3

    const/4 v2, 0x7

    aget p0, p0, v2

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadTwoByteSerialFlashRegisterResponse CRC not matching"

    .line 1515
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isResetTransmitterResponseCorrect([I)Z
    .locals 5

    .line 402
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ResetTransmitterResponse length not good!"

    .line 403
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 408
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    .line 410
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 411
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 413
    aget v3, v2, v1

    aget v4, p0, v0

    if-ne v3, v4, :cond_2

    aget v2, v2, v0

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ResetTransmitterResponse CRC not matching"

    .line 414
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isSaveBLEBondingInformationResponseCorrect([I)Z
    .locals 5

    const/4 v0, 0x0

    .line 610
    aget v1, p0, v0

    const/16 v2, 0xe9

    if-eq v2, v1, :cond_0

    return v0

    .line 614
    :cond_0
    array-length v1, p0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string p0, "CHECK CORRECTION"

    const-string v1, "SaveBLEBondingInformationResponse length not good!"

    .line 615
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v1, 0x1

    .line 620
    new-array v2, v1, [I

    aget v3, p0, v0

    aput v3, v2, v0

    .line 622
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 623
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 625
    aget v3, v2, v0

    aget v4, p0, v1

    if-ne v3, v4, :cond_3

    aget v2, v2, v1

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v1, "SaveBLEBondingInformationResponse CRC not matching"

    .line 626
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSendBloodGlucoseDataResponseCorrect([I)Z
    .locals 5

    .line 1024
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "SendBloodGlucoseDataResponse length not good!"

    .line 1025
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x2

    .line 1030
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aput v4, v2, v3

    .line 1032
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1033
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1035
    aget v4, v2, v1

    aget v0, p0, v0

    if-ne v4, v0, :cond_2

    aget v0, v2, v3

    const/4 v2, 0x3

    aget p0, p0, v2

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "SendBloodGlucoseDataResponse CRC not matching"

    .line 1036
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isSetCurrentTrasmitterDateAndTimeResponseCorrect([I)Z
    .locals 5

    .line 552
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "SetCurrentTrasmitterDateAndTimeResponse length not good!"

    .line 553
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 558
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    .line 560
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 561
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 563
    aget v3, v2, v1

    aget v4, p0, v0

    if-ne v3, v4, :cond_2

    aget v2, v2, v0

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private static isStartSelfTestSequenceResponseCorrect([I)Z
    .locals 5

    .line 487
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "StartSelfTestSequenceResponse length not good!"

    .line 488
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 493
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    .line 495
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 496
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 498
    aget v3, v2, v1

    aget v4, p0, v0

    if-ne v3, v4, :cond_2

    aget v2, v2, v0

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "StartSelfTestSequenceResponse CRC not matching"

    .line 499
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isWriteFourByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 6

    .line 1563
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "WriteFourByteSerialFlashRegisterResponse length not good!"

    .line 1564
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0x8

    .line 1569
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aput v4, v2, v3

    const/4 v4, 0x2

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x3

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x4

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x5

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x6

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x7

    aget v5, p0, v4

    aput v5, v2, v4

    .line 1572
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1573
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1575
    aget v4, v2, v1

    aget v0, p0, v0

    if-ne v4, v0, :cond_2

    aget v0, v2, v3

    const/16 v2, 0x9

    aget p0, p0, v2

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "WriteFourByteSerialFlashRegisterResponse CRC not good!"

    .line 1576
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isWriteNByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 5

    .line 1602
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "WriteNByteSerialFlashRegisterResponse length not good!"

    .line 1603
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x6

    .line 1608
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 1610
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 1611
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1614
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1615
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1617
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/4 v3, 0x7

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "WriteNByteSerialFlashRegisterResponse CRC not good!"

    .line 1618
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isWritePatientEventResponseCorrect([I)Z
    .locals 5

    .line 1162
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "WritePatientEventResponse length not good!"

    .line 1163
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 1168
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    .line 1170
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1171
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1173
    aget v3, v2, v1

    aget v4, p0, v0

    if-ne v3, v4, :cond_2

    aget v2, v2, v0

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "WritePatientEventResponse CRC not matching"

    .line 1174
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isWriteSingleByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 6

    .line 1475
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "WriteSingleByteSerialFlashRegisterResponse length not good!"

    .line 1476
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x5

    .line 1481
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aput v4, v2, v3

    const/4 v4, 0x2

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x3

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x4

    aget v5, p0, v4

    aput v5, v2, v4

    .line 1484
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1485
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1487
    aget v4, v2, v1

    aget v0, p0, v0

    if-ne v4, v0, :cond_2

    aget v0, v2, v3

    const/4 v2, 0x6

    aget p0, p0, v2

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "WriteSingleByteSerialFlashRegisterResponse CRC not matching"

    .line 1488
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isWriteSingleMiscEventLogRecordResponseCorrect([I)Z
    .locals 5

    .line 1373
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "WriteSingleMiscEventLogRecordResponse length not good!"

    .line 1374
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 1379
    new-array v2, v0, [I

    aget v3, p0, v1

    aput v3, v2, v1

    .line 1381
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1382
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1384
    aget v3, v2, v1

    aget v4, p0, v0

    if-ne v3, v4, :cond_2

    aget v2, v2, v0

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "CHECK CORRECTION"

    const-string v0, "WriteSingleMiscEventLogRecordResponse CRC not matching"

    .line 1385
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static parseChangeTimingParametersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 697
    aget p0, p0, v0

    .line 698
    invoke-interface {p1, p0}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedChangeTimingParametersResponse(I)V

    return-void
.end method

.method private static parseMarkPatientEventRecordAsDeletedResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 2

    const/4 v0, 0x1

    .line 1266
    aget v0, p0, v0

    const/4 v1, 0x2

    aget p0, p0, v1

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    .line 1268
    invoke-interface {p1, p0}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedMarkPatientEventRecordAsDeletedResponse(I)V

    return-void
.end method

.method private static parseReadAllAvailableSensorsResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 4

    .line 539
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p0, v0

    const-string v2, "response ------"

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parseReadFirstAndLastErrorLogRecordNumbersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 3

    const/4 v0, 0x1

    .line 1434
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 1435
    aget v1, p0, v1

    const/4 v2, 0x4

    aget p0, p0, v2

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    .line 1437
    invoke-interface {p1, v0, p0}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadFirstAndLastErrorLogRecordNumbersResponse(II)V

    return-void
.end method

.method private static parseReadFirstAndLastMiscEventLogRecordNumbersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 3

    const/4 v0, 0x1

    .line 1359
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 1360
    aget v1, p0, v1

    const/4 v2, 0x4

    aget p0, p0, v2

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    .line 1362
    invoke-interface {p1, v0, p0}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadFirstAndLastMiscEventLogRecordNumbersResponse(II)V

    return-void
.end method

.method private static parseReadNByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 6

    const/4 v0, 0x3

    .line 1667
    new-array v1, v0, [I

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    const/4 v3, 0x2

    aget v5, p0, v3

    aput v5, v1, v2

    aget v0, p0, v0

    aput v0, v1, v3

    const/4 v0, 0x4

    .line 1668
    aget v0, p0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 1669
    new-array v2, v0, [I

    :goto_0
    if-gt v4, v0, :cond_0

    add-int/lit8 v3, v4, 0x6

    .line 1672
    aget v3, p0, v3

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1675
    :cond_0
    invoke-interface {p1, v1, v0, v2}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadNByteSerialFlashRegisterResponse([II[I)V

    return-void
.end method

.method private static parseReadSingleBloodGlucoseDataRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 13

    const/4 v0, 0x1

    .line 1081
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    .line 1082
    new-array v7, v2, [I

    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v1, 0x4

    aget v1, p0, v1

    aput v1, v7, v0

    .line 1083
    new-array v8, v2, [I

    const/4 v1, 0x5

    aget v1, p0, v1

    aput v1, v8, v3

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, v8, v0

    const/4 v0, 0x7

    .line 1084
    aget v0, p0, v0

    aget v1, p0, v4

    shl-int/2addr v1, v4

    or-int v9, v0, v1

    const/16 v0, 0x9

    .line 1085
    aget v0, p0, v0

    const/16 v1, 0xa

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v10, v0, v1

    const/16 v0, 0xb

    .line 1086
    aget v11, p0, v0

    const/16 v0, 0xc

    .line 1087
    aget v0, p0, v0

    const/16 v1, 0xd

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int/2addr v0, v1

    const/16 v1, 0xe

    aget p0, p0, v1

    shl-int/lit8 p0, p0, 0x10

    or-int v12, v0, p0

    move-object v5, p1

    .line 1090
    invoke-interface/range {v5 .. v12}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadSingleBloodGlucoseDataRecordResponse(I[I[IIIII)V

    return-void
.end method

.method private static parseReadSingleMiscEventLogResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 11

    const/4 v0, 0x1

    .line 1308
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    .line 1309
    new-array v7, v2, [I

    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v1, 0x4

    aget v1, p0, v1

    aput v1, v7, v0

    .line 1310
    new-array v8, v2, [I

    const/4 v1, 0x5

    aget v1, p0, v1

    aput v1, v8, v3

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, v8, v0

    const/4 v0, 0x7

    .line 1311
    aget v0, p0, v0

    aget v1, p0, v4

    shl-int/2addr v1, v4

    or-int v9, v0, v1

    .line 1312
    new-array v10, v4, [I

    :goto_0
    if-gt v3, v4, :cond_0

    add-int/lit8 v0, v3, 0x9

    .line 1315
    aget v0, p0, v0

    aput v0, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v5, p1

    .line 1318
    invoke-interface/range {v5 .. v10}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadSingleMiscEventLogResponse(I[I[II[I)V

    return-void
.end method

.method private static parseReadSinglePatientEventResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 13

    const/4 v0, 0x1

    .line 1219
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    .line 1220
    new-array v7, v2, [I

    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v1, 0x4

    aget v1, p0, v1

    aput v1, v7, v0

    .line 1221
    new-array v8, v2, [I

    const/4 v1, 0x5

    aget v1, p0, v1

    aput v1, v8, v3

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, v8, v0

    const/4 v0, 0x7

    .line 1222
    aget v9, p0, v0

    .line 1223
    aget v0, p0, v4

    const/16 v1, 0x9

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v10, v0, v1

    const/16 v0, 0xa

    .line 1224
    aget v0, p0, v0

    const/16 v1, 0xb

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v11, v0, v1

    const/16 v0, 0xc

    .line 1225
    aget v12, p0, v0

    move-object v5, p1

    .line 1227
    invoke-interface/range {v5 .. v12}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadSinglePatientEventResponse(I[I[IIIII)V

    return-void
.end method

.method private static parseReadSingleSensorGlucoseAlertRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 13

    const/4 v0, 0x1

    .line 912
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    .line 913
    new-array v7, v2, [I

    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v1, 0x4

    aget v1, p0, v1

    aput v1, v7, v0

    .line 914
    new-array v8, v2, [I

    const/4 v1, 0x5

    aget v1, p0, v1

    aput v1, v8, v3

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, v8, v0

    const/4 v0, 0x7

    .line 915
    aget v9, p0, v0

    .line 916
    aget v0, p0, v4

    const/16 v1, 0x9

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v10, v0, v1

    const/16 v0, 0xa

    .line 917
    aget v0, p0, v0

    const/16 v1, 0xb

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v11, v0, v1

    const/16 v0, 0xc

    .line 918
    aget v0, p0, v0

    const/16 v1, 0xd

    aget p0, p0, v1

    shl-int/2addr p0, v4

    or-int v12, v0, p0

    move-object v5, p1

    .line 920
    invoke-interface/range {v5 .. v12}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadSingleSensorGlucoseAlertRecordResponse(I[I[IIIII)V

    return-void
.end method

.method private static parseReadSingleSensorGlucoseDataRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 11

    const/4 v0, 0x1

    .line 768
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget v3, p0, v3

    shl-int/lit8 v3, v3, 0x10

    or-int v6, v1, v3

    .line 770
    new-array v1, v2, [I

    const/4 v3, 0x4

    aget v3, p0, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v3, 0x5

    aget v3, p0, v3

    aput v3, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v7

    .line 772
    new-array v1, v2, [I

    const/4 v2, 0x6

    aget v2, p0, v2

    aput v2, v1, v5

    const/4 v2, 0x7

    aget v2, p0, v2

    aput v2, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    .line 774
    aget v0, p0, v4

    const/16 v1, 0x9

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v9, v0, v1

    const/16 v0, 0xa

    .line 775
    aget v10, p0, v0

    move-object v5, p1

    .line 777
    invoke-interface/range {v5 .. v10}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadSingleSensorGlucoseDataRecordResponseData(I[I[III)V

    return-void
.end method

.method private static parseReadTwoByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 6

    const/4 v0, 0x2

    .line 1528
    new-array v1, v0, [I

    const/4 v2, 0x4

    aget v2, p0, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x5

    aget v2, p0, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x3

    .line 1529
    new-array v5, v2, [I

    aget v2, p0, v2

    aput v2, v5, v3

    aget v2, p0, v0

    aput v2, v5, v4

    aget p0, p0, v4

    aput p0, v5, v0

    .line 1530
    invoke-interface {p1, v1, v5}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadTwoByteSerialFlashRegisterResponse([I[I)V

    return-void
.end method

.method private static parseWriteFourByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 6

    const/4 v0, 0x4

    .line 1589
    new-array v1, v0, [I

    aget v0, p0, v0

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x5

    aget v0, p0, v0

    const/4 v3, 0x1

    aput v0, v1, v3

    const/4 v0, 0x6

    aget v0, p0, v0

    const/4 v4, 0x2

    aput v0, v1, v4

    const/4 v0, 0x7

    aget v0, p0, v0

    const/4 v5, 0x3

    aput v0, v1, v5

    .line 1591
    new-array v0, v5, [I

    aget v5, p0, v5

    aput v5, v0, v2

    aget v2, p0, v4

    aput v2, v0, v3

    aget p0, p0, v3

    aput p0, v0, v4

    .line 1593
    invoke-interface {p1, v1, v0}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedWriteFourByteSerialFlashRegisterResponse([I[I)V

    return-void
.end method

.method private static parseWriteNByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 5

    const/4 v0, 0x3

    .line 1631
    new-array v1, v0, [I

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    const/4 v3, 0x2

    aget v4, p0, v3

    aput v4, v1, v2

    aget v0, p0, v0

    aput v0, v1, v3

    const/4 v0, 0x4

    .line 1632
    aget v0, p0, v0

    const/4 v2, 0x5

    aget p0, p0, v2

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    .line 1634
    invoke-interface {p1, v1, p0}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedWriteNByteSerialFlashRegisterResponse([II)V

    return-void
.end method
