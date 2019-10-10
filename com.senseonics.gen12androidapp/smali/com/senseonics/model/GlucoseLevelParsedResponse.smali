.class public Lcom/senseonics/model/GlucoseLevelParsedResponse;
.super Ljava/lang/Object;
.source "GlucoseLevelParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method public constructor <init>(Lcom/senseonics/db/DatabaseManager;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 27
    iput-object p2, p0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 43
    aget v4, p1, v3

    const/4 v5, 0x2

    aget v6, p1, v5

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    const/4 v6, 0x3

    aget v6, p1, v6

    const/16 v8, 0x10

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    .line 44
    new-array v6, v5, [I

    const/4 v15, 0x4

    aget v9, p1, v15

    const/16 v16, 0x0

    aput v9, v6, v16

    const/4 v9, 0x5

    aget v9, p1, v9

    aput v9, v6, v3

    .line 45
    invoke-static {v6}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v6

    .line 46
    new-array v9, v5, [I

    const/4 v10, 0x6

    aget v10, p1, v10

    aput v10, v9, v16

    const/4 v10, 0x7

    aget v10, p1, v10

    aput v10, v9, v3

    .line 47
    invoke-static {v9}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v9

    .line 48
    aget v10, p1, v7

    const/16 v10, 0x9

    .line 49
    aget v10, p1, v10

    const/16 v11, 0xa

    aget v11, p1, v11

    shl-int/2addr v11, v7

    or-int v14, v10, v11

    const/16 v10, 0xb

    .line 50
    aget v10, p1, v10

    const/16 v10, 0xc

    aget v10, p1, v10

    const/16 v10, 0xd

    .line 51
    aget v13, p1, v10

    const/16 v10, 0xe

    .line 52
    aget v10, p1, v10

    const/16 v10, 0xf

    .line 53
    aget v10, p1, v10

    .line 54
    aget v10, p1, v8

    const/16 v10, 0x11

    aget v1, p1, v10

    .line 56
    aget v1, v6, v16

    .line 57
    aget v1, v6, v3

    .line 58
    aget v1, v6, v5

    .line 59
    aget v1, v9, v16

    .line 60
    aget v1, v9, v3

    .line 61
    aget v1, v9, v5

    .line 63
    invoke-static {v6, v9}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 68
    iget-object v5, v0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v5, v10, v11, v4}, Lcom/senseonics/db/DatabaseManager;->allowAddingGlucoseReading(JI)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    iget-object v5, v0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    new-instance v6, Lcom/senseonics/graph/util/Glucose;

    const/16 v17, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getRawDataValues()[I

    move-result-object v18

    move-object v9, v6

    move v12, v14

    move v3, v13

    move/from16 v13, v17

    move/from16 v19, v14

    move v14, v4

    const/4 v8, 0x4

    move-object/from16 v15, v18

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII[I)V

    invoke-virtual {v5, v6}, Lcom/senseonics/db/DatabaseManager;->addReadingInGMT(Lcom/senseonics/graph/util/Glucose;)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v3, v13

    move/from16 v19, v14

    const/4 v8, 0x4

    const/4 v5, 0x0

    .line 75
    :goto_0
    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseTimestamp(Ljava/util/Calendar;)V

    .line 77
    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    const/16 v6, 0x10

    if-eq v3, v6, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 86
    :pswitch_0
    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    goto :goto_1

    .line 83
    :pswitch_1
    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    goto :goto_1

    .line 80
    :pswitch_2
    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    goto :goto_1

    .line 95
    :cond_1
    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    goto :goto_1

    .line 92
    :cond_2
    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    goto :goto_1

    .line 89
    :cond_3
    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 100
    :goto_1
    new-instance v3, Lcom/senseonics/util/StaleDataChecker;

    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTimestamp()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v8

    invoke-direct {v3, v6, v7, v8}, Lcom/senseonics/util/StaleDataChecker;-><init>(JI)V

    .line 101
    invoke-virtual {v3}, Lcom/senseonics/util/StaleDataChecker;->isStaleData()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 108
    :cond_4
    sget v6, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    move/from16 v7, v19

    if-lt v7, v6, :cond_5

    sget v6, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    if-gt v7, v6, :cond_5

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_6

    .line 122
    sget v14, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    goto :goto_3

    :cond_6
    move v14, v7

    :goto_3
    invoke-virtual {v2, v14}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseLevel(I)V

    .line 124
    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseTrendDirection(Lcom/senseonics/util/Utils$ARROW_TYPE;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    if-ne v4, v1, :cond_7

    .line 128
    invoke-virtual {v2, v4}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedSensorRecord(I)V

    :cond_7
    if-eqz v5, :cond_8

    .line 132
    iget-object v1, v0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NewGlucoseSavedEvent;

    invoke-direct {v2}, Lcom/senseonics/events/NewGlucoseSavedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public check([I)Z
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSensorGlucoseResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0x88

    return v0
.end method
