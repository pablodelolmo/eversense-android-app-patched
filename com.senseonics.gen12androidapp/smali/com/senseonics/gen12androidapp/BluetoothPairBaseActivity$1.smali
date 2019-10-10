.class Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;
.super Ljava/lang/Object;
.source "BluetoothPairBaseActivity.java"

# interfaces
.implements Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parsedChangeTimingParametersResponse(I)V
    .locals 3

    .line 252
    const-class v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >>>>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public parsedMarkPatientEventRecordAsDeletedResponse(I)V
    .locals 0

    return-void
.end method

.method public parsedReadFirstAndLastErrorLogRecordNumbersResponse(II)V
    .locals 0

    return-void
.end method

.method public parsedReadFirstAndLastMiscEventLogRecordNumbersResponse(II)V
    .locals 0

    return-void
.end method

.method public parsedReadNByteSerialFlashRegisterResponse([II[I)V
    .locals 0

    return-void
.end method

.method public parsedReadSingleBloodGlucoseDataRecordResponse(I[I[IIIII)V
    .locals 0

    return-void
.end method

.method public parsedReadSingleMiscEventLogResponse(I[I[II[I)V
    .locals 0

    return-void
.end method

.method public parsedReadSinglePatientEventResponse(I[I[IIIII)V
    .locals 0

    return-void
.end method

.method public parsedReadSingleSensorGlucoseAlertRecordResponse(I[I[IIIII)V
    .locals 0

    return-void
.end method

.method public parsedReadSingleSensorGlucoseDataRecordResponseData(I[I[III)V
    .locals 0

    .line 260
    const-class p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "<<<<  >>>>"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public parsedReadTwoByteSerialFlashRegisterResponse([I[I)V
    .locals 3

    .line 234
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->clinicalModeDuration:[I

    invoke-static {p2, v0}, Lcom/senseonics/util/Utils;->areArraysEqual([I[I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 235
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->dataIntFrom16BitsLSByteFirst([I)I

    move-result p1

    mul-int/lit8 p2, p1, 0x3c

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    .line 236
    sput-wide v0, Lcom/senseonics/util/Utils;->clinicalModeDuration:J

    .line 237
    const-class p2, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/senseonics/util/Utils;->clinicalModeDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "ClinicalModeDuration"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "ClinicalModeDuration"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 242
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    const-string p2, "ClinicalModeDuration"

    sget-wide v0, Lcom/senseonics/util/Utils;->clinicalModeDuration:J

    invoke-static {p1, p2, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public parsedWriteFourByteSerialFlashRegisterResponse([I[I)V
    .locals 5

    .line 337
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterNameFirst4Byte:[I

    invoke-static {p2, v0}, Lcom/senseonics/util/Utils;->areArraysEqual([I[I)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    const-string p2, ""

    .line 340
    aget v0, p1, v4

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p1, v4

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 342
    :cond_0
    aget v0, p1, v3

    if-eqz v0, :cond_1

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p1, v3

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 344
    :cond_1
    aget v0, p1, v2

    if-eqz v0, :cond_2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p1, v2

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 346
    :cond_2
    aget v0, p1, v1

    if-eqz v0, :cond_3

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    const-string p1, ""

    .line 349
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 350
    sput-object p2, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    goto/16 :goto_0

    .line 351
    :cond_4
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterNameLast4Byte:[I

    invoke-static {p2, v0}, Lcom/senseonics/util/Utils;->areArraysEqual([I[I)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, ""

    .line 354
    aget v0, p1, v4

    if-eqz v0, :cond_5

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p1, v4

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 356
    :cond_5
    aget v0, p1, v3

    if-eqz v0, :cond_6

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p1, v3

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 358
    :cond_6
    aget v0, p1, v2

    if-eqz v0, :cond_7

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p1, v2

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 360
    :cond_7
    aget v0, p1, v1

    if-eqz v0, :cond_8

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 363
    :cond_8
    sget-object p1, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 364
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    .line 366
    const-class p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    sget-object p2, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterNameChanged(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public parsedWriteNByteSerialFlashRegisterResponse([II)V
    .locals 1

    .line 322
    sget-boolean p1, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingRequestsInitialized:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 323
    sget p1, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    sub-int/2addr p1, p2

    sput p1, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    .line 325
    const-class p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "linkingPacketsNumber--: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget p1, Lcom/senseonics/bluetoothle/BluetoothUtils;->linkingPacketsNumber:I

    if-gtz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->writeNByteToTransmitterFinished()V

    :cond_0
    return-void
.end method
