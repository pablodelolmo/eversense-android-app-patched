.class public Lcom/senseonics/model/SyncingParsedResponse;
.super Ljava/lang/Object;
.source "SyncingParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;Lcom/senseonics/db/DatabaseManager;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 41
    iput-object p2, p0, Lcom/senseonics/model/SyncingParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    .line 42
    iput-object p3, p0, Lcom/senseonics/model/SyncingParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 43
    iput-object p4, p0, Lcom/senseonics/model/SyncingParsedResponse;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private afterSyncDataParsed()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->shouldPostSyncingProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#3640_2"

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterSyncDataParsed, sync percent 1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v2}, Lcom/senseonics/model/SyncModel;->getSyncingPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/senseonics/model/SyncingParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SyncingProgressUpdateEvent;

    invoke-direct {v1}, Lcom/senseonics/events/SyncingProgressUpdateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->shouldPostRefreshGraph()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#3640_2"

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterSyncDataParsed, sync percent 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v2}, Lcom/senseonics/model/SyncModel;->getSyncingPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/senseonics/model/SyncingParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;

    invoke-direct {v1}, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v1}, Lcom/senseonics/model/SyncModel;->isSyncFinished()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v1}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 299
    invoke-static {}, Lcom/senseonics/util/Utils;->getLocalTimeInMillisAdjustedToGMT()J

    move-result-wide v0

    .line 300
    iget-object v2, p0, Lcom/senseonics/model/SyncingParsedResponse;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_syncing_gmt_millis"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method

