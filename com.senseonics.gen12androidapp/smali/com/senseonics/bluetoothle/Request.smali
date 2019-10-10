.class public Lcom/senseonics/bluetoothle/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/senseonics/bluetoothle/Request;",
        ">;"
    }
.end annotation


# static fields
.field public static final SYNC_PRIORITY:I = 0xa


# instance fields
.field private final data:[I

.field private final expectedResponseCount:I

.field private final expectedResponseId:I

.field private insertionTime:J

.field private priority:I

.field private final recordNr:I

.field private runningResponseCount:I


# direct methods
.method public constructor <init>(I[I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[III)V

    return-void
.end method

.method public constructor <init>(I[III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/Request;-><init>(I[IIII)V

    return-void
.end method

.method public constructor <init>(I[IIII)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    .line 37
    iput-object p2, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    .line 38
    iput p3, p0, Lcom/senseonics/bluetoothle/Request;->recordNr:I

    .line 39
    iput p4, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseCount:I

    .line 40
    iput p5, p0, Lcom/senseonics/bluetoothle/Request;->priority:I

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/senseonics/bluetoothle/Request;->runningResponseCount:I

    return-void
.end method

.method static completedCalibrationsCount()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 214
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->calibrationsMadeInThisPhaseAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method private convertToByteArray([I)[B
    .locals 3

    .line 61
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 62
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 63
    aget v2, p1, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static currentCalibrationPhase()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 218
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->currentCalibrationPhaseAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static detectedSensorId()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 285
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->unlinkedSensorIDAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static enterDiagnosticMode()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 905
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToEnterDiagnosticMode()[I

    move-result-object v1

    const/16 v2, 0xf6

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static exitDiagnosticMode()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 909
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToExitDiagnosticMode()[I

    move-result-object v1

    const/16 v2, 0xf7

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static forceGlucoseMeasurement()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 1011
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToForceGlucoseMeasurement()[I

    move-result-object v1

    const/16 v2, 0xe0

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static lastCalDate()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 198
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentCalibrationDateAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static lastCalTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 202
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentCalibrationTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static linkedSensorId()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 281
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->linkedSensorIDAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static markPatientEventRecordAsDeleted(I)Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 933
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 934
    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToMarkPatientEventRecordAsDeleted([I)[I

    move-result-object p0

    const/16 v1, 0x9d

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static model()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 186
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterModelNumberAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;
    .locals 6

    .line 978
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 979
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    .line 983
    new-array v0, v0, [I

    const/16 v2, 0x2a

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x2

    .line 985
    aget v4, p0, v2

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 986
    aget v4, p0, v5

    aput v4, v0, v2

    .line 987
    aget p0, p0, v3

    aput p0, v0, v1

    .line 989
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 990
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 992
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 995
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 997
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 998
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 999
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 1001
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 1003
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "COMMAND"

    .line 1006
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance p0, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xaa

    invoke-direct {p0, v0, v2}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p0
.end method

.method static operationToReadTwoByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;
    .locals 6

    .line 940
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 941
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    .line 945
    new-array v0, v0, [I

    const/16 v2, 0x2c

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x2

    .line 947
    aget v4, p0, v2

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 948
    aget v4, p0, v5

    aput v4, v0, v2

    .line 949
    aget p0, p0, v3

    aput p0, v0, v1

    .line 951
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 952
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    const-string v1, "Calculated Command ="

    .line 957
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 959
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 960
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 961
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 963
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 965
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "COMMAND"

    .line 968
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance p0, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xac

    invoke-direct {p0, v0, v2}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p0
.end method

.method static phaseStartDate()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 206
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->startDateOfCalibrationPhaseAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static phaseStartTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 210
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->startTimeOfCalibrationPhaseAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static ping()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 182
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToPingTransmitter()[I

    move-result-object v1

    const/16 v2, 0x81

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readAlgorithmParameterFormatVersion()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 323
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->algorithmParameterFormatVersion:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readBatteryLevelRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 132
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->batteryPercentageAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method static readBatteryVoltageRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 128
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->batteryVoltageAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadTwoByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method static readClinicalMode()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 222
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->clinicalMode:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readCommunicationProtocolVersion()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 327
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->communicationProtocolVersionAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readCurrentTransmitterDateAndTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 226
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadCurrentTransmitterDateAndTime()[I

    move-result-object v1

    const/16 v2, 0x99

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readDayStartTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 397
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->dayStartTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readDelayBLEDisconnectAlarmAddressRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 675
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->delayBLEDisconnectAlarmAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 676
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readDoNotDisturbModeRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 694
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->doNotDisturbMode:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 695
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readEEP24MSP()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 352
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->eep24MSPAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readEveningCalibrationTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 238
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->eveningCalibrationTime:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readFirstAndLastBloodGlucoseDataRecordNumber()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 178
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFirstAndLastBloodGlucoseDataRecordNumbers()[I

    move-result-object v1

    const/16 v2, 0x97

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readFirstAndLastSensorGlucoseAlertRecordNumbers()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 174
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFirstAndLastSensorGlucoseAlertRecordNumbers()[I

    move-result-object v1

    const/16 v2, 0x92

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readFirstAndLastSensorGlucoseRecordNumbers()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 170
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFirstAndLastSensorGlucoseRecordNumbers()[I

    move-result-object v1

    const/16 v2, 0x8e

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readGlucoseAlertsAndStatus()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 152
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSensorGlucoseAlertsAndStatus()[I

    move-result-object v1

    const/16 v2, 0x90

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readGlucoseData()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 161
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    .line 162
    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadMostRecentGlucoseData()[I

    move-result-object v1

    const/16 v2, 0x88

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readHighGlucoseAlarmEnabledRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 488
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmEnabled:[I

    .line 489
    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 490
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readHighGlucoseAlarmRepeatIntervalDayTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 367
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmRepeatIntervalDayTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readHighGlucoseAlarmRepeatIntervalNightTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 387
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readHighGlucoseAlarmRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 469
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmThreshold:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 470
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readHighGlucoseTargetRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 443
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseTarget:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 444
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static readHysteresisPercentRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 136
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisPercentageAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method static readHysteresisValueRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 140
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisValueAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method public static readLowGlucoseAlarmRepeatIntervalDayTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 357
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalDayTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readLowGlucoseAlarmRepeatIntervalNightTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 377
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readLowGlucoseAlarmRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 482
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmThreshold:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 483
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readLowGlucoseTargetRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 456
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseTarget:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 457
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readMEPSavedDriftMetric()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 340
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedDriftMetricAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMEPSavedLowRefMetric()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 344
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedLowRefMetricAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMEPSavedRefChannelMetric()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 336
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedRefChannelMetricAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMEPSavedSpike()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 348
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedSpikeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMEPSavedValue()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 332
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedValueAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMaxCalibrationThreshold()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 311
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->maxCalibrationThreshold:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMinCalibrationThreshold()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 307
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minCalibrationThreshold:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMinutesAfterNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 423
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minutesAfterNextCalibrationTime:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMinutesBeforeNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 419
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minutesBeforeNextCalibrationTime:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMinutesRemainingUntilCalibrationAllowed()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 319
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minutesRemainingUntilCalibrationAllowed:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readMorningCalibrationTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 234
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->morningCalibrationTime:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readMostRecentGlucoseValue()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 166
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentGlucoseValueAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readNextCalibrationDate()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 303
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->nextCalibrationDate:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 315
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->nextCalibrationTime:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readNightStartTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 401
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->nightStartTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readPredictiveAlertsRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 539
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveAlert:[I

    .line 540
    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 541
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readPredictiveFallingTimeIntervalRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 573
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveFallingTime:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 574
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readPredictiveHighAlertsRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 553
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveHighAlert:[I

    .line 554
    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 555
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static readPredictiveHysteresisPercentRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 144
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisPredictivePercentageAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method static readPredictiveHysteresisValueRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 148
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisPredictiveValueAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method public static readPredictiveLowAlertsRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 546
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveLowAlert:[I

    .line 547
    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 548
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readPredictiveRisingTimeIntervalRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 579
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveRisingTime:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 580
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readRateAlert()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 621
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlert:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 622
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readRateAlertFallingThresholdRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 651
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertFallingThreshold:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 652
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readRateAlertRisingThresholdRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 657
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertRisingThreshold:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 658
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readRateFallingAlert()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 627
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateFallingAlert:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 628
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readRateRisingAlert()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 633
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateRisingAlert:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 634
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 157
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->getMemoryAddress()[I

    move-result-object p0

    invoke-static {p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object p0

    const/16 v1, 0xac

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readReadyForCalibration()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 299
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->readyForCalibrationAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readSensorGlucoseSamplingInterval()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 230
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorGlucoseSamplingInterval:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readSensorIdRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 724
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->linkedSensorIDAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 725
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xae

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static readSensorInsertionDate()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 290
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorInsertionDateAddress:[I

    .line 291
    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readSensorInsertionTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 295
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorInsertionTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readSignalStrengthRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 124
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->sensorFieldCurrentAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadTwoByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method public static readUnlinkedSensorIdRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 730
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->unlinkedSensorIDAddress:[I

    .line 731
    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 732
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xae

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readVibrateModeRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 688
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->vibrateMode:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 689
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static saveBondingInformation()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 120
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToSaveBLEBondingInformation()[I

    move-result-object v1

    const/16 v2, 0xe9

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static sendBloodGlucoseData([I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 427
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0x95

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static sendBloodGlucoseDataWithTwoTimestamps([I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 431
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xbc

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static sendCurrentDateAndTimeToTransmitter()Lcom/senseonics/bluetoothle/Request;
    .locals 9

    .line 243
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 247
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 248
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 251
    div-int/lit8 v2, v1, 0x3c

    .line 252
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0xff

    :goto_0
    const-string v5, "GMT"

    .line 261
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v5, 0x1

    .line 263
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    .line 264
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v5

    const/4 v5, 0x5

    .line 265
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 266
    invoke-static {v6, v7, v5}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateBytes(III)[I

    move-result-object v5

    const/16 v6, 0xb

    .line 268
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    .line 269
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xd

    .line 270
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 271
    invoke-static {v6, v7, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object v0

    .line 274
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 273
    invoke-static {v2, v1, v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object v1

    .line 276
    new-instance v2, Lcom/senseonics/bluetoothle/Request;

    const/16 v3, 0x87

    invoke-static {v5, v0, v1, v4}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToSetTransmitterDateAndTime([I[I[II)[I

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v2
.end method

.method static version()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 190
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterSoftwareVersionAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static versionExtension()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 194
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterSoftwareVersionExtAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeAppVersion(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;
    .locals 7

    const-string v0, "\\."

    .line 913
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 915
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 916
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 917
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v5, 0x4

    .line 919
    new-array v5, v5, [I

    and-int/lit16 v6, p0, 0xff

    aput v6, v5, v0

    const v6, 0xff00

    and-int/2addr p0, v6

    shr-int/lit8 p0, p0, 0x8

    aput p0, v5, v2

    aput v3, v5, v4

    const/4 p0, 0x3

    aput v1, v5, p0

    const-string v1, "AppVersion"

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appVersionArray:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v5, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v5, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v5, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, v5, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    sget-object p0, Lcom/senseonics/bluetoothle/MemoryMap;->appVersionAddress:[I

    invoke-static {p0, v5}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteFourByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 929
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xaf

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeBloodGlucoseEvent(JIZF)Lcom/senseonics/bluetoothle/Request;
    .locals 10

    .line 756
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    .line 757
    invoke-virtual {p4, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p0, "GMT"

    .line 758
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p0, 0x1

    .line 760
    invoke-virtual {p4, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v0, 0x2

    .line 761
    invoke-virtual {p4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p0

    const/4 v2, 0x5

    .line 762
    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 759
    invoke-static {p1, v1, v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateBytes(III)[I

    move-result-object v4

    const/16 p1, 0xb

    .line 765
    invoke-virtual {p4, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0xc

    .line 766
    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    .line 767
    invoke-virtual {p4, v6}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 764
    invoke-static {v1, v5, p4}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object v5

    .line 770
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p4

    const-string v1, "GMT"

    .line 771
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 773
    invoke-virtual {p4, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 774
    invoke-virtual {p4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, p0

    .line 775
    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 772
    invoke-static {v1, v7, p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateBytes(III)[I

    .line 778
    invoke-virtual {p4, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 779
    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 780
    invoke-virtual {p4, v6}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .line 777
    invoke-static {p0, p1, p4}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    .line 783
    invoke-static {p2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v6

    .line 784
    new-array v8, v0, [I

    fill-array-data v8, :array_0

    const/4 v7, 0x0

    move v9, p3

    .line 791
    invoke-static/range {v4 .. v9}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToSendBloodGlucoseValueToTransmitter([I[I[II[IZ)[I

    move-result-object p0

    .line 792
    invoke-static {p0}, Lcom/senseonics/bluetoothle/Request;->sendBloodGlucoseData([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static writeClinicalModeRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 669
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->clinicalMode:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 670
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeDayStartTime(II)Lcom/senseonics/bluetoothle/Request;
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-static {p0, p1, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p0

    .line 407
    sget-object p1, Lcom/senseonics/bluetoothle/MemoryMap;->dayStartTimeAddress:[I

    invoke-static {p1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 408
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xad

    invoke-direct {p1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writeDelayBLEDisconnectAlarmAddressRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 681
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 682
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->delayBLEDisconnectAlarmAddress:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 683
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xad

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeDoNotDisturbModeRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 718
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->doNotDisturbMode:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 719
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeEveningCalibrationTime(II)Lcom/senseonics/bluetoothle/Request;
    .locals 1

    const/4 v0, 0x0

    .line 848
    invoke-static {p0, p1, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p0

    .line 849
    sget-object p1, Lcom/senseonics/bluetoothle/MemoryMap;->eveningCalibrationTime:[I

    invoke-static {p1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 850
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xad

    invoke-direct {p1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writeFirstFourByteTransmitterNameRequest(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;
    .locals 7

    const/4 v0, 0x4

    .line 820
    new-array v1, v0, [I

    .line 821
    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 823
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 824
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v1, v4

    goto :goto_1

    .line 826
    :cond_0
    aput v3, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_3

    add-int/lit8 v5, v4, 0x4

    .line 829
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 830
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v2, v4

    goto :goto_3

    .line 832
    :cond_2
    aput v3, v2, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/16 p0, 0xaf

    .line 835
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterNameFirst4Byte:[I

    invoke-static {v0, v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteFourByteSerialFlashRegister([I[I)[I

    move-result-object v0

    .line 836
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, p0, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeHighGlucoseAlarmEnabledRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 500
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmEnabled:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 501
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeHighGlucoseAlarmRepeatIntervalDayTime(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 372
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmRepeatIntervalDayTimeAddress:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 373
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeHighGlucoseAlarmRepeatIntervalNightTime(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 392
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 393
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeHighGlucoseAlarmRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 462
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 463
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmThreshold:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 464
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xad

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeHighGlucoseTarget(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 436
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 437
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseTarget:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 438
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xad

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeLastFourByteTransmitterNameRequest(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;
    .locals 6

    const/4 v0, 0x4

    .line 800
    new-array v1, v0, [I

    .line 801
    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 803
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 804
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v1, v4

    goto :goto_1

    .line 806
    :cond_0
    aput v3, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    add-int/lit8 v4, v1, 0x4

    .line 809
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 810
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput v4, v2, v1

    goto :goto_3

    .line 812
    :cond_2
    aput v3, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 p0, 0xaf

    .line 815
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterNameLast4Byte:[I

    invoke-static {v0, v2}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteFourByteSerialFlashRegister([I[I)[I

    move-result-object v0

    .line 816
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, p0, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeLowGlucoseAlarmRepeatIntervalDayTime(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 362
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalDayTimeAddress:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 363
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeLowGlucoseAlarmRepeatIntervalNightTime(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 382
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 383
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeLowGlucoseAlarmRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 475
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 476
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmThreshold:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 477
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xad

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeLowGlucoseTargetRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 449
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 450
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseTarget:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 451
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xad

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeMorningCalibrationTime(II)Lcom/senseonics/bluetoothle/Request;
    .locals 1

    const/4 v0, 0x0

    .line 841
    invoke-static {p0, p1, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p0

    .line 842
    sget-object p1, Lcom/senseonics/bluetoothle/MemoryMap;->morningCalibrationTime:[I

    invoke-static {p1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 843
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xad

    invoke-direct {p1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writeNightStartTime(II)Lcom/senseonics/bluetoothle/Request;
    .locals 1

    const/4 v0, 0x0

    .line 413
    invoke-static {p0, p1, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p0

    .line 414
    sget-object p1, Lcom/senseonics/bluetoothle/MemoryMap;->nightStartTimeAddress:[I

    invoke-static {p1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 415
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xad

    invoke-direct {p1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writePatientEvent(JIII)Lcom/senseonics/bluetoothle/Request;
    .locals 5

    .line 736
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 737
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p0, "GMT"

    .line 738
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p0, 0x1

    .line 740
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x2

    .line 741
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p0

    const/4 p0, 0x5

    .line 742
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/16 v2, 0xb

    .line 743
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    .line 744
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xd

    .line 745
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 747
    invoke-static {p1, v1, p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateBytes(III)[I

    move-result-object p0

    .line 748
    invoke-static {v2, v3, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p1

    .line 750
    invoke-static {p0, p1, p2, p3, p4}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWritePatientEvent([I[IIII)[I

    move-result-object p0

    .line 752
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 p2, 0x9a

    invoke-direct {p1, p2, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writePredictiveAlertsRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 511
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 512
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writePredictiveFallingTimeIntervalRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 560
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveFallingTime:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 562
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writePredictiveHighAlertsRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 533
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveHighAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 534
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writePredictiveLowAlertsRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 522
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveLowAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 523
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writePredictiveRisingTimeIntervalRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 567
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveRisingTime:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 568
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeRateAlert(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 591
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 592
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeRateAlertFallingThresholdRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 639
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertFallingThreshold:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 640
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeRateAlertRisingThresholdRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 645
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertRisingThreshold:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 646
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeRateFallingAlert(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 603
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateFallingAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 604
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeRateRisingAlert(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 615
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateRisingAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 616
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeSensorID(J)Lcom/senseonics/bluetoothle/Request;
    .locals 8

    const/4 v0, 0x4

    .line 884
    new-array v1, v0, [I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const-wide/32 v4, 0xff00

    and-long/2addr v4, p0

    const/16 v2, 0x8

    shr-long/2addr v4, v2

    long-to-int v2, v4

    const/4 v4, 0x1

    aput v2, v1, v4

    const-wide/32 v5, 0xff0000

    and-long/2addr v5, p0

    const/16 v2, 0x10

    shr-long/2addr v5, v2

    long-to-int v2, v5

    const/4 v5, 0x2

    aput v2, v1, v5

    const-wide v6, 0xff000000L

    and-long/2addr p0, v6

    const/16 v2, 0x18

    shr-long/2addr p0, v2

    long-to-int p0, p0

    const/4 p1, 0x3

    aput p0, v1, p1

    .line 890
    aget p0, v1, p1

    const/16 v2, 0xff

    if-eq p0, v2, :cond_0

    aput v4, v1, p1

    .line 894
    :cond_0
    const-class p0, Lcom/senseonics/bluetoothle/BluetoothUtils;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v1, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-array p0, v0, [I

    aget v0, v1, p1

    aput v0, p0, v3

    aget v0, v1, v5

    aput v0, p0, v4

    aget v0, v1, v4

    aput v0, p0, v5

    aget v0, v1, v3

    aput v0, p0, p1

    .line 899
    invoke-static {p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToLinkTransmitterWithSensor([I)[I

    move-result-object p0

    .line 901
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0x82

    invoke-direct {p1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writeTransmitterChunk([III)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III)",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Request;",
            ">;"
        }
    .end annotation

    .line 855
    array-length v0, p0

    .line 856
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    add-int v4, p1, p2

    if-le v4, v0, :cond_0

    sub-int v5, v0, p1

    goto :goto_1

    :cond_0
    move v5, p2

    .line 863
    :goto_1
    new-array v6, v5, [I

    .line 864
    invoke-static {p0, p1, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    .line 866
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_1

    .line 867
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subarray "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget v10, v6, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x3

    .line 869
    new-array p1, p1, [I

    const/4 v7, 0x2

    and-int/lit16 v8, v3, 0xff

    aput v8, p1, v7

    const v7, 0xff00

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    aput v7, p1, v8

    const/high16 v7, 0xff0000

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x10

    aput v7, p1, v2

    add-int/2addr v3, v5

    .line 875
    invoke-static {p1, v5, v6}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteNByteSerialFlashRegister([II[I)[I

    move-result-object p1

    .line 876
    new-instance v5, Lcom/senseonics/bluetoothle/Request;

    const/16 v6, 0xb1

    invoke-direct {v5, v6, p1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v4

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static writeVibrateModeRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 706
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->vibrateMode:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 707
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/senseonics/bluetoothle/Request;)I
    .locals 4

    .line 112
    iget v0, p0, Lcom/senseonics/bluetoothle/Request;->priority:I

    iget v1, p1, Lcom/senseonics/bluetoothle/Request;->priority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/Request;->insertionTime:J

    iget-wide v2, p1, Lcom/senseonics/bluetoothle/Request;->insertionTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/Request;->compareTo(Lcom/senseonics/bluetoothle/Request;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/senseonics/bluetoothle/Request;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 80
    :cond_1
    check-cast p1, Lcom/senseonics/bluetoothle/Request;

    .line 82
    iget v1, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    iget v3, p1, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    if-eq v1, v3, :cond_2

    return v2

    .line 83
    :cond_2
    iget v1, p0, Lcom/senseonics/bluetoothle/Request;->recordNr:I

    iget v3, p1, Lcom/senseonics/bluetoothle/Request;->recordNr:I

    if-eq v1, v3, :cond_3

    return v2

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    iget-object v3, p1, Lcom/senseonics/bluetoothle/Request;->data:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 85
    :cond_4
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/Request;->compareTo(Lcom/senseonics/bluetoothle/Request;)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getData()[I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    return-object v0
.end method

.method public getDataBytes()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/Request;->convertToByteArray([I)[B

    move-result-object v0

    return-object v0
.end method

.method public getExpectedResponseId()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 92
    iget v0, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v1, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget v1, p0, Lcom/senseonics/bluetoothle/Request;->recordNr:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/senseonics/bluetoothle/Request;->priority:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isResponseIdTheLastExpectedResponse(I)Z
    .locals 2

    .line 69
    iget v0, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 70
    iget p1, p0, Lcom/senseonics/bluetoothle/Request;->runningResponseCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/senseonics/bluetoothle/Request;->runningResponseCount:I

    .line 72
    :cond_0
    iget p1, p0, Lcom/senseonics/bluetoothle/Request;->runningResponseCount:I

    iget v0, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseCount:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setInsertionTime(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/Request;->insertionTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 100
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "data"

    iget-object v2, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    .line 101
    invoke-static {v2}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "responseId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "recordNr"

    iget v2, p0, Lcom/senseonics/bluetoothle/Request;->recordNr:I

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "priority"

    iget v2, p0, Lcom/senseonics/bluetoothle/Request;->priority:I

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "insertionTime"

    iget-wide v2, p0, Lcom/senseonics/bluetoothle/Request;->insertionTime:J

    .line 105
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
