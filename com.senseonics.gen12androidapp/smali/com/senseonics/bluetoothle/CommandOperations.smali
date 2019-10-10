.class public Lcom/senseonics/bluetoothle/CommandOperations;
.super Ljava/lang/Object;
.source "CommandOperations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static operationRespondToKeepAlive()[I
    .locals 6

    const/4 v0, 0x1

    .line 1414
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xd0

    aput v3, v1, v2

    .line 1416
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1417
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1419
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 1420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1422
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 1423
    aget v1, v1, v2

    aput v1, v0, v2

    .line 1425
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 1426
    aget v2, v3, v2

    aput v2, v0, v1

    .line 1427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 1428
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 1431
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToAssertSnoozeAgainstAlarm(I)[I
    .locals 6

    const/4 v0, 0x2

    .line 613
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x14

    aput v3, v1, v2

    const/4 v3, 0x1

    aput p0, v1, v3

    .line 617
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 618
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 620
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v3

    .line 622
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 624
    array-length v5, p0

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 625
    aget v5, v1, v2

    aput v5, v0, v2

    .line 626
    aget v1, v1, v3

    aput v1, v0, v3

    .line 628
    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x2

    .line 629
    aget v3, p0, v2

    aput v3, v0, v1

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    .line 631
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "COMMAND"

    .line 634
    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToChangeTimingParameters(I)[I
    .locals 6

    const/4 v0, 0x2

    .line 334
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x75

    aput v3, v1, v2

    const/4 v3, 0x1

    aput p0, v1, v3

    .line 338
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 339
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 341
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v3

    .line 343
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 345
    array-length v5, p0

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 346
    aget v5, v1, v2

    aput v5, v0, v2

    .line 347
    aget v1, v1, v3

    aput v1, v0, v3

    .line 349
    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x2

    .line 350
    aget v3, p0, v2

    aput v3, v0, v1

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v1

    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "COMMAND"

    .line 355
    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToClearErrorFlags()[I
    .locals 6

    const/4 v0, 0x1

    .line 149
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    .line 151
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 152
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 154
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 158
    aget v1, v1, v2

    aput v1, v0, v2

    .line 160
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 161
    aget v2, v3, v2

    aput v2, v0, v1

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 166
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToDisconnectBLESavingBondingInformation()[I
    .locals 6

    const/4 v0, 0x1

    .line 310
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x74

    aput v3, v1, v2

    .line 312
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 313
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 315
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 319
    aget v1, v1, v2

    aput v1, v0, v2

    .line 321
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 322
    aget v2, v3, v2

    aput v2, v0, v1

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 324
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 327
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToEnterDiagnosticMode()[I
    .locals 6

    const/4 v0, 0x1

    .line 38
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x76

    aput v3, v1, v2

    .line 40
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 41
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 43
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 47
    aget v1, v1, v2

    aput v1, v0, v2

    .line 49
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 50
    aget v2, v3, v2

    aput v2, v0, v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 55
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToExitDiagnosticMode()[I
    .locals 6

    const/4 v0, 0x1

    .line 62
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x77

    aput v3, v1, v2

    .line 64
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 65
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 67
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 71
    aget v1, v1, v2

    aput v1, v0, v2

    .line 73
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 74
    aget v2, v3, v2

    aput v2, v0, v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 79
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToForceGlucoseMeasurement()[I
    .locals 6

    const/4 v0, 0x2

    .line 1438
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1440
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v1

    .line 1441
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 1443
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const-string v2, "Calculated Command = "

    .line 1446
    array-length v3, v1

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 1448
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 1449
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 1450
    aget v5, v0, v4

    aput v5, v3, v4

    goto :goto_1

    .line 1452
    :cond_0
    array-length v5, v0

    sub-int v5, v4, v5

    aget v5, v1, v5

    aput v5, v3, v4

    .line 1454
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Linking"

    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ForceGlucoseMeasurement:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "COMMAND"

    .line 1458
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :array_0
    .array-data 4
        0x60
        0x18
    .end array-data
.end method

.method public static operationToLinkTransmitterWithSensor([I)[I
    .locals 6

    .line 86
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 87
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x5

    .line 91
    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 96
    array-length v1, p0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v4, 0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 97
    aget v5, p0, v1

    aput v5, v0, v4

    add-int/2addr v4, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 102
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 104
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 107
    array-length v3, p0

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v3, v3, [I

    .line 109
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 110
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 111
    aget v4, v0, v2

    aput v4, v3, v2

    goto :goto_2

    .line 113
    :cond_2
    array-length v4, v0

    sub-int v4, v2, v4

    aget v4, p0, v4

    aput v4, v3, v2

    .line 115
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v3, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "COMMAND"

    .line 118
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static operationToMarkPatientEventRecordAsDeleted([I)[I
    .locals 5

    .line 927
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 928
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 932
    new-array v0, v0, [I

    const/16 v2, 0x1d

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    .line 934
    aget v4, p0, v2

    aput v4, v0, v2

    .line 935
    aget p0, p0, v3

    aput p0, v0, v1

    .line 937
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 938
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 940
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 943
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 945
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 946
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 947
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 949
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 951
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

    .line 954
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToPingTransmitter()[I
    .locals 6

    const/4 v0, 0x1

    .line 14
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 16
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 17
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 19
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 23
    aget v1, v1, v2

    aput v1, v0, v2

    .line 25
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 26
    aget v2, v3, v2

    aput v2, v0, v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 31
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadAllAvailableSensorIDs()[I
    .locals 6

    const/4 v0, 0x1

    .line 197
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v1, v2

    .line 199
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 200
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 202
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 206
    aget v1, v1, v2

    aput v1, v0, v2

    .line 208
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 209
    aget v2, v3, v2

    aput v2, v0, v1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 211
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 214
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadAllSensorGlucoseDataInSpecifiedRange([I[I)[I
    .locals 6

    .line 427
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    array-length v0, p1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x7

    .line 432
    new-array v0, v0, [I

    const/16 v2, 0x70

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 434
    aget v2, p0, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 435
    aget v2, p0, v4

    const/4 v5, 0x2

    aput v2, v0, v5

    .line 436
    aget p0, p0, v5

    aput p0, v0, v1

    const/4 p0, 0x4

    .line 437
    aget v1, p1, v3

    aput v1, v0, p0

    const/4 p0, 0x5

    .line 438
    aget v1, p1, v4

    aput v1, v0, p0

    const/4 p0, 0x6

    .line 439
    aget p1, p1, v5

    aput p1, v0, p0

    .line 441
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 442
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 444
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 447
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [I

    .line 449
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 450
    array-length v2, v0

    if-ge v3, v2, :cond_1

    .line 451
    aget v2, v0, v3

    aput v2, v1, v3

    goto :goto_1

    .line 453
    :cond_1
    array-length v2, v0

    sub-int v2, v3, v2

    aget v2, p0, v2

    aput v2, v1, v3

    .line 455
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "Sync_Process"

    .line 458
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_2
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 428
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToReadCurrentTransmitterDateAndTime()[I
    .locals 6

    const/4 v0, 0x1

    .line 262
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x19

    aput v3, v1, v2

    .line 264
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 265
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 267
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 271
    aget v1, v1, v2

    aput v1, v0, v2

    .line 273
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 274
    aget v2, v3, v2

    aput v2, v0, v1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 276
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 279
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFirstAndLastBloodGlucoseDataRecordNumbers()[I
    .locals 6

    const/4 v0, 0x1

    .line 779
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x17

    aput v3, v1, v2

    .line 781
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 782
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 784
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 787
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 788
    aget v1, v1, v2

    aput v1, v0, v2

    .line 790
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 791
    aget v2, v3, v2

    aput v2, v0, v1

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 793
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 796
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFirstAndLastErrorLogRecordNumbers()[I
    .locals 6

    const/4 v0, 0x1

    .line 1073
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x27

    aput v3, v1, v2

    .line 1075
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1076
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1078
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 1079
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1081
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 1082
    aget v1, v1, v2

    aput v1, v0, v2

    .line 1084
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 1085
    aget v2, v3, v2

    aput v2, v0, v1

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 1087
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 1090
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFirstAndLastMiscEventLogRecordNumbers()[I
    .locals 6

    const/4 v0, 0x1

    .line 999
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x23

    aput v3, v1, v2

    .line 1001
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1002
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1004
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 1005
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1007
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 1008
    aget v1, v1, v2

    aput v1, v0, v2

    .line 1010
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 1011
    aget v2, v3, v2

    aput v2, v0, v1

    .line 1012
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 1013
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 1016
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFirstAndLastSensorGlucoseAlertRecordNumbers()[I
    .locals 6

    const/4 v0, 0x1

    .line 552
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x12

    aput v3, v1, v2

    .line 554
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 555
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 557
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 558
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 560
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 561
    aget v1, v1, v2

    aput v1, v0, v2

    .line 563
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 564
    aget v2, v3, v2

    aput v2, v0, v1

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 566
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 569
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFirstAndLastSensorGlucoseRecordNumbers()[I
    .locals 6

    const/4 v0, 0x1

    .line 465
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe

    aput v3, v1, v2

    .line 467
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 468
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 470
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 473
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 474
    aget v1, v1, v2

    aput v1, v0, v2

    .line 476
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 477
    aget v2, v3, v2

    aput v2, v0, v1

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 479
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 482
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFourByteSerialFlashRegister([I)[I
    .locals 6

    .line 1249
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 1250
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    .line 1254
    new-array v0, v0, [I

    const/16 v2, 0x2e

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x2

    .line 1256
    aget v4, p0, v2

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 1257
    aget v4, p0, v5

    aput v4, v0, v2

    .line 1258
    aget p0, p0, v3

    aput p0, v0, v1

    .line 1260
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1261
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1263
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 1266
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 1268
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 1269
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1270
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 1272
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 1274
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

    .line 1277
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToReadLogOfBloodGlucoseDataInSpecifiedRange([I[I)[I
    .locals 5

    .line 804
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    array-length v0, p1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x5

    .line 809
    new-array v0, v0, [I

    const/16 v2, 0x72

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 811
    aget v2, p0, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 812
    aget p0, p0, v4

    aput p0, v0, v1

    const/4 p0, 0x3

    .line 813
    aget v1, p1, v3

    aput v1, v0, p0

    const/4 p0, 0x4

    .line 814
    aget p1, p1, v4

    aput p1, v0, p0

    .line 816
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 817
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 819
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 822
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [I

    .line 824
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 825
    array-length v2, v0

    if-ge v3, v2, :cond_1

    .line 826
    aget v2, v0, v3

    aput v2, v1, v3

    goto :goto_1

    .line 828
    :cond_1
    array-length v2, v0

    sub-int v2, v3, v2

    aget v2, p0, v2

    aput v2, v1, v3

    .line 830
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "COMMAND"

    .line 833
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_2
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 805
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToReadMostRecentGlucoseData()[I
    .locals 6

    const/4 v0, 0x1

    .line 366
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput v3, v1, v2

    .line 368
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 369
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 371
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 375
    aget v1, v1, v2

    aput v1, v0, v2

    .line 377
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 378
    aget v2, v3, v2

    aput v2, v0, v1

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 380
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 383
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadNByteSerialFlashRegister([II)[I
    .locals 7

    .line 1325
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    if-lt p1, v0, :cond_3

    const/high16 v2, 0x10000

    if-le p1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x6

    .line 1330
    new-array v2, v2, [I

    const/16 v3, 0x30

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x2

    .line 1332
    aget v5, p0, v3

    const/4 v6, 0x1

    aput v5, v2, v6

    .line 1333
    aget v5, p0, v6

    aput v5, v2, v3

    .line 1334
    aget p0, p0, v4

    aput p0, v2, v1

    .line 1336
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1338
    aget p1, p0, v4

    aput p1, v2, v0

    const/4 p1, 0x5

    .line 1339
    aget p0, p0, v6

    aput p0, v2, p1

    .line 1341
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1342
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1344
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 1347
    array-length v0, p0

    array-length v1, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 1349
    :goto_0
    array-length v1, v0

    if-ge v4, v1, :cond_2

    .line 1350
    array-length v1, v2

    if-ge v4, v1, :cond_1

    .line 1351
    aget v1, v2, v4

    aput v1, v0, v4

    goto :goto_1

    .line 1353
    :cond_1
    array-length v1, v2

    sub-int v1, v4, v1

    aget v1, p0, v1

    aput v1, v0, v4

    .line 1355
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "COMMAND"

    .line 1358
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :goto_2
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 1326
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToReadSensorGlucoseAlertLogInSpecifiedRange([I[I)[I
    .locals 5

    .line 577
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    array-length v0, p1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x5

    .line 582
    new-array v0, v0, [I

    const/16 v2, 0x71

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 584
    aget v2, p0, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 585
    aget p0, p0, v4

    aput p0, v0, v1

    const/4 p0, 0x3

    .line 586
    aget v1, p1, v3

    aput v1, v0, p0

    const/4 p0, 0x4

    .line 587
    aget p1, p1, v4

    aput p1, v0, p0

    .line 589
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 590
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 592
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 595
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [I

    .line 597
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 598
    array-length v2, v0

    if-ge v3, v2, :cond_1

    .line 599
    aget v2, v0, v3

    aput v2, v1, v3

    goto :goto_1

    .line 601
    :cond_1
    array-length v2, v0

    sub-int v2, v3, v2

    aget v2, p0, v2

    aput v2, v1, v3

    .line 603
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "COMMAND"

    .line 606
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_2
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 578
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToReadSensorGlucoseAlertsAndStatus()[I
    .locals 6

    const/4 v0, 0x1

    .line 493
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x10

    aput v3, v1, v2

    .line 495
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 496
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 498
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 501
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 502
    aget v1, v1, v2

    aput v1, v0, v2

    .line 504
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 505
    aget v2, v3, v2

    aput v2, v0, v1

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 507
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 510
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadSingleBloodGlucoseDataRecord([I)[I
    .locals 5

    .line 745
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 746
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 750
    new-array v0, v0, [I

    const/16 v2, 0x16

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    .line 752
    aget v4, p0, v2

    aput v4, v0, v2

    .line 753
    aget p0, p0, v3

    aput p0, v0, v1

    .line 755
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 756
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 758
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 761
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 763
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 764
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 765
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 767
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 769
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

    .line 772
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToReadSingleByteSerialFlashRegister([I)[I
    .locals 6

    .line 1102
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 1103
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    .line 1107
    new-array v0, v0, [I

    const/16 v2, 0x2a

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x2

    .line 1109
    aget v4, p0, v2

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 1110
    aget v4, p0, v5

    aput v4, v0, v2

    .line 1111
    aget p0, p0, v3

    aput p0, v0, v1

    .line 1113
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1114
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1116
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 1119
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 1121
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 1122
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1123
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 1125
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 1127
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

    .line 1130
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToReadSingleMiscEventLog([I)[I
    .locals 5

    .line 965
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 966
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 970
    new-array v0, v0, [I

    const/16 v2, 0x22

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    .line 972
    aget v4, p0, v2

    aput v4, v0, v2

    .line 973
    aget p0, p0, v3

    aput p0, v0, v1

    .line 975
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 976
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 978
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 981
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 983
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 984
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 985
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 987
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 989
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

    .line 992
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToReadSinglePatientEvent([I)[I
    .locals 5

    .line 891
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 892
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 896
    new-array v0, v0, [I

    const/16 v2, 0x1b

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    .line 898
    aget v4, p0, v2

    aput v4, v0, v2

    .line 899
    aget p0, p0, v3

    aput p0, v0, v1

    .line 901
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 902
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 904
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 907
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 909
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 910
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 911
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 913
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 915
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

    .line 918
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToReadSingleSensorGlucoseAlertRecord([I)[I
    .locals 5

    .line 518
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 519
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    .line 523
    new-array v0, v0, [I

    const/16 v2, 0x11

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    .line 525
    aget v4, p0, v2

    aput v4, v0, v2

    .line 526
    aget p0, p0, v3

    aput p0, v0, v1

    .line 528
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 529
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 531
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 534
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 536
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 537
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 538
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 540
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 542
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

    .line 545
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToReadSingleSensorGlucoseDataValue([I)[I
    .locals 5

    .line 391
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 392
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    .line 396
    new-array v0, v0, [I

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 398
    aget v2, p0, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 399
    aget v2, p0, v4

    const/4 v4, 0x2

    aput v2, v0, v4

    .line 400
    aget p0, p0, v4

    aput p0, v0, v1

    .line 402
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 403
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 405
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 408
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 410
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 411
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 412
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 414
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 416
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

    .line 419
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToReadTwoByteSerialFlashRegister([I)[I
    .locals 6

    .line 1175
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string v0, "Parameter length error!"

    .line 1176
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    .line 1180
    new-array v0, v0, [I

    const/16 v2, 0x2c

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x2

    .line 1182
    aget v4, p0, v2

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 1183
    aget v4, p0, v5

    aput v4, v0, v2

    .line 1184
    aget p0, p0, v3

    aput p0, v0, v1

    .line 1186
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1187
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1189
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "Calculated Command ="

    .line 1192
    array-length v2, p0

    array-length v4, v0

    add-int/2addr v2, v4

    new-array v2, v2, [I

    .line 1194
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 1195
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1196
    aget v4, v0, v3

    aput v4, v2, v3

    goto :goto_1

    .line 1198
    :cond_1
    array-length v4, v0

    sub-int v4, v3, v4

    aget v4, p0, v4

    aput v4, v2, v3

    .line 1200
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

    .line 1203
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToResetTransmitter()[I
    .locals 6

    const/4 v0, 0x1

    .line 125
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 127
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 128
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 130
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 134
    aget v1, v1, v2

    aput v1, v0, v2

    .line 136
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 137
    aget v2, v3, v2

    aput v2, v0, v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 142
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToSaveBLEBondingInformation()[I
    .locals 6

    const/4 v0, 0x1

    .line 286
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x69

    aput v3, v1, v2

    .line 288
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 289
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 291
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 295
    aget v1, v1, v2

    aput v1, v0, v2

    .line 297
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 298
    aget v2, v3, v2

    aput v2, v0, v1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 300
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 303
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToSendBloodGlucoseValueToTransmitter([I[I[II[IZ)[I
    .locals 5

    .line 647
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    array-length v0, p1

    if-ne v0, v1, :cond_4

    array-length v0, p2

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0xb

    .line 652
    new-array v0, v0, [I

    const/16 v2, 0x15

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 654
    aget v2, p0, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 655
    aget p0, p0, v4

    aput p0, v0, v1

    const/4 p0, 0x3

    .line 656
    aget v1, p1, v3

    aput v1, v0, p0

    const/4 p0, 0x4

    .line 657
    aget p1, p1, v4

    aput p1, v0, p0

    const/4 p0, 0x5

    .line 658
    aget p1, p2, v3

    aput p1, v0, p0

    const/4 p0, 0x6

    .line 659
    aget p1, p2, v4

    aput p1, v0, p0

    const/4 p0, 0x7

    aput p3, v0, p0

    const/16 p0, 0x8

    .line 661
    aget p1, p4, v4

    aput p1, v0, p0

    const/16 p0, 0x9

    .line 662
    aget p1, p4, v3

    aput p1, v0, p0

    const/16 p0, 0xa

    if-eqz p5, :cond_1

    const/16 p1, 0x55

    aput p1, v0, p0

    goto :goto_0

    :cond_1
    aput v3, v0, p0

    .line 669
    :goto_0
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 670
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 672
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 675
    array-length p2, p0

    array-length p3, v0

    add-int/2addr p2, p3

    new-array p2, p2, [I

    .line 677
    :goto_1
    array-length p3, p2

    if-ge v3, p3, :cond_3

    .line 678
    array-length p3, v0

    if-ge v3, p3, :cond_2

    .line 679
    aget p3, v0, v3

    aput p3, p2, v3

    goto :goto_2

    .line 681
    :cond_2
    array-length p3, v0

    sub-int p3, v3, p3

    aget p3, p0, p3

    aput p3, p2, v3

    .line 683
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "COMMAND"

    .line 686
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_4
    :goto_3
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 648
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToSendBloodGlucoseValueWithTwoTimestampsToTransmitter([I[I[I[I[II[IZ)[I
    .locals 5

    .line 695
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    array-length v0, p1

    if-ne v0, v1, :cond_4

    array-length v0, p2

    if-ne v0, v1, :cond_4

    array-length v0, p3

    if-ne v0, v1, :cond_4

    array-length v0, p4

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0xf

    .line 700
    new-array v0, v0, [I

    const/16 v2, 0x3c

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 702
    aget v2, p0, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 703
    aget p0, p0, v4

    aput p0, v0, v1

    const/4 p0, 0x3

    .line 704
    aget v1, p1, v3

    aput v1, v0, p0

    const/4 p0, 0x4

    .line 705
    aget p1, p1, v4

    aput p1, v0, p0

    const/4 p0, 0x5

    .line 706
    aget p1, p2, v3

    aput p1, v0, p0

    const/4 p0, 0x6

    .line 707
    aget p1, p2, v4

    aput p1, v0, p0

    const/4 p0, 0x7

    .line 708
    aget p1, p3, v3

    aput p1, v0, p0

    const/16 p0, 0x8

    .line 709
    aget p1, p3, v4

    aput p1, v0, p0

    const/16 p0, 0x9

    .line 710
    aget p1, p4, v3

    aput p1, v0, p0

    const/16 p0, 0xa

    .line 711
    aget p1, p4, v4

    aput p1, v0, p0

    const/16 p0, 0xb

    aput p5, v0, p0

    const/16 p0, 0xc

    .line 713
    aget p1, p6, v4

    aput p1, v0, p0

    const/16 p0, 0xd

    .line 714
    aget p1, p6, v3

    aput p1, v0, p0

    const/16 p0, 0xe

    if-eqz p7, :cond_1

    const/16 p1, 0x55

    aput p1, v0, p0

    goto :goto_0

    :cond_1
    aput v3, v0, p0

    .line 721
    :goto_0
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 722
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    const-string p1, "Calculated Command ="

    .line 726
    array-length p2, p0

    array-length p3, v0

    add-int/2addr p2, p3

    new-array p2, p2, [I

    .line 728
    :goto_1
    array-length p3, p2

    if-ge v3, p3, :cond_3

    .line 729
    array-length p3, v0

    if-ge v3, p3, :cond_2

    .line 730
    aget p3, v0, v3

    aput p3, p2, v3

    goto :goto_2

    .line 732
    :cond_2
    array-length p3, v0

    sub-int p3, v3, p3

    aget p3, p0, p3

    aput p3, p2, v3

    .line 734
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "COMMAND"

    .line 737
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_4
    :goto_3
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 696
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToSetTransmitterDateAndTime([I[I[II)[I
    .locals 6

    .line 222
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    array-length v0, p1

    if-ne v0, v1, :cond_3

    array-length v0, p2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x8

    .line 228
    new-array v0, v0, [I

    const/4 v2, 0x7

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 230
    aget v4, p0, v3

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 231
    aget p0, p0, v5

    aput p0, v0, v1

    const/4 p0, 0x3

    .line 232
    aget v1, p1, v3

    aput v1, v0, p0

    const/4 p0, 0x4

    .line 233
    aget p1, p1, v5

    aput p1, v0, p0

    const/4 p0, 0x5

    .line 234
    aget p1, p2, v3

    aput p1, v0, p0

    const/4 p0, 0x6

    .line 235
    aget p1, p2, v5

    aput p1, v0, p0

    aput p3, v0, v2

    .line 238
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 239
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 241
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 244
    array-length p2, p0

    array-length p3, v0

    add-int/2addr p2, p3

    new-array p2, p2, [I

    .line 246
    :goto_0
    array-length p3, p2

    if-ge v3, p3, :cond_2

    .line 247
    array-length p3, v0

    if-ge v3, p3, :cond_1

    .line 248
    aget p3, v0, v3

    aput p3, p2, v3

    goto :goto_1

    .line 250
    :cond_1
    array-length p3, v0

    sub-int p3, v3, p3

    aget p3, p0, p3

    aput p3, p2, v3

    .line 252
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "COMMAND"

    .line 255
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_3
    :goto_2
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 224
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToStartSelfTestSequence()[I
    .locals 6

    const/4 v0, 0x1

    .line 173
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v3, v1, v2

    .line 175
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 176
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 178
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    .line 182
    aget v1, v1, v2

    aput v1, v0, v2

    .line 184
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 185
    aget v2, v3, v2

    aput v2, v0, v1

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    .line 187
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 190
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToWriteFourByteSerialFlashRegister([I[I)[I
    .locals 7

    .line 1285
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    array-length v0, p1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x8

    .line 1290
    new-array v0, v0, [I

    const/16 v3, 0x2f

    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x2

    .line 1292
    aget v5, p0, v3

    const/4 v6, 0x1

    aput v5, v0, v6

    .line 1293
    aget v5, p0, v6

    aput v5, v0, v3

    .line 1294
    aget p0, p0, v4

    aput p0, v0, v1

    .line 1295
    aget p0, p1, v4

    aput p0, v0, v2

    const/4 p0, 0x5

    .line 1296
    aget v2, p1, v6

    aput v2, v0, p0

    const/4 p0, 0x6

    .line 1297
    aget v2, p1, v3

    aput v2, v0, p0

    const/4 p0, 0x7

    .line 1298
    aget p1, p1, v1

    aput p1, v0, p0

    .line 1300
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1301
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1303
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 1306
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [I

    .line 1308
    :goto_0
    array-length v2, v1

    if-ge v4, v2, :cond_2

    .line 1309
    array-length v2, v0

    if-ge v4, v2, :cond_1

    .line 1310
    aget v2, v0, v4

    aput v2, v1, v4

    goto :goto_1

    .line 1312
    :cond_1
    array-length v2, v0

    sub-int v2, v4, v2

    aget v2, p0, v2

    aput v2, v1, v4

    .line 1314
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "COMMAND"

    .line 1317
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_2
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 1286
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToWriteNByteSerialFlashRegister([II[I)[I
    .locals 7

    .line 1366
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/4 v0, 0x4

    if-lt p1, v0, :cond_4

    const/high16 v2, 0x10000

    if-gt p1, v2, :cond_4

    array-length v2, p2

    if-eq v2, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v2, p1, 0x6

    .line 1372
    new-array v2, v2, [I

    const/16 v3, 0x31

    const/4 v4, 0x0

    .line 1373
    aput v3, v2, v4

    const/4 v3, 0x2

    .line 1374
    aget v5, p0, v3

    const/4 v6, 0x1

    aput v5, v2, v6

    .line 1375
    aget v5, p0, v6

    aput v5, v2, v3

    .line 1376
    aget p0, p0, v4

    aput p0, v2, v1

    .line 1378
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1380
    aget v1, p0, v4

    aput v1, v2, v0

    const/4 v0, 0x5

    .line 1381
    aget p0, p0, v6

    aput p0, v2, v0

    const/4 p0, 0x6

    const/4 p0, 0x0

    const/4 v0, 0x6

    :goto_0
    if-ge p0, p1, :cond_1

    .line 1385
    aget v1, p2, p0

    aput v1, v2, v0

    add-int/2addr v0, v6

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 1389
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1390
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1392
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 1395
    array-length p2, p0

    array-length v0, v2

    add-int/2addr p2, v0

    new-array p2, p2, [I

    .line 1397
    :goto_1
    array-length v0, p2

    if-ge v4, v0, :cond_3

    .line 1398
    array-length v0, v2

    if-ge v4, v0, :cond_2

    .line 1399
    aget v0, v2, v4

    aput v0, p2, v4

    goto :goto_2

    .line 1401
    :cond_2
    array-length v0, v2

    sub-int v0, v4, v0

    aget v0, p0, v0

    aput v0, p2, v4

    .line 1403
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "COMMAND"

    .line 1406
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_4
    :goto_3
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 1368
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToWritePatientEvent([I[IIII)[I
    .locals 5

    .line 845
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    array-length v0, p1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 851
    :cond_0
    invoke-static {p3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p3

    .line 853
    invoke-static {p4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p4

    const/16 v0, 0xb

    .line 855
    new-array v0, v0, [I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 857
    aget v2, p0, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 858
    aget p0, p0, v4

    aput p0, v0, v1

    const/4 p0, 0x3

    .line 859
    aget v1, p1, v3

    aput v1, v0, p0

    const/4 p0, 0x4

    .line 860
    aget p1, p1, v4

    aput p1, v0, p0

    const/4 p0, 0x5

    aput p2, v0, p0

    const/4 p0, 0x6

    .line 862
    aget p1, p3, v3

    aput p1, v0, p0

    const/4 p0, 0x7

    .line 863
    aget p1, p3, v4

    aput p1, v0, p0

    const/16 p0, 0x8

    .line 864
    aget p1, p4, v3

    aput p1, v0, p0

    const/16 p0, 0x9

    .line 865
    aget p1, p4, v4

    aput p1, v0, p0

    .line 867
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 868
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 870
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 873
    array-length p2, p0

    array-length p3, v0

    add-int/2addr p2, p3

    new-array p2, p2, [I

    .line 875
    :goto_0
    array-length p3, p2

    if-ge v3, p3, :cond_2

    .line 876
    array-length p3, v0

    if-ge v3, p3, :cond_1

    .line 877
    aget p3, v0, v3

    aput p3, p2, v3

    goto :goto_1

    .line 879
    :cond_1
    array-length p3, v0

    sub-int p3, v3, p3

    aget p3, p0, p3

    aput p3, p2, v3

    .line 881
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "COMMAND"

    .line 884
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_3
    :goto_2
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 846
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToWriteSingleByteSerialFlashRegister([II)[I
    .locals 6

    .line 1138
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 1139
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x5

    .line 1143
    new-array v0, v0, [I

    const/16 v2, 0x2b

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x2

    .line 1145
    aget v4, p0, v2

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 1146
    aget v4, p0, v5

    aput v4, v0, v2

    .line 1147
    aget p0, p0, v3

    aput p0, v0, v1

    const/4 p0, 0x4

    aput p1, v0, p0

    .line 1150
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1151
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1153
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 1156
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [I

    .line 1158
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 1159
    array-length v2, v0

    if-ge v3, v2, :cond_1

    .line 1160
    aget v2, v0, v3

    aput v2, v1, v3

    goto :goto_1

    .line 1162
    :cond_1
    array-length v2, v0

    sub-int v2, v3, v2

    aget v2, p0, v2

    aput v2, v1, v3

    .line 1164
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "COMMAND"

    .line 1167
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static operationToWriteSingleMiscEventLogRecord([I[I[I[I)[I
    .locals 5

    .line 1024
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    array-length v0, p1

    if-ne v0, v1, :cond_4

    array-length v0, p2

    if-ne v0, v1, :cond_4

    array-length v0, p3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0xf

    .line 1030
    new-array v0, v0, [I

    const/16 v2, 0x24

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    .line 1032
    aget v4, p0, v2

    aput v4, v0, v2

    .line 1033
    aget p0, p0, v3

    aput p0, v0, v1

    const/4 p0, 0x3

    .line 1034
    aget v1, p1, v2

    aput v1, v0, p0

    const/4 p0, 0x4

    .line 1035
    aget p1, p1, v3

    aput p1, v0, p0

    const/4 p0, 0x5

    .line 1036
    aget p1, p2, v2

    aput p1, v0, p0

    const/4 p0, 0x6

    .line 1037
    aget p1, p2, v3

    aput p1, v0, p0

    const/4 p0, 0x7

    .line 1040
    array-length p1, p3

    sub-int/2addr p1, v2

    :goto_0
    if-ltz p1, :cond_1

    .line 1041
    aget p2, p3, p1

    aput p2, v0, p0

    add-int/2addr p0, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1045
    :cond_1
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1046
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1048
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 1051
    array-length p2, p0

    array-length p3, v0

    add-int/2addr p2, p3

    new-array p2, p2, [I

    .line 1053
    :goto_1
    array-length p3, p2

    if-ge v3, p3, :cond_3

    .line 1054
    array-length p3, v0

    if-ge v3, p3, :cond_2

    .line 1055
    aget p3, v0, v3

    aput p3, p2, v3

    goto :goto_2

    .line 1057
    :cond_2
    array-length p3, v0

    sub-int p3, v3, p3

    aget p3, p0, p3

    aput p3, p2, v3

    .line 1059
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p2, v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "COMMAND"

    .line 1062
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_4
    :goto_3
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 1026
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToWriteTwoByteSerialFlashRegister([I[I)[I
    .locals 6

    .line 1211
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    array-length v0, p1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x6

    .line 1216
    new-array v0, v0, [I

    const/16 v3, 0x2d

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 1218
    aget v3, p0, v2

    const/4 v5, 0x1

    aput v3, v0, v5

    .line 1219
    aget v3, p0, v5

    aput v3, v0, v2

    .line 1220
    aget p0, p0, v4

    aput p0, v0, v1

    const/4 p0, 0x4

    .line 1221
    aget v1, p1, v4

    aput v1, v0, p0

    const/4 p0, 0x5

    .line 1222
    aget p1, p1, v5

    aput p1, v0, p0

    .line 1224
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1225
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1227
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    const-string p1, "Calculated Command ="

    .line 1230
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [I

    .line 1232
    :goto_0
    array-length v2, v1

    if-ge v4, v2, :cond_2

    .line 1233
    array-length v2, v0

    if-ge v4, v2, :cond_1

    .line 1234
    aget v2, v0, v4

    aput v2, v1, v4

    goto :goto_1

    .line 1236
    :cond_1
    array-length v2, v0

    sub-int v2, v4, v2

    aget v2, p0, v2

    aput v2, v1, v4

    .line 1238
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "COMMAND"

    .line 1241
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_2
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 1212
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