.method private parseReadAllSensorGlucoseAlertsInSpecifiedRangeResponseData([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 13

    const/4 v0, 0x1

    .line 229
    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    .line 231
    new-array v1, v2, [I

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v3, 0x4

    aget v3, p1, v3

    aput v3, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v7

    .line 233
    new-array v1, v2, [I

    const/4 v2, 0x5

    aget v2, p1, v2

    aput v2, v1, v5

    const/4 v2, 0x6

    aget v2, p1, v2

    aput v2, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    const/4 v1, 0x7

    .line 235
    aget v9, p1, v1

    .line 236
    aget v1, p1, v4

    const/16 v2, 0x9

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v10, v1, v2

    const/16 v1, 0xa

    .line 237
    aget v1, p1, v1

    const/16 v2, 0xb

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v11, v1, v2

    const/16 v1, 0xc

    .line 238
    aget v1, p1, v1

    const/16 v2, 0xd

    aget p1, p1, v2

    shl-int/2addr p1, v4

    or-int v12, v1, p1

    .line 241
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_0

    .line 242
    invoke-virtual {p2, v6}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedAlertRecord(I)V

    :cond_0
    move-object v5, p0

    .line 245
    invoke-direct/range {v5 .. v12}, Lcom/senseonics/model/SyncingParsedResponse;->parsedReadAllSensorGlucoseAlertsInSpecifiedRangeResponse(I[I[IIIII)V

    return-void
.end method

.method private parseReadAllSensorGlucoseDataInSpecifiedRangeResponseData([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 11

    const/4 v0, 0x1

    .line 318
    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget v3, p1, v3

    shl-int/lit8 v3, v3, 0x10

    or-int v6, v1, v3

    .line 319
    new-array v1, v2, [I

    const/4 v3, 0x4

    aget v3, p1, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v3, 0x5

    aget v3, p1, v3

    aput v3, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v7

    .line 320
    new-array v1, v2, [I

    const/4 v2, 0x6

    aget v2, p1, v2

    aput v2, v1, v5

    const/4 v2, 0x7

    aget v2, p1, v2

    aput v2, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    .line 321
    aget v1, p1, v4

    const/16 v2, 0x9

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v9, v1, v2

    const/16 v1, 0xa

    .line 322
    aget v10, p1, v1

    .line 325
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_0

    .line 326
    invoke-virtual {p2, v6}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedSensorRecord(I)V

    :cond_0
    move-object v5, p0

    .line 329
    invoke-direct/range {v5 .. v10}, Lcom/senseonics/model/SyncingParsedResponse;->parsedReadAllSensorGlucoseDataInSpecifiedRangeResponse(I[I[III)V

    return-void
.end method

.method private parseReadLogOfBloodGlucoseDataInSpecifiedRangeResponseData([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 15

    const/4 v1, 0x1

    .line 94
    aget v2, p1, v1

    const/4 v3, 0x2

    aget v4, p1, v3

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int v7, v2, v4

    .line 96
    new-array v2, v3, [I

    const/4 v4, 0x3

    aget v4, p1, v4

    const/4 v6, 0x0

    aput v4, v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    aput v4, v2, v1

    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v8

    .line 98
    new-array v2, v3, [I

    const/4 v3, 0x5

    aget v3, p1, v3

    aput v3, v2, v6

    const/4 v3, 0x6

    aget v3, p1, v3

    aput v3, v2, v1

    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v9

    const/4 v2, 0x7

    .line 100
    aget v2, p1, v2

    aget v3, p1, v5

    shl-int/2addr v3, v5

    or-int v10, v2, v3

    const/16 v2, 0x9

    .line 101
    aget v2, p1, v2

    const/16 v3, 0xa

    aget v3, p1, v3

    shl-int/2addr v3, v5

    or-int v11, v2, v3

    const/16 v2, 0xb

    .line 102
    aget v12, p1, v2

    const/16 v2, 0xc

    .line 103
    aget v2, p1, v2

    const/16 v3, 0xd

    aget v3, p1, v3

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0xe

    aget v0, p1, v3

    shl-int/lit8 v0, v0, 0x10

    or-int v13, v2, v0

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result v0

    add-int/2addr v0, v1

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p2

    .line 108
    invoke-virtual {v0, v7}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedBloodGlucoseRecord(I)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    :goto_0
    move-object v6, p0

    move-object v14, v0

    .line 111
    invoke-direct/range {v6 .. v14}, Lcom/senseonics/model/SyncingParsedResponse;->parsedReadLogOfBloodGlucoseDataInSpecifiedRangeResponse(I[I[IIIIILcom/senseonics/model/TransmitterStateModel;)V

    return-void
.end method

.method private parsedReadAllSensorGlucoseAlertsInSpecifiedRangeResponse(I[I[IIIII)V
    .locals 7

    .line 256
    invoke-static {p2, p3}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v3

    .line 257
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GMT"

    .line 258
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/senseonics/util/Utils;->formatDate_TimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p3

    .line 257
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sensorGlucoseAlertLogRecordType: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sensorGlucoseValue: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sensorGlucoseRateValue: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "alertThresholdOrTimeInterval: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :try_start_0
    invoke-static {p4}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->findBy(I)Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/model/SyncingParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    move v2, p5

    move v4, p7

    move v5, p1

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->save(Lcom/senseonics/db/DatabaseManager;ILjava/util/Calendar;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    const-class p1, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected code from transmitter : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/model/SyncingParsedResponse;->afterSyncDataParsed()V

    return-void
.end method

.method private parsedReadAllSensorGlucoseDataInSpecifiedRangeResponse(I[I[III)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p4

    .line 337
    const-class v4, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<<<<<>>>>>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 339
    aget v5, p2, v4

    const/4 v10, 0x1

    .line 340
    aget v6, p2, v10

    const/4 v7, 0x2

    .line 341
    aget v11, p2, v7

    .line 342
    aget v4, p3, v4

    .line 343
    aget v12, p3, v10

    .line 344
    aget v7, p3, v7

    .line 346
    invoke-static/range {p2 .. p3}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v2

    .line 347
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 349
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 350
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .line 351
    sget-object v15, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    move/from16 v16, v11

    int-to-long v10, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v10, v11, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    long-to-int v3, v10

    int-to-long v10, v3

    .line 354
    sget-wide v17, Lcom/senseonics/graph/util/GraphUtils;->HOUR:J

    mul-long v10, v10, v17

    .line 355
    const-class v3, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide/from16 v19, v13

    const-string v13, " "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    add-long/2addr v13, v10

    .line 358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 359
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 360
    invoke-virtual {v10, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0x10

    .line 361
    invoke-virtual {v10, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v13, v3

    .line 362
    const-class v3, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ---- "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    add-long v13, v17, v13

    invoke-virtual {v10, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 366
    const-class v3, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " //// "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v16

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " recordNumber: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :try_start_0
    iget-object v3, v1, Lcom/senseonics/model/SyncingParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    move-wide/from16 v4, v19

    invoke-virtual {v3, v4, v5, v8}, Lcom/senseonics/db/DatabaseManager;->allowAddingGlucoseReading(JI)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Add Glucose Database"

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync: ADD NEW "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "|record:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v11, v1, Lcom/senseonics/model/SyncingParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    new-instance v12, Lcom/senseonics/graph/util/Glucose;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/4 v6, -0x1

    move-object v2, v12

    move v5, v9

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-virtual {v11, v12}, Lcom/senseonics/db/DatabaseManager;->addReadingInGMT(Lcom/senseonics/graph/util/Glucose;)V

    .line 380
    sget-object v7, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    const/4 v2, 0x0

    packed-switch p5, :pswitch_data_0

    :goto_0
    move-object v6, v2

    goto :goto_1

    .line 387
    :pswitch_0
    sget-object v2, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_0

    .line 384
    :pswitch_1
    sget-object v2, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_0

    :goto_1
    if-eqz v6, :cond_0

    .line 391
    new-instance v11, Lcom/senseonics/events/AlertEventPoint;

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-object v2, v11

    move-object v4, v10

    move v5, v9

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 394
    iget-object v2, v1, Lcom/senseonics/model/SyncingParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v11, v3}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 398
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 399
    const-class v3, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    :goto_2
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glucoseRecordNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct/range {p0 .. p0}, Lcom/senseonics/model/SyncingParsedResponse;->afterSyncDataParsed()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parsedReadLogOfBloodGlucoseDataInSpecifiedRangeResponse(I[I[IIIIILcom/senseonics/model/TransmitterStateModel;)V
    .locals 6

    .line 120
    const-class p7, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p7

    const-string v0, "---------------------------------"

    invoke-static {p7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p2, p3}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object p2

    .line 123
    const-class p3, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const-string p7, "GMT"

    .line 124
    invoke-static {p7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p7

    invoke-static {p2, p7}, Lcom/senseonics/util/Utils;->formatDate_TimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p7

    .line 123
    invoke-static {p3, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p6}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object p3

    .line 128
    const-class p7, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BGM-> recordNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bloodGlucoseValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", meterIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", calUseFlags: "

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ""

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p7, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p8}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-lez p5, :cond_0

    .line 132
    iget-object p5, p0, Lcom/senseonics/model/SyncingParsedResponse;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p7, "calibrationDateTime"

    invoke-interface {p5, p7, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 133
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {p5, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long p5, v0, v2

    if-gez p5, :cond_0

    .line 134
    invoke-virtual {p8}, Lcom/senseonics/model/TransmitterStateModel;->cancelOngoingCalibration()V

    :cond_0
    const-string p5, ""

    .line 185
    sget-object p7, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    if-ne p3, p7, :cond_1

    .line 187
    iget-object v0, p0, Lcom/senseonics/model/SyncingParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 188
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-object p5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 190
    invoke-virtual {p5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v4

    sget-object p5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 191
    invoke-virtual {p5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v5

    move v3, p4

    .line 187
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/db/DatabaseManager;->hideCalibrationEventAndGetNotesDuringSync(JIII)Ljava/lang/String;

    move-result-object p5

    .line 193
    const-class p7, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p7

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BGM-> calibrationNotes: "

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-static {p7, p8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    sget-object p7, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 p8, 0x0

    if-ne p3, p7, :cond_2

    add-int/lit8 p7, p1, -0x1

    .line 203
    new-instance v0, Lcom/senseonics/events/GlucoseEventPoint;

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v1

    invoke-direct {v0, p2, p8, v1}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;II)V

    int-to-long v1, p7

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/senseonics/events/GlucoseEventPoint;->setRecordNumber(J)V

    .line 206
    iget-object p7, p0, Lcom/senseonics/model/SyncingParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {p7, v0}, Lcom/senseonics/db/DatabaseManager;->convertSuspiciousGlucoseIntoCalibrationDuringSync(Lcom/senseonics/events/GlucoseEventPoint;)I

    move-result p7

    .line 207
    const-class v0, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BGM->SuspiciousCheck | no of events updated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {v0, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2
    invoke-virtual {p3}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration()Z

    move-result p3

    const/4 p7, 0x1

    if-eqz p3, :cond_3

    .line 212
    new-instance p3, Lcom/senseonics/events/CalibrationEventPoint;

    invoke-direct {p3, p2, p4, p6}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 213
    invoke-virtual {p3, p8}, Lcom/senseonics/events/CalibrationEventPoint;->setEventHidden(Z)V

    int-to-long p1, p1

    .line 214
    invoke-virtual {p3, p1, p2}, Lcom/senseonics/events/CalibrationEventPoint;->setRecordNumber(J)V

    .line 215
    iget-object p1, p0, Lcom/senseonics/model/SyncingParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {p1, p3, p7}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    goto :goto_0

    .line 217
    :cond_3
    new-instance p3, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-direct {p3, p2, p4, p6, p5}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 218
    invoke-virtual {p3, p8}, Lcom/senseonics/events/GlucoseEventPoint;->setEventHidden(Z)V

    int-to-long p1, p1

    .line 219
    invoke-virtual {p3, p1, p2}, Lcom/senseonics/events/GlucoseEventPoint;->setRecordNumber(J)V

    .line 220
    iget-object p1, p0, Lcom/senseonics/model/SyncingParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {p1, p3, p7}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    .line 224
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/model/SyncingParsedResponse;->afterSyncDataParsed()V

    return-void
.end method

.method private saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IFIIZ)V
    .locals 7

    .line 307
    new-instance v6, Lcom/senseonics/events/AlertEventPoint;

    sget-object v5, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    int-to-long p1, p7

    .line 309
    invoke-virtual {v6, p1, p2}, Lcom/senseonics/events/AlertEventPoint;->setRecordNumber(J)V

    .line 310
    invoke-virtual {v6, p5}, Lcom/senseonics/events/AlertEventPoint;->setRateValue(F)V

    .line 311
    invoke-virtual {v6, p6}, Lcom/senseonics/events/AlertEventPoint;->setPredictiveMinutes(I)V

    .line 312
    invoke-virtual {v6, p8}, Lcom/senseonics/events/AlertEventPoint;->setEventHidden(Z)V

    .line 313
    iget-object p1, p0, Lcom/senseonics/model/SyncingParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v6, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 5

    const/4 v0, 0x0

    .line 66
    aget v0, p1, v0

    .line 67
    iget-object v1, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v1}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lcom/senseonics/bluetoothle/ResponseOperations$Response;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;-><init>(IZ[I)V

    .line 70
    iget-object v0, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/SyncModel;->setCurrentSyncingResponseId(Lcom/senseonics/bluetoothle/ResponseOperations$Response;)V

    .line 73
    aget v0, p1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    .line 74
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RECORDED GLUCOSE NUMBER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at request "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with response "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-class p1, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync response being parsed 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->getResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->getData()[I

    move-result-object v2

    invoke-static {v2}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", on thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->getResponseId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->getData()[I

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/senseonics/model/SyncingParsedResponse;->parseReadLogOfBloodGlucoseDataInSpecifiedRangeResponseData([ILcom/senseonics/model/TransmitterStateModel;)V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->getData()[I

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/senseonics/model/SyncingParsedResponse;->parseReadAllSensorGlucoseAlertsInSpecifiedRangeResponseData([ILcom/senseonics/model/TransmitterStateModel;)V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ResponseOperations$Response;->getData()[I

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/senseonics/model/SyncingParsedResponse;->parseReadAllSensorGlucoseDataInSpecifiedRangeResponseData([ILcom/senseonics/model/TransmitterStateModel;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public check([I)Z
    .locals 4

    const/4 v0, 0x0

    .line 53
    aget v1, p1, v0

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_0

    .line 54
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadAllSensorGlucoseDataRecordResponseCorrect([I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/16 v2, 0xf1

    if-ne v1, v2, :cond_1

    .line 55
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadAllSensorGlucoseAlertsInSpecifiedRangeResponseCorrect([I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/16 v2, 0xf2

    if-ne v1, v2, :cond_3

    .line 56
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadLogOfBloodGlucoseDataInSpecifiedRangeResponseCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    :cond_2
    const-class v0, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check true: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_3
    const-class v1, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
