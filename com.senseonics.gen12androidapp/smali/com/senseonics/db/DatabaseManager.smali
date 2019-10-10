.class public Lcom/senseonics/db/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private ninetyDaysTimestamp:J

.field private sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

.field private threeDaysTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/senseonics/db/DatabaseManager;->threeDaysTimestamp:J

    .line 56
    iput-wide v0, p0, Lcom/senseonics/db/DatabaseManager;->ninetyDaysTimestamp:J

    .line 59
    new-instance v0, Lcom/senseonics/db/SenseonicsDBHelper;

    invoke-direct {v0, p1}, Lcom/senseonics/db/SenseonicsDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/senseonics/db/DatabaseManager;->sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

    const-string p1, "GMT"

    .line 61
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, -0x3

    .line 62
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 63
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/senseonics/db/DatabaseManager;->threeDaysTimestamp:J

    const-string p1, "GMT"

    .line 65
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0x5a

    .line 66
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 67
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/db/DatabaseManager;->ninetyDaysTimestamp:J

    return-void
.end method

.method private calibrationOrGlucoseEventExists(Lcom/senseonics/events/EventPoint;Z)Z
    .locals 12

    .line 1168
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v0

    .line 1170
    invoke-direct {p0, v0, v1}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide v0

    .line 1171
    iget-wide v2, p0, Lcom/senseonics/db/DatabaseManager;->threeDaysTimestamp:J

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-gez v2, :cond_0

    if-eqz p2, :cond_0

    return v3

    :cond_0
    const-string v7, "eventType == ? AND timestamp > ? AND timestamp < ? AND glucoseLevel == ?"

    const/4 p2, 0x4

    .line 1179
    new-array v8, p2, [Ljava/lang/String;

    .line 1180
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v8, v2

    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    sub-long v4, v0, v4

    .line 1181
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v8, v3

    const/4 p2, 0x2

    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    add-long/2addr v0, v4

    .line 1182
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, p2

    const/4 p2, 0x3

    .line 1183
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, p2

    .line 1186
    iget-object v4, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "events"

    const-string p1, "timestamp"

    const-string p2, "eventType"

    const-string v0, "glucoseLevel"

    filled-new-array {p1, p2, v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "timestamp"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1194
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 1195
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-lt p2, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private changeGroupId(II)V
    .locals 3

    .line 166
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "groupId"

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "groupId = ? "

    const/4 v1, 0x1

    .line 169
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 171
    iget-object p1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "glucoseReadings"

    invoke-virtual {p1, v2, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;
    .locals 12

    .line 1266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 1267
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1268
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1270
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v1

    .line 1271
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0x10

    .line 1272
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    .line 1275
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v6, v1

    sub-long/2addr v6, v4

    .line 1277
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "timestamp"

    .line 1278
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "eventType"

    .line 1279
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v4

    .line 1280
    invoke-virtual {v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v4

    .line 1279
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "notes"

    .line 1281
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "glucoseLevel"

    .line 1283
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1282
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "recordNumber"

    .line 1285
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getRecordNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1284
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    const-string p2, "event_synced"

    .line 1289
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1288
    invoke-virtual {v1, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const-string p2, "event_synced"

    .line 1292
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1291
    invoke-virtual {v1, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1294
    :goto_0
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->isEventHidden()Z

    move-result p2

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    const-string p2, "event_hidden"

    .line 1296
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1295
    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1299
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getCalendarEventHidden()Ljava/util/Calendar;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1300
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const-string v2, "GMT"

    .line 1301
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1302
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getCalendarEventHidden()Ljava/util/Calendar;

    move-result-object v2

    .line 1303
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1302
    invoke-virtual {p2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1305
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v8

    .line 1306
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    invoke-virtual {p2, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1307
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v2, p2

    .line 1309
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getCalendarEventHidden()Ljava/util/Calendar;

    move-result-object p2

    .line 1310
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    sub-long/2addr v10, v2

    const-string p2, "event_hidden_timestamp"

    .line 1312
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1311
    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_1
    const-string p2, "event_hidden_timestamp"

    .line 1314
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_2
    const-string p2, "event_hidden"

    .line 1317
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1316
    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1319
    :goto_1
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p2, "amount"

    .line 1321
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "customType"

    .line 1322
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "customType2"

    .line 1323
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "healthSeverity"

    .line 1324
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "exerciseIntensity"

    .line 1325
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1328
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getTransmitterName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p2, "transmitter_name"

    .line 1330
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    .line 1329
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p2, "transmitter_name"

    const-string v0, ""

    .line 1332
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string p2, "unknown_error_code"

    .line 1335
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1337
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p2

    .line 1338
    sget-object v0, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1402
    :pswitch_0
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p2

    .line 1404
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result p1

    if-eq p1, v5, :cond_4

    const-string v0, "unknown_error_code"

    .line 1407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    if-eqz p2, :cond_7

    const-string p1, "customType"

    .line 1412
    invoke-virtual {p2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1411
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1387
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lcom/senseonics/events/AlertEventPoint;

    const-string v2, "customType"

    .line 1389
    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getGlucoseType()Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->ordinal()I

    move-result v0

    .line 1388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1390
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq p2, v0, :cond_6

    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p2, v0, :cond_5

    goto :goto_3

    :cond_5
    const-string p2, "customType2"

    .line 1396
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getPredictiveMinutes()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1395
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_6
    :goto_3
    const-string p2, "amount"

    .line 1393
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getRateValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1392
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_4

    .line 1376
    :pswitch_2
    check-cast p1, Lcom/senseonics/events/AlertEventPoint;

    const-string p2, "customType"

    .line 1378
    invoke-virtual {p1}, Lcom/senseonics/events/AlertEventPoint;->getGlucoseType()Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->ordinal()I

    move-result v0

    .line 1377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "customType2"

    .line 1380
    invoke-virtual {p1}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$ALERT_TYPE;->ordinal()I

    move-result p1

    .line 1379
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1368
    :pswitch_3
    check-cast p1, Lcom/senseonics/events/ExerciseEventPoint;

    const-string p2, "amount"

    .line 1370
    invoke-virtual {p1}, Lcom/senseonics/events/ExerciseEventPoint;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1369
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "exerciseIntensity"

    .line 1372
    invoke-virtual {p1}, Lcom/senseonics/events/ExerciseEventPoint;->getIntensity()Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1371
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1361
    :pswitch_4
    check-cast p1, Lcom/senseonics/events/HealthEventPoint;

    const-string p2, "customType2"

    .line 1363
    invoke-virtual {p1}, Lcom/senseonics/events/HealthEventPoint;->getHealthCondition()Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v0

    .line 1362
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "healthSeverity"

    .line 1365
    invoke-virtual {p1}, Lcom/senseonics/events/HealthEventPoint;->getHealthSeverity()Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->ordinal()I

    move-result p1

    .line 1364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 1355
    :pswitch_5
    check-cast p1, Lcom/senseonics/events/InsulinEventPoint;

    const-string p2, "amount"

    .line 1356
    invoke-virtual {p1}, Lcom/senseonics/events/InsulinEventPoint;->getUnits()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p2, "customType"

    .line 1358
    invoke-virtual {p1}, Lcom/senseonics/events/InsulinEventPoint;->getInsulinType()Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result p1

    .line 1357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 1349
    :pswitch_6
    check-cast p1, Lcom/senseonics/events/MealEventPoint;

    const-string p2, "customType"

    .line 1350
    invoke-virtual {p1}, Lcom/senseonics/events/MealEventPoint;->getMealType()Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v0

    .line 1351
    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v0

    .line 1350
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "amount"

    .line 1352
    invoke-virtual {p1}, Lcom/senseonics/events/MealEventPoint;->getCarbs()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 1344
    :pswitch_7
    check-cast p1, Lcom/senseonics/events/GlucoseEventPoint;

    const-string p2, "customType"

    .line 1346
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getCalibrationFlag()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1345
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 1340
    :pswitch_8
    check-cast p1, Lcom/senseonics/events/CalibrationEventPoint;

    const-string p2, "customType"

    .line 1341
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationEventPoint;->getCalibrationFlag()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    :goto_4
    :pswitch_9
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private eventExists(Lcom/senseonics/events/EventPoint;Z)Z
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1201
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide v2

    .line 1203
    iget-wide v4, v0, Lcom/senseonics/db/DatabaseManager;->threeDaysTimestamp:J

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-gez v4, :cond_0

    if-eqz p2, :cond_0

    return v5

    .line 1207
    :cond_0
    instance-of v4, v1, Lcom/senseonics/events/CalibrationEventPoint;

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    .line 1208
    sget-wide v7, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    goto :goto_0

    .line 1212
    :cond_1
    sget v4, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v7, v4

    :goto_0
    const/4 v4, 0x0

    sub-long v9, v2, v7

    add-long/2addr v2, v7

    .line 1218
    invoke-direct {v0, v1, v5}, Lcom/senseonics/db/DatabaseManager;->createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;

    move-result-object v4

    const-string v7, "amount"

    .line 1219
    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "customType"

    .line 1220
    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "customType2"

    .line 1221
    invoke-virtual {v4, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "healthSeverity"

    .line 1222
    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "exerciseIntensity"

    .line 1223
    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v16, "eventType == ? AND timestamp >= ? AND timestamp <= ? AND amount == ? AND customType == ? AND customType2 == ? AND healthSeverity == ? AND exerciseIntensity == ?"

    const/16 v13, 0x8

    .line 1233
    new-array v15, v13, [Ljava/lang/String;

    .line 1234
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v21, 0x0

    aput-object v1, v15, v21

    .line 1235
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v6

    const/4 v1, 0x3

    aput-object v7, v15, v1

    const/4 v1, 0x4

    aput-object v8, v15, v1

    const/4 v1, 0x5

    aput-object v11, v15, v1

    const/4 v1, 0x6

    aput-object v12, v15, v1

    const/4 v1, 0x7

    aput-object v4, v15, v1

    .line 1239
    iget-object v13, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "events"

    const-string v22, "timestamp"

    const-string v23, "eventType"

    const-string v24, "notes"

    const-string v25, "amount"

    const-string v26, "customType"

    const-string v27, "customType2"

    const-string v28, "healthSeverity"

    const-string v29, "exerciseIntensity"

    const-string v30, "glucoseLevel"

    const-string v31, "id"

    const-string v32, "event_synced"

    filled-new-array/range {v22 .. v32}, [Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "timestamp"

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1252
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1253
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-lt v2, v5, :cond_2

    const-string v1, "EVENT EXISTS"

    const-string v2, "-----------------"

    .line 1256
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const-string v1, "EVENT NOT EXISTS"

    const-string v2, "-----------------"

    .line 1260
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v21
.end method

.method private getCalendarFromTimeStampInDatabase(J)Ljava/util/Calendar;
    .locals 1

    .line 755
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 757
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p1, "GMT"

    .line 758
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private getEarliestEventGMTTime()J
    .locals 10

    .line 857
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v5, "timestamp = ( select min(timestamp) from events )"

    .line 863
    iget-object v2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "events"

    const-string v4, "timestamp"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 868
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 869
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 870
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v3, "getEarliestEvent"

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "--------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method

.method private getEarliestGlucoseReadingGMTTime()J
    .locals 10

    .line 878
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v5, "timestamp = ( select min(timestamp) from glucoseReadings )"

    .line 884
    iget-object v2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "glucoseReadings"

    const-string v4, "timestamp"

    const-string v6, "glucoseLevel"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 890
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 891
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 892
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v3, "getEarliestGlucose"

    .line 893
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " | glucose: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--------------"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method

.method private getEventsWithWhereClauseBetween(Ljava/util/Calendar;Ljava/util/Calendar;IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1521
    invoke-direct/range {p0 .. p1}, Lcom/senseonics/db/DatabaseManager;->getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J

    move-result-wide v1

    move-object/from16 v3, p2

    .line 1522
    invoke-direct {v0, v3}, Lcom/senseonics/db/DatabaseManager;->getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J

    move-result-wide v3

    .line 1524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timestamp >= ? AND timestamp < ? AND event_hidden == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 1531
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x2

    .line 1534
    new-array v11, v5, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v6

    .line 1535
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v11, v2

    .line 1537
    iget-object v7, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "events"

    const-string v12, "timestamp"

    const-string v13, "eventType"

    const-string v14, "notes"

    const-string v15, "amount"

    const-string v16, "customType"

    const-string v17, "customType2"

    const-string v18, "healthSeverity"

    const-string v19, "exerciseIntensity"

    const-string v20, "glucoseLevel"

    const-string v21, "id"

    const-string v22, "event_synced"

    const-string v23, "event_hidden"

    const-string v24, "event_hidden_timestamp"

    const-string v25, "transmitter_name"

    filled-new-array/range {v12 .. v25}, [Ljava/lang/String;

    move-result-object v9

    const-string v14, "timestamp"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1554
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lt v4, v2, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1558
    :goto_0
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1559
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1560
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1567
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1568
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    .line 1569
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v9, 0x9

    .line 1570
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v9, 0xa

    .line 1571
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, 0xb

    .line 1572
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v12, 0xc

    .line 1573
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v12, 0xd

    .line 1574
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v5, -0x1

    cmp-long v16, v14, v5

    const/16 v17, 0x0

    if-eqz v16, :cond_0

    .line 1577
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1578
    invoke-virtual {v5, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_0
    move-object/from16 v5, v17

    :goto_1
    if-ne v9, v2, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ne v10, v2, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    .line 1593
    :goto_3
    invoke-static {}, Lcom/senseonics/util/Utils$EVENT_TYPE;->values()[Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v9

    aget-object v10, v9, v7

    .line 1596
    sget-object v7, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v10}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v9

    aget v7, v7, v9

    const/4 v9, 0x5

    const/4 v14, 0x3

    const/4 v2, 0x4

    packed-switch v7, :pswitch_data_0

    :cond_3
    move-object v0, v12

    move v7, v15

    const/16 v16, 0x0

    goto/16 :goto_a

    .line 1688
    :pswitch_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1689
    sget-object v7, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v7}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v7

    if-ne v2, v7, :cond_3

    .line 1690
    new-instance v7, Lcom/senseonics/events/EventPoint;

    invoke-direct {v7, v4, v13, v10}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    const-string v4, ""

    .line 1691
    invoke-virtual {v7, v4}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 1692
    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 v8, -0x1

    .line 1693
    invoke-virtual {v7, v8, v9}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    const/4 v2, 0x0

    .line 1694
    invoke-virtual {v7, v2}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    goto :goto_4

    .line 1674
    :pswitch_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1675
    sget-object v7, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v7}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v7

    if-eq v2, v7, :cond_4

    sget-object v7, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 1676
    invoke-virtual {v7}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v7

    if-ne v2, v7, :cond_3

    .line 1678
    :cond_4
    new-instance v7, Lcom/senseonics/events/EventPoint;

    invoke-direct {v7, v4, v13, v10}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    const-string v4, ""

    .line 1679
    invoke-virtual {v7, v4}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 1680
    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 v8, -0x1

    .line 1681
    invoke-virtual {v7, v8, v9}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    const/4 v8, 0x0

    .line 1682
    invoke-virtual {v7, v8}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    :goto_4
    move-object v0, v12

    const/16 v16, 0x0

    move/from16 v27, v15

    move-object v15, v7

    move/from16 v7, v27

    goto/16 :goto_b

    :pswitch_2
    const/4 v8, 0x0

    .line 1661
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    .line 1662
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1663
    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v10, v9, :cond_5

    .line 1664
    sget-object v9, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    :goto_5
    move-object v14, v9

    goto :goto_6

    .line 1666
    :cond_5
    sget-object v9, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_5

    .line 1667
    :goto_6
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->values()[Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v9

    aget-object v2, v9, v2

    .line 1668
    new-instance v9, Lcom/senseonics/events/AlertEventPoint;

    move-object/from16 v26, v9

    move-object v0, v12

    move-object v12, v4

    move v4, v15

    move-object v15, v2

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    move-object/from16 v2, v26

    .line 1670
    invoke-virtual {v2, v7}, Lcom/senseonics/events/EventPoint;->setRateValue(F)V

    move-object v15, v2

    move v7, v4

    goto :goto_9

    :pswitch_3
    move-object v0, v12

    move v7, v15

    const/4 v8, 0x0

    .line 1647
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1648
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1650
    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v10, v9, :cond_6

    .line 1651
    sget-object v9, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    :goto_7
    move-object v14, v9

    goto :goto_8

    .line 1653
    :cond_6
    sget-object v9, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_7

    .line 1654
    :goto_8
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->values()[Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v9

    aget-object v2, v9, v2

    .line 1655
    new-instance v12, Lcom/senseonics/events/AlertEventPoint;

    move-object v9, v12

    move-object v8, v12

    move-object v12, v4

    move v4, v15

    move-object v15, v2

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 1657
    invoke-virtual {v8, v4}, Lcom/senseonics/events/EventPoint;->setPredictiveMinutes(I)V

    move-object v15, v8

    goto :goto_9

    :pswitch_4
    move-object v0, v12

    move v7, v15

    .line 1638
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1639
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1640
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v9

    aget-object v14, v9, v8

    .line 1641
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->values()[Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v8

    aget-object v15, v8, v2

    .line 1642
    new-instance v2, Lcom/senseonics/events/AlertEventPoint;

    move-object v9, v2

    move-object v12, v4

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    move-object v15, v2

    :goto_9
    const/16 v16, 0x0

    goto/16 :goto_b

    :pswitch_5
    move-object v0, v12

    move v7, v15

    const/16 v16, 0x0

    const/4 v2, 0x7

    .line 1630
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1631
    invoke-static {}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->values()[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v9

    aget-object v2, v9, v2

    .line 1632
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1633
    new-instance v17, Lcom/senseonics/events/ExerciseEventPoint;

    move-object/from16 v9, v17

    move v10, v11

    move-object v11, v4

    move v12, v13

    move v13, v14

    move-object v14, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/ExerciseEventPoint;-><init>(ILjava/util/Calendar;IILcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_6
    move-object v0, v12

    move v7, v15

    const/16 v16, 0x0

    .line 1622
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1623
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->values()[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v9

    aget-object v2, v9, v2

    const/4 v9, 0x6

    .line 1624
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1625
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->values()[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v10

    aget-object v14, v10, v9

    .line 1626
    new-instance v17, Lcom/senseonics/events/HealthEventPoint;

    move-object/from16 v9, v17

    move v10, v11

    move-object v11, v4

    move v12, v13

    move-object v13, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/HealthEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$HEALTH_CONDITION;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_7
    move-object v0, v12

    move v7, v15

    const/16 v16, 0x0

    .line 1615
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1616
    invoke-static {}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->values()[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v9

    aget-object v2, v9, v2

    .line 1617
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    .line 1618
    new-instance v17, Lcom/senseonics/events/InsulinEventPoint;

    move-object/from16 v9, v17

    move v10, v11

    move-object v11, v4

    move v12, v13

    move v13, v14

    move-object v14, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/InsulinEventPoint;-><init>(ILjava/util/Calendar;IFLcom/senseonics/events/EventUtils$INSULIN_TYPE;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_8
    move-object v0, v12

    move v7, v15

    const/16 v16, 0x0

    .line 1608
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1609
    invoke-static {}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->values()[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v9

    aget-object v2, v9, v2

    .line 1610
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1611
    new-instance v17, Lcom/senseonics/events/MealEventPoint;

    move-object/from16 v9, v17

    move v10, v11

    move-object v11, v4

    move v12, v13

    move-object v13, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/MealEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V

    goto :goto_a

    :pswitch_9
    move-object v0, v12

    move v7, v15

    const/16 v16, 0x0

    .line 1603
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1604
    new-instance v15, Lcom/senseonics/events/GlucoseEventPoint;

    move-object v9, v15

    move v10, v11

    move-object v11, v4

    move v12, v13

    move v13, v2

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(ILjava/util/Calendar;IILjava/lang/String;)V

    goto :goto_b

    :pswitch_a
    move-object v0, v12

    move v7, v15

    const/16 v16, 0x0

    .line 1598
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1599
    new-instance v15, Lcom/senseonics/events/CalibrationEventPoint;

    move-object v9, v15

    move v10, v11

    move-object v11, v4

    move v12, v13

    move v13, v2

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(ILjava/util/Calendar;IILjava/lang/String;)V

    goto :goto_b

    :goto_a
    move-object/from16 v15, v17

    :goto_b
    if-eqz v15, :cond_7

    .line 1705
    invoke-virtual {v15, v6}, Lcom/senseonics/events/EventPoint;->setEventSynced(Z)V

    .line 1706
    invoke-virtual {v15, v7}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 1707
    invoke-virtual {v15, v5}, Lcom/senseonics/events/EventPoint;->setCalendarEventHidden(Ljava/util/Calendar;)V

    .line 1708
    invoke-virtual {v15, v0}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_c

    :cond_8
    move-object/from16 v0, p0

    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1713
    :cond_9
    :goto_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getGMTTimestamp(J)J
    .locals 5

    .line 900
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 901
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 902
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 904
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v1

    .line 905
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0x10

    .line 906
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr p1, v1

    sub-long/2addr p1, v3

    return-wide p1
.end method

.method private getGlucose(Landroid/database/Cursor;)Lcom/senseonics/graph/util/Glucose;
    .locals 7

    const/4 v0, 0x0

    .line 219
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 224
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v0, 0x2

    .line 225
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x3

    .line 226
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 228
    new-instance p1, Lcom/senseonics/graph/util/Glucose;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    return-object p1
.end method

.method private getGlucoseArrayBetweenForReportWithWhere(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 650
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "glucoseReadings"

    const-string v3, "glucoseLevel"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 656
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 657
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 658
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 659
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 664
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private getGlucoseNear(I)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordNumber IN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    iget-object v3, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "glucoseReadings"

    const-string p1, "glucoseLevel"

    const-string v0, "timestamp"

    const-string v2, "groupId"

    const-string v5, "recordNumber"

    filled-new-array {p1, v0, v2, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v10, "timestamp"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v2, v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->getGlucose(Landroid/database/Cursor;)Lcom/senseonics/graph/util/Glucose;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private getMaxGroupId()I
    .locals 9

    .line 149
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "glucoseReadings"

    const-string v2, "max( groupId )"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    .line 159
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2
.end method

.method private getStatisticsBetweenWhereClause(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    mul-int/lit16 v0, p1, 0xe10

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit16 p1, p1, 0xe10

    int-to-long v2, p1

    .line 510
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v4

    .line 511
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/16 v6, 0x10

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v6, p1

    const-wide/16 v8, 0x3e8

    mul-long v0, v0, v8

    sub-long/2addr v0, v4

    sub-long/2addr v0, v6

    mul-long v2, v2, v8

    sub-long/2addr v2, v4

    sub-long/2addr v2, v6

    .line 515
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 516
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-wide/32 v4, 0x5265c00

    cmp-long p1, v2, v4

    const-wide/32 v6, 0x5265bff

    if-nez p1, :cond_0

    move-wide v2, v6

    .line 528
    :cond_0
    rem-long/2addr v0, v4

    add-long/2addr v0, v4

    rem-long/2addr v0, v4

    .line 529
    rem-long/2addr v2, v4

    add-long/2addr v2, v4

    rem-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " day\') AND datetime(\'now\')) AND  time("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "timestamp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/1000,\'unixepoch\') BETWEEN time("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/1000,\'unixepoch\') AND time("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/1000,\'unixepoch\') AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "glucoseLevel"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "glucoseLevel"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " <= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    .line 545
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " day\') AND datetime(\'now\')) AND  ((time("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "timestamp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/1000,\'unixepoch\') BETWEEN time("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/1000,\'unixepoch\') AND time("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/1000,\'unixepoch\')) OR  (time("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "timestamp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/1000,\'unixepoch\') BETWEEN time("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/1000,\'unixepoch\') AND time("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/1000,\'unixepoch\'))) AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "glucoseLevel"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " >= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "glucoseLevel"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " <= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 418
    new-instance v2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;-><init>(Landroid/content/Context;)V

    .line 423
    sget-object v3, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-wide/32 v4, 0x5265bff

    const-wide/16 v6, 0x0

    packed-switch v3, :pswitch_data_0

    move-wide v2, v6

    move-wide v8, v2

    goto/16 :goto_0

    :pswitch_0
    move-wide v2, v4

    move-wide v8, v6

    goto/16 :goto_0

    .line 441
    :pswitch_1
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepStartHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepStartMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    int-to-long v8, v3

    .line 442
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepEndHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepEndtMinute()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v3, v2

    int-to-long v2, v3

    goto :goto_0

    .line 437
    :pswitch_2
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerStartHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerStartMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    int-to-long v8, v3

    .line 438
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerEndHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerEndMinute()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v3, v2

    int-to-long v2, v3

    goto :goto_0

    .line 433
    :pswitch_3
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackStartHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackStartMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    int-to-long v8, v3

    .line 434
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackEndHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackEndMinute()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v3, v2

    int-to-long v2, v3

    goto :goto_0

    .line 429
    :pswitch_4
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchStartHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchStartMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    int-to-long v8, v3

    .line 430
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchEndHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchEndMinute()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v3, v2

    int-to-long v2, v3

    goto :goto_0

    .line 425
    :pswitch_5
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastStartHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastStartMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    int-to-long v8, v3

    .line 426
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastEndHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastEndMinute()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v3, v2

    int-to-long v2, v3

    .line 450
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-static {v10}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v10

    .line 451
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x3e8

    mul-long v8, v8, v14

    sub-long/2addr v8, v10

    sub-long/2addr v8, v12

    mul-long v2, v2, v14

    sub-long/2addr v2, v10

    sub-long/2addr v2, v12

    .line 457
    sget-object v10, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    if-ne v0, v10, :cond_0

    move-wide v2, v4

    .line 463
    :cond_0
    sget-object v10, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    if-ne v0, v10, :cond_1

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " day\') AND datetime(\'now\')) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    const-wide/32 v10, 0x5265c00

    .line 474
    rem-long/2addr v8, v10

    add-long/2addr v8, v10

    rem-long/2addr v8, v10

    .line 475
    rem-long/2addr v2, v10

    add-long/2addr v2, v10

    rem-long/2addr v2, v10

    cmp-long v0, v8, v2

    if-gtz v0, :cond_2

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " day\') AND datetime(\'now\')) AND  time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') BETWEEN time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') AND time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 488
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " day\') AND datetime(\'now\')) AND  ((time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') BETWEEN time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') AND time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\')) OR  (time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') BETWEEN time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') AND time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\'))) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "NewWhereClause"

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newWhere:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 349
    sget-object v2, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$TimeRange:[I

    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/32 v3, 0x5265bff

    const-wide/16 v5, 0x0

    packed-switch v2, :pswitch_data_0

    move-wide v7, v5

    move-wide v9, v7

    goto :goto_0

    :pswitch_0
    move-wide v9, v3

    move-wide v7, v5

    goto :goto_0

    .line 354
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->getTimeFromInSec()I

    move-result v2

    int-to-long v7, v2

    .line 355
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->getTimeToInSec()I

    move-result v2

    int-to-long v9, v2

    .line 363
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v11

    .line 364
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v13, 0x10

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v13, v2

    const-wide/16 v15, 0x3e8

    mul-long v7, v7, v15

    sub-long/2addr v7, v11

    sub-long/2addr v7, v13

    mul-long v9, v9, v15

    sub-long/2addr v9, v11

    sub-long/2addr v9, v13

    .line 370
    sget-object v2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    if-ne v0, v2, :cond_0

    move-wide v9, v3

    .line 376
    :cond_0
    sget-object v2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    if-ne v0, v2, :cond_1

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " day\') AND datetime(\'now\')) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    const-wide/32 v11, 0x5265c00

    .line 387
    rem-long/2addr v7, v11

    add-long/2addr v7, v11

    rem-long/2addr v7, v11

    .line 388
    rem-long/2addr v9, v11

    add-long/2addr v9, v11

    rem-long/2addr v9, v11

    cmp-long v0, v7, v9

    if-gtz v0, :cond_2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " day\') AND datetime(\'now\')) AND  time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') BETWEEN time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') AND time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 401
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " day\') AND datetime(\'now\')) AND  ((time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') BETWEEN time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') AND time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\')) OR  (time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') BETWEEN time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\') AND time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/1000,\'unixepoch\'))) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "glucoseLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "NewWhereClause"

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newWhere:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStatisticsBetweenWithWhere(Ljava/lang/String;)[D
    .locals 6

    const/4 v0, 0x5

    .line 570
    new-array v0, v0, [D

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select AVG( glucoseLevel), MIN( glucoseLevel), MAX( glucoseLevel ), COUNT( glucoseLevel), AVG ((glucosereadings.glucoseLevel - sub.a) * (glucosereadings.glucoseLevel - sub.a)) as var from glucosereadings, (SELECT AVG(glucoseLevel)  as a FROM glucoseReadings where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ) AS sub where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 580
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 582
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 583
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v2, 0x0

    .line 585
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-double v4, v4

    aput-wide v4, v0, v2

    .line 586
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-double v4, v2

    aput-wide v4, v0, v3

    const/4 v2, 0x2

    .line 587
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v0, v2

    .line 588
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    .line 589
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v0, v1

    .line 590
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 594
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method private getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J
    .locals 5

    .line 2083
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 2084
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2085
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2087
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v1

    .line 2089
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0x10

    .line 2091
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v1, p1

    .line 2092
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    return-wide v3
.end method

.method private glucoseTimestampExists(J)Z
    .locals 16

    .line 95
    sget v2, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    const/4 v3, 0x1

    mul-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    sub-long v6, p1, v4

    add-long v0, p1, v4

    const-string v11, "timestamp >= ? AND timestamp <= ?"

    const/4 v2, 0x2

    .line 101
    new-array v12, v2, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v12, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v3

    move-object/from16 v0, p0

    .line 103
    iget-object v8, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "glucoseReadings"

    const-string v1, "timestamp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 109
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v2, "Add Glucose Database"

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Glucose timestamp exists "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " --------------"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v3

    .line 116
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v4
.end method

.method private hideCalibrationEventAndGetNotesDuringSyncSubMethod(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 967
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "events"

    const-string v2, "id"

    const-string v3, "notes"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 970
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const-string v0, "BGM->"

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p2, v3, :cond_1

    .line 975
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 977
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 978
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "BGM->"

    .line 980
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dbID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|notes:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 983
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 986
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 987
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "event_hidden"

    .line 988
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "id == ?"

    .line 990
    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v2

    .line 992
    iget-object v6, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "events"

    invoke-virtual {v6, v7, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 996
    :cond_2
    const-class p1, Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BGM-> no of events updated : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private recordNumberExists(I)Z
    .locals 10

    const-string v3, "recordNumber = ?"

    const/4 v8, 0x1

    .line 821
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x0

    aput-object p1, v4, v9

    .line 823
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "glucoseReadings"

    const-string p1, "glucoseLevel"

    const-string v2, "timestamp"

    const-string v5, "recordNumber"

    const-string v6, "groupId"

    filled-new-array {p1, v2, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 831
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v8, :cond_0

    .line 832
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x2

    .line 834
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    .line 835
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "Add Glucose Database"

    .line 836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " record number exists "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --------------"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v8

    .line 840
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v9
.end method

.method private updateCalibrationAndGlucoseEventRecordNo(Lcom/senseonics/events/EventPoint;)I
    .locals 14

    .line 1062
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide v0

    .line 1064
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    sub-long v4, v0, v2

    add-long/2addr v0, v2

    const-string v9, "eventType == ? AND timestamp >= ? AND timestamp <= ? AND glucoseLevel == ? AND event_synced == 1 AND recordNumber < 0"

    const/4 v2, 0x4

    .line 1074
    new-array v10, v2, [Ljava/lang/String;

    .line 1075
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v10, v3

    .line 1076
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v10, v4

    .line 1077
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v10, v1

    .line 1078
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v10, v1

    .line 1080
    iget-object v6, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "events"

    const-string v0, "id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "BGM->Update Record #"

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor count:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v2, v4, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1089
    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "BGM->Update Record #"

    .line 1091
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dbID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1094
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1097
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1098
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "recordNumber"

    .line 1099
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getRecordNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "id == ?"

    .line 1101
    new-array v6, v4, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v3

    .line 1103
    iget-object v7, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "events"

    invoke-virtual {v7, v8, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "BGM->Update Record #"

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rowUpdated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private updateCalibrationAndGlucoseEventRecordNoAndUseFlag(Lcom/senseonics/events/EventPoint;)I
    .locals 13

    .line 1112
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v0

    .line 1114
    instance-of v2, p1, Lcom/senseonics/events/CalibrationEventPoint;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1115
    move-object v2, p1

    check-cast v2, Lcom/senseonics/events/CalibrationEventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/CalibrationEventPoint;->getCalibrationFlag()I

    move-result v2

    goto :goto_0

    .line 1117
    :cond_0
    instance-of v2, p1, Lcom/senseonics/events/GlucoseEventPoint;

    if-eqz v2, :cond_1

    .line 1118
    move-object v2, p1

    check-cast v2, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/GlucoseEventPoint;->getCalibrationFlag()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1121
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide v0

    const-string v7, "eventType == ? AND timestamp > ? AND timestamp < ? AND glucoseLevel == ? AND event_synced == 1 AND recordNumber < 0"

    const/4 v4, 0x4

    .line 1129
    new-array v8, v4, [Ljava/lang/String;

    .line 1130
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    sub-long v4, v0, v4

    .line 1131
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    const/4 v4, 0x2

    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    add-long/2addr v0, v5

    .line 1132
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v4

    const/4 v0, 0x3

    .line 1133
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 1135
    iget-object v4, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "events"

    const-string v0, "id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "BGM->Update Record #"

    .line 1139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lt v4, v12, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1144
    :cond_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1145
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "BGM->Update Record #"

    .line 1146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dbID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1149
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1152
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 1153
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "recordNumber"

    .line 1154
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getRecordNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "customType"

    .line 1155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "id == ?"

    .line 1157
    new-array v6, v12, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v3

    .line 1159
    iget-object v7, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "events"

    invoke-virtual {v7, v8, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string p1, "BGM->Update Record #"

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rowUpdated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method public addEvent(Lcom/senseonics/events/EventPoint;Z)J
    .locals 3

    .line 1428
    const-class v0, Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->eventExists(Lcom/senseonics/events/EventPoint;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 1432
    iget-object p2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 1436
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public addReadingInGMT(Lcom/senseonics/graph/util/Glucose;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 176
    const-class v0, Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addReadingInGMT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "glucoseLevel"

    .line 178
    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "timestamp"

    .line 179
    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "recordNumber"

    .line 180
    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getRecordNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "glucoseRaw1"

    .line 182
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "glucoseRaw2"

    .line 183
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_2:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "glucoseRaw3"

    .line 184
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_3:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "glucoseRaw4"

    .line 185
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_4:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "glucoseRaw5"

    .line 186
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_5:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "glucoseRaw6"

    .line 187
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_6:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "glucoseRaw7"

    .line 188
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_7:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "glucoseRaw8"

    .line 189
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getRecordNumber()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/senseonics/db/DatabaseManager;->getGlucoseNear(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 195
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    const-string v2, "groupId"

    .line 196
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/graph/util/Glucose;

    invoke-virtual {v1}, Lcom/senseonics/graph/util/Glucose;->getGroupId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 198
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/graph/util/Glucose;

    invoke-virtual {v3}, Lcom/senseonics/graph/util/Glucose;->getGroupId()I

    move-result v3

    const-string v4, "groupId"

    .line 199
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/graph/util/Glucose;

    invoke-virtual {v4}, Lcom/senseonics/graph/util/Glucose;->getGroupId()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/senseonics/db/DatabaseManager;->changeGroupId(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/db/DatabaseManager;->getMaxGroupId()I

    move-result v1

    add-int/2addr v1, v2

    const-string v2, "groupId"

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    :cond_2
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "glucoseReadings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 211
    const-class v2, Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLUCOSE ADDED: row: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", groupId: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getGroupId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", thread: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "SQLException"

    .line 213
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J
    .locals 3

    .line 1443
    const-class v0, Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->eventExists(Lcom/senseonics/events/EventPoint;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1446
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 1447
    iget-object p2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1

    .line 1452
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->updateCalibrationAndGlucoseEventRecordNo(Lcom/senseonics/events/EventPoint;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1455
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public addSyncedCalibrationAndGlucoseEvent_NewCalConversion(Lcom/senseonics/events/EventPoint;Z)J
    .locals 3

    .line 1462
    const-class v0, Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->calibrationOrGlucoseEventExists(Lcom/senseonics/events/EventPoint;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1465
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 1466
    iget-object p2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1

    .line 1471
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->updateCalibrationAndGlucoseEventRecordNoAndUseFlag(Lcom/senseonics/events/EventPoint;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1474
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public allowAddingGlucoseReading(JI)Z
    .locals 4

    .line 79
    iget-wide v0, p0, Lcom/senseonics/db/DatabaseManager;->ninetyDaysTimestamp:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 83
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->glucoseTimestampExists(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/senseonics/db/DatabaseManager;->recordNumberExists(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Add Glucose Database"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DO NOT ADD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "|record:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v0, "Add Glucose Database"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD NEW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "|record:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public close()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

    invoke-virtual {v0}, Lcom/senseonics/db/SenseonicsDBHelper;->close()V

    return-void
.end method

.method public convertSuspiciousGlucoseIntoCalibrationDuringSync(Lcom/senseonics/events/GlucoseEventPoint;)I
    .locals 13

    .line 1002
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide v0

    const-string v5, "eventType == ? AND timestamp < ? AND customType == ? AND recordNumber == ? AND event_synced == 1 AND event_hidden == 0"

    const/4 v2, 0x4

    .line 1010
    new-array v6, v2, [Ljava/lang/String;

    .line 1011
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v6, v10

    .line 1012
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    .line 1013
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getCalibrationFlag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v6, v11

    .line 1014
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getRecordNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    aput-object v0, v6, v12

    const-string v9, "timestamp DESC"

    .line 1018
    iget-object v2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "events"

    const-string v0, "timestamp"

    const-string v4, "id"

    const-string v7, "glucoseLevel"

    const-string v8, "notes"

    filled-new-array {v0, v4, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v2, "BGM->SuspiciousCheck"

    .line 1026
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 1031
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1033
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BGM->SuspiciousCheck"

    .line 1034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dbID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "event_hidden"

    .line 1037
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "id == ?"

    .line 1039
    new-array v5, v1, [Ljava/lang/String;

    aput-object v2, v5, v10

    .line 1041
    iget-object v2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "events"

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1045
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1046
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1047
    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1049
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1050
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1051
    new-instance v6, Lcom/senseonics/events/CalibrationEventPoint;

    sget-object v7, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v7}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v7

    invoke-direct {v6, v5, v3, v7, v4}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 1052
    invoke-virtual {v6, v10}, Lcom/senseonics/events/CalibrationEventPoint;->setEventHidden(Z)V

    .line 1053
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getRecordNumber()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/senseonics/events/CalibrationEventPoint;->setRecordNumber(J)V

    .line 1054
    invoke-virtual {p0, v6, v1}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1056
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2
.end method

.method public getAllDMSEventPointsStartingFrom(Ljava/util/Calendar;)Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 764
    invoke-direct/range {p0 .. p1}, Lcom/senseonics/db/DatabaseManager;->getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J

    move-result-wide v1

    const-string v6, "timestamp >= ? "

    const/4 v11, 0x1

    .line 769
    new-array v7, v11, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v7, v2

    const-string v10, "timestamp ASC"

    .line 772
    iget-object v3, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "events"

    const-string v12, "glucoseLevel"

    const-string v13, "timestamp"

    const-string v14, "eventType"

    const-string v15, "recordNumber"

    const-string v16, "event_synced"

    const-string v17, "event_hidden"

    const-string v18, "transmitter_name"

    const-string v19, "customType"

    const-string v20, "customType2"

    const-string v21, "unknown_error_code"

    filled-new-array/range {v12 .. v21}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 787
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 789
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 790
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 791
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 793
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 794
    invoke-static {}, Lcom/senseonics/util/Utils$EVENT_TYPE;->values()[Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    aget-object v15, v7, v8

    const/4 v7, 0x3

    .line 795
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v7, 0x4

    .line 796
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v11, :cond_0

    const/16 v18, 0x1

    goto :goto_1

    :cond_0
    const/16 v18, 0x0

    :goto_1
    const/4 v7, 0x5

    .line 797
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v11, :cond_1

    const/16 v19, 0x1

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    :goto_2
    const/4 v7, 0x6

    .line 798
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v7, 0x7

    .line 799
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v7, 0x8

    .line 800
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v7, 0x9

    .line 801
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 804
    new-instance v7, Lcom/senseonics/events/EventPoint;

    invoke-direct {v0, v5, v6}, Lcom/senseonics/db/DatabaseManager;->getCalendarFromTimeStampInDatabase(J)Ljava/util/Calendar;

    move-result-object v13

    move-object v12, v7

    invoke-direct/range {v12 .. v23}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;JZZLjava/lang/String;III)V

    .line 807
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 813
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3
.end method

.method public getEarliestEventDate()J
    .locals 5

    .line 845
    invoke-direct {p0}, Lcom/senseonics/db/DatabaseManager;->getEarliestEventGMTTime()J

    move-result-wide v0

    .line 846
    invoke-direct {p0}, Lcom/senseonics/db/DatabaseManager;->getEarliestGlucoseReadingGMTTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getEventsBetween(Ljava/util/Calendar;Ljava/util/Calendar;II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1513
    invoke-direct/range {v0 .. v5}, Lcom/senseonics/db/DatabaseManager;->getEventsWithWhereClauseBetween(Ljava/util/Calendar;Ljava/util/Calendar;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseArrayBetweenForReport(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 644
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 645
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->getGlucoseArrayBetweenForReportWithWhere(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseArrayBetweenForReport(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 639
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->getGlucoseArrayBetweenForReportWithWhere(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseBetween(Ljava/util/Calendar;Ljava/util/Calendar;J)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "J)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;"
        }
    .end annotation

    move-wide/from16 v0, p3

    .line 285
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 286
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "( timestamp / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timestamp >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "timestamp"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glucoseLevel >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/senseonics/util/Utils;->GLUCOSE_MIN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "glucoseLevel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v2, p0

    .line 301
    iget-object v8, v2, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "glucoseReadings"

    const-string v3, " AVG ( glucoseLevel )"

    const-string v4, " AVG ( timestamp )"

    const-string v5, "groupId"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v15, "timestamp"

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 309
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 310
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/16 v8, 0x0

    :goto_0
    const/4 v6, 0x0

    .line 316
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    float-to-int v13, v6

    .line 318
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 321
    invoke-virtual {v6, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sub-long v8, v14, v8

    .line 324
    sget v6, Lcom/senseonics/graph/util/GraphUtils;->GRAPH_CONNECTING_INTERVAL:I

    int-to-long v10, v6

    mul-long v10, v10, v0

    cmp-long v6, v8, v10

    if-lez v6, :cond_0

    .line 328
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 329
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 334
    :cond_0
    new-instance v6, Lcom/senseonics/graph/util/Glucose;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v6

    move-wide v11, v14

    move-wide/from16 v16, v14

    move v14, v8

    move v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v8, v16

    goto :goto_0

    .line 339
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 340
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v4
.end method

.method public getGlucoseLevelAt(Ljava/util/Calendar;Z)I
    .locals 17

    if-nez p2, :cond_0

    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 236
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 237
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v1

    .line 238
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 239
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0x10

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v3, v0

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 244
    :goto_0
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v5, 0x6

    mul-long v0, v0, v5

    sub-long v0, v3, v0

    .line 245
    sget-wide v7, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long v7, v7, v5

    add-long/2addr v7, v3

    const-string v12, "timestamp >= ? AND timestamp < ?"

    const/4 v2, 0x2

    .line 249
    new-array v13, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v13, v1

    .line 250
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v13, v2

    move-object/from16 v0, p0

    .line 251
    iget-object v9, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "glucoseReadings"

    const-string v7, "glucoseLevel"

    const-string v8, "timestamp"

    const-string v11, "recordNumber"

    filled-new-array {v7, v8, v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, -0x1

    .line 259
    sget-wide v9, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long v9, v9, v5

    .line 261
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lt v5, v2, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    :cond_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 265
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 266
    invoke-virtual {v11, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 267
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    sub-long v5, v3, v5

    .line 269
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-gez v11, :cond_3

    .line 270
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 271
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    sget v10, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    if-lt v9, v10, :cond_2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    sget v10, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    if-gt v9, v10, :cond_2

    .line 272
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    :cond_2
    move-wide v9, v5

    .line 275
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_4
    const-string v1, "GLUCOSE LEVEL "

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return v8
.end method

.method public getNotSyncedEventsBetween(Ljava/util/Calendar;Ljava/util/Calendar;II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    const-string v5, " AND event_synced == 0"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1505
    invoke-direct/range {v0 .. v5}, Lcom/senseonics/db/DatabaseManager;->getEventsWithWhereClauseBetween(Ljava/util/Calendar;Ljava/util/Calendar;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationsBetween(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/List;IZZLjava/lang/String;ZZZZLcom/senseonics/util/AlertHelper;)Ljava/util/ArrayList;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Utils$EVENT_TYPE;",
            ">;IZZ",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lcom/senseonics/util/AlertHelper;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p13

    .line 1734
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 1735
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-string v8, "("

    const/4 v9, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    .line 1738
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v8, v11, :cond_1

    .line 1739
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v12

    if-ne v8, v11, :cond_0

    .line 1740
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v10}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1742
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v10}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1744
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, ""

    if-eqz p7, :cond_2

    const-string v8, " AND event_hidden == 0"

    .line 1751
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timestamp >= ? AND timestamp < ? AND eventType IN "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x2

    .line 1756
    new-array v8, v1, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    .line 1757
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v12

    const-string v4, "timestamp"

    move/from16 v5, p5

    if-ne v5, v12, :cond_3

    .line 1761
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " DESC"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    move-object/from16 v20, v4

    move-object/from16 v4, p0

    .line 1763
    iget-object v13, v4, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "events"

    const-string v21, "timestamp"

    const-string v22, "eventType"

    const-string v23, "notes"

    const-string v24, "amount"

    const-string v25, "customType"

    const-string v26, "customType2"

    const-string v27, "healthSeverity"

    const-string v28, "exerciseIntensity"

    const-string v29, "glucoseLevel"

    const-string v30, "id"

    const-string v31, "event_synced"

    const-string v32, "event_hidden"

    const-string v33, "event_hidden_timestamp"

    const-string v34, "transmitter_name"

    const-string v35, "unknown_error_code"

    filled-new-array/range {v21 .. v35}, [Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v8

    move-object/from16 v21, p8

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1780
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1781
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lt v7, v12, :cond_20

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1785
    :goto_2
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1786
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 1787
    invoke-virtual {v10, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1788
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1789
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x8

    .line 1790
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v13, 0x9

    .line 1791
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v13, 0xd

    .line 1792
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v13, 0xe

    .line 1793
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1795
    invoke-static {}, Lcom/senseonics/util/Utils$EVENT_TYPE;->values()[Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v16

    aget-object v7, v16, v7

    const/16 v16, 0x0

    .line 1799
    sget-object v17, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v18

    aget v17, v17, v18

    const/4 v9, 0x3

    const/4 v1, 0x4

    packed-switch v17, :pswitch_data_0

    move/from16 v4, p6

    move-object v2, v5

    goto/16 :goto_15

    .line 1993
    :pswitch_0
    new-instance v1, Lcom/senseonics/events/EventPoint;

    invoke-direct {v1, v15, v10, v11}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    .line 1994
    invoke-virtual {v1, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {v1, v7}, Lcom/senseonics/events/EventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 1996
    invoke-virtual {v1, v8}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {v3, v7}, Lcom/senseonics/util/AlertHelper;->getTransmitterMessageCodeForCalibrateEvent(Lcom/senseonics/util/Utils$EVENT_TYPE;)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    if-eqz p9, :cond_4

    .line 2000
    new-instance v8, Lcom/senseonics/util/Notification;

    invoke-static {v0, v7}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v19

    .line 2001
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v20

    .line 2002
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    move-object/from16 v18, v8

    move-object/from16 v23, v1

    invoke-direct/range {v18 .. v23}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    :goto_3
    move/from16 v4, p6

    move-object v2, v5

    goto/16 :goto_16

    .line 2005
    :cond_4
    new-instance v8, Lcom/senseonics/util/Notification;

    invoke-static {v0, v7}, Lcom/senseonics/util/Utils;->getEventNameNotTranslated(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v19

    .line 2006
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v20

    .line 2007
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v21

    move-object/from16 v18, v8

    move-object/from16 v23, v1

    invoke-direct/range {v18 .. v23}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_3

    .line 2013
    :pswitch_1
    new-instance v9, Lcom/senseonics/events/EventPoint;

    invoke-direct {v9, v15, v10, v11}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    .line 2014
    invoke-virtual {v9, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v9, v13}, Lcom/senseonics/events/EventPoint;->setUnknownErrorCode(I)V

    .line 2016
    invoke-virtual {v9, v7}, Lcom/senseonics/events/EventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 2017
    invoke-virtual {v9, v8}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 2018
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2019
    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 2020
    invoke-virtual {v9, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 2023
    sget-object v7, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v11, -0x1

    if-ne v1, v7, :cond_5

    if-eq v13, v11, :cond_5

    .line 2026
    invoke-virtual {v9, v13}, Lcom/senseonics/events/EventPoint;->setUnknownErrorCode(I)V

    .line 2029
    :cond_5
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v7

    const-string v13, ""

    if-lez v7, :cond_7

    if-eqz p9, :cond_6

    .line 2033
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 2036
    :cond_6
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object v13

    :goto_4
    const v15, 0x7f0f027d

    if-ne v7, v15, :cond_7

    .line 2041
    invoke-virtual {v9}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result v7

    if-eq v7, v11, :cond_7

    .line 2044
    invoke-static {v0, v13, v7}, Lcom/senseonics/util/Utils;->replaceUnknownErrorCodeString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v36, v5

    goto :goto_5

    :cond_7
    move-object/from16 v36, v5

    move-object v7, v13

    .line 2049
    :goto_5
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v1, v14, v4, v5}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v15

    move/from16 v4, p6

    if-ne v4, v12, :cond_9

    .line 2054
    sget-object v1, Lcom/senseonics/util/Utils;->BATTERY_EVENT_TAG:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2055
    new-instance v1, Lcom/senseonics/util/Notification;

    .line 2056
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-object v13, v1

    move-object v14, v7

    move-object/from16 v18, v9

    invoke-direct/range {v13 .. v18}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    :goto_6
    move-object v8, v1

    move-object/from16 v2, v36

    goto/16 :goto_16

    :cond_8
    :goto_7
    move-object/from16 v2, v36

    goto/16 :goto_15

    :cond_9
    if-nez p10, :cond_a

    .line 2059
    sget-object v11, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterReconnected:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v11, :cond_a

    goto :goto_7

    :cond_a
    if-nez p11, :cond_b

    .line 2061
    sget-object v11, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v11, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "0"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_7

    :cond_b
    if-nez p12, :cond_c

    .line 2063
    sget-object v11, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v11, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "0"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7

    .line 2066
    :cond_c
    new-instance v1, Lcom/senseonics/util/Notification;

    .line 2067
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-object v13, v1

    move-object v14, v7

    move-object/from16 v18, v9

    invoke-direct/range {v13 .. v18}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_6

    :pswitch_2
    move/from16 v4, p6

    move-object v8, v5

    .line 1938
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1940
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v13

    aget-object v18, v13, v1

    .line 1942
    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-gt v11, v1, :cond_d

    .line 1943
    sget-object v1, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    :goto_8
    move-object/from16 v24, v1

    goto :goto_9

    .line 1945
    :cond_d
    invoke-static {v0, v11}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1947
    :goto_9
    new-instance v1, Lcom/senseonics/events/AlertEventPoint;

    sget-object v19, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-object v13, v1

    move-object v12, v14

    move-object v14, v7

    move-object/from16 v16, v10

    move/from16 v17, v11

    invoke-direct/range {v13 .. v19}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 1950
    invoke-virtual {v1, v12}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1952
    sget-object v11, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v7, v11, :cond_10

    sget-object v11, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v11, :cond_e

    goto :goto_b

    .line 1963
    :cond_e
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v9

    .line 1964
    invoke-virtual {v1, v9}, Lcom/senseonics/events/EventPoint;->setRateValue(F)V

    if-eqz p9, :cond_f

    .line 1966
    invoke-static {v0, v7}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v9

    :goto_a
    move-object/from16 v23, v9

    goto :goto_c

    .line 1969
    :cond_f
    invoke-static {v7}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitleNotTranslated(Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_10
    :goto_b
    const/4 v9, 0x5

    .line 1954
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1955
    invoke-virtual {v1, v9}, Lcom/senseonics/events/EventPoint;->setPredictiveMinutes(I)V

    if-eqz p9, :cond_11

    .line 1957
    invoke-static {v0, v7}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    .line 1960
    :cond_11
    invoke-static {v7}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitleNotTranslated(Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    .line 1973
    :goto_c
    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v9, :cond_12

    .line 1974
    sget-object v7, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v7}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_d

    .line 1976
    :cond_12
    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v9, :cond_13

    .line 1977
    sget-object v7, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v7}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_d

    .line 1979
    :cond_13
    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v9, :cond_14

    .line 1980
    sget-object v7, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v7}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_d

    .line 1982
    :cond_14
    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v9, :cond_15

    .line 1983
    sget-object v7, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v7}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 1986
    :cond_15
    :goto_d
    new-instance v7, Lcom/senseonics/util/Notification;

    .line 1987
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v22, v7

    move-object/from16 v27, v1

    invoke-direct/range {v22 .. v27}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto/16 :goto_13

    :pswitch_3
    move/from16 v4, p6

    move-object v8, v5

    move-object v12, v14

    .line 1880
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v9, 0x5

    .line 1881
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1882
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v13

    aget-object v9, v13, v9

    .line 1884
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->values()[Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v13

    aget-object v19, v13, v1

    .line 1885
    new-instance v1, Lcom/senseonics/events/AlertEventPoint;

    move-object v13, v1

    move-object v14, v7

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v18, v9

    invoke-direct/range {v13 .. v19}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 1887
    invoke-virtual {v1, v12}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1889
    sget-object v12, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v12, :cond_18

    if-eqz p9, :cond_16

    .line 1891
    invoke-static {v0, v9}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    .line 1894
    :cond_16
    invoke-static {v9}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventTitleNotTranslated(Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v7

    .line 1897
    :goto_e
    sget-object v12, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v9, v12, :cond_17

    .line 1898
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v9}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_10

    .line 1900
    :cond_17
    sget-object v12, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v9, v12, :cond_1c

    .line 1901
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v9}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_10

    .line 1904
    :cond_18
    sget-object v12, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v12, :cond_1b

    if-eqz p9, :cond_19

    .line 1906
    invoke-static {v0, v9}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    .line 1909
    :cond_19
    invoke-static {v9}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitleNotTranslated(Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v7

    .line 1912
    :goto_f
    sget-object v12, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v9, v12, :cond_1a

    .line 1913
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v9}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_10

    .line 1915
    :cond_1a
    sget-object v12, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v9, v12, :cond_1c

    .line 1916
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v9}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_10

    .line 1920
    :cond_1b
    invoke-static {v0, v7}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v7

    :cond_1c
    :goto_10
    move-object/from16 v23, v7

    .line 1923
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-gt v11, v7, :cond_1d

    .line 1924
    sget-object v7, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    :goto_11
    move-object/from16 v24, v7

    goto :goto_12

    .line 1926
    :cond_1d
    invoke-static {v0, v11}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_11

    .line 1929
    :goto_12
    new-instance v7, Lcom/senseonics/util/Notification;

    .line 1930
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v22, v7

    move-object/from16 v27, v1

    invoke-direct/range {v22 .. v27}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    :goto_13
    move-object v2, v8

    move-object v8, v7

    goto/16 :goto_16

    :pswitch_4
    move/from16 v4, p6

    move-object v1, v5

    move-object v12, v14

    const/4 v13, 0x7

    .line 1864
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1865
    invoke-static {}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->values()[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v14

    aget-object v18, v14, v13

    .line 1866
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1868
    new-instance v9, Lcom/senseonics/events/ExerciseEventPoint;

    move-object v13, v9

    move v14, v15

    move-object v15, v10

    move/from16 v16, v11

    move-object/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Lcom/senseonics/events/ExerciseEventPoint;-><init>(ILjava/util/Calendar;IILcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;Ljava/lang/String;)V

    .line 1870
    invoke-virtual {v9, v12}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1871
    move-object v8, v9

    check-cast v8, Lcom/senseonics/events/ExerciseEventPoint;

    .line 1872
    invoke-virtual {v8, v0}, Lcom/senseonics/events/ExerciseEventPoint;->getDurationText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 1873
    new-instance v8, Lcom/senseonics/util/Notification;

    invoke-static {v0, v7}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v23

    .line 1874
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v22, v8

    move-object/from16 v27, v9

    invoke-direct/range {v22 .. v27}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    move-object v2, v1

    goto/16 :goto_16

    :pswitch_5
    move/from16 v4, p6

    move-object v1, v5

    move-object v12, v14

    const/4 v9, 0x5

    .line 1851
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1852
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->values()[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v13

    aget-object v9, v13, v9

    const/4 v13, 0x6

    .line 1853
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1854
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->values()[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v14

    aget-object v18, v14, v13

    .line 1856
    new-instance v14, Lcom/senseonics/events/HealthEventPoint;

    move-object v13, v14

    move-object/from16 v37, v1

    move-object v1, v14

    move v14, v15

    move-object v15, v10

    move/from16 v16, v11

    move-object/from16 v17, v9

    move-object/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Lcom/senseonics/events/HealthEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$HEALTH_CONDITION;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;Ljava/lang/String;)V

    .line 1858
    invoke-virtual {v1, v12}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1859
    new-instance v8, Lcom/senseonics/util/Notification;

    invoke-static {v0, v7}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v23

    .line 1860
    invoke-static {v0, v9}, Lcom/senseonics/events/EventUtils;->getHealthConditionName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;)Ljava/lang/String;

    move-result-object v24

    .line 1861
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v22, v8

    move-object/from16 v27, v1

    invoke-direct/range {v22 .. v27}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    move-object/from16 v2, v37

    goto/16 :goto_16

    :pswitch_6
    move/from16 v4, p6

    move-object v12, v14

    move-object v14, v5

    .line 1837
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1838
    invoke-static {}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->values()[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v13

    aget-object v18, v13, v1

    .line 1839
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 1841
    new-instance v9, Lcom/senseonics/events/InsulinEventPoint;

    move-object v13, v9

    move-object v2, v14

    move v14, v15

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v17, v1

    move-object/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Lcom/senseonics/events/InsulinEventPoint;-><init>(ILjava/util/Calendar;IFLcom/senseonics/events/EventUtils$INSULIN_TYPE;Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v9, v12}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1844
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0f0279

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1846
    new-instance v11, Lcom/senseonics/util/Notification;

    invoke-static {v0, v7}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v23

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1848
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v22, v11

    move-object/from16 v27, v9

    invoke-direct/range {v22 .. v27}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_14

    :pswitch_7
    move/from16 v4, p6

    move-object v2, v5

    move-object v12, v14

    .line 1823
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1824
    invoke-static {}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->values()[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v7

    aget-object v1, v7, v1

    .line 1825
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1827
    new-instance v9, Lcom/senseonics/events/MealEventPoint;

    move-object v13, v9

    move v14, v15

    move-object v15, v10

    move/from16 v16, v11

    move-object/from16 v17, v1

    move/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Lcom/senseonics/events/MealEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V

    .line 1829
    invoke-virtual {v9, v12}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1830
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0f010c

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1832
    new-instance v11, Lcom/senseonics/util/Notification;

    invoke-static {v0, v1}, Lcom/senseonics/events/EventUtils;->getMealTypeName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$MEAL_TYPE;)Ljava/lang/String;

    move-result-object v23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1834
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v22, v11

    move-object/from16 v27, v9

    invoke-direct/range {v22 .. v27}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    :goto_14
    move-object v8, v11

    goto/16 :goto_16

    :pswitch_8
    move/from16 v4, p6

    move-object v2, v5

    move-object v12, v14

    .line 1812
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1813
    new-instance v1, Lcom/senseonics/events/GlucoseEventPoint;

    move-object v13, v1

    move v14, v15

    move-object v15, v10

    move/from16 v16, v11

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v18}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(ILjava/util/Calendar;IILjava/lang/String;)V

    .line 1815
    invoke-virtual {v1, v12}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1816
    invoke-static {v0, v11}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    .line 1818
    new-instance v8, Lcom/senseonics/util/Notification;

    invoke-static {v0, v7}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v23

    .line 1820
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v22, v8

    move-object/from16 v27, v1

    invoke-direct/range {v22 .. v27}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_16

    :pswitch_9
    move/from16 v4, p6

    move-object v2, v5

    move-object v12, v14

    .line 1801
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1802
    new-instance v1, Lcom/senseonics/events/CalibrationEventPoint;

    move-object v13, v1

    move v14, v15

    move-object v15, v10

    move/from16 v16, v11

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v18}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(ILjava/util/Calendar;IILjava/lang/String;)V

    .line 1804
    invoke-virtual {v1, v12}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1805
    invoke-static {v0, v11}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    .line 1807
    new-instance v8, Lcom/senseonics/util/Notification;

    invoke-static {v0, v7}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v23

    .line 1809
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v25

    move-object/from16 v22, v8

    move-object/from16 v27, v1

    invoke-direct/range {v22 .. v27}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_16

    :goto_15
    move-object/from16 v8, v16

    :goto_16
    if-eqz v8, :cond_1e

    .line 2074
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2075
    :cond_1e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_17

    :cond_1f
    move-object v5, v2

    const/4 v1, 0x2

    move-object/from16 v4, p0

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_20
    move-object v2, v5

    .line 2077
    :goto_17
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getSensorLogsStartingFrom(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 693
    invoke-direct/range {p0 .. p1}, Lcom/senseonics/db/DatabaseManager;->getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J

    move-result-wide v1

    move-object/from16 v3, p2

    .line 694
    invoke-direct {v0, v3}, Lcom/senseonics/db/DatabaseManager;->getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J

    move-result-wide v3

    const-string v8, "timestamp >= ? AND timestamp <= ? AND glucoseLevel >= 40 AND glucoseLevel <= 400"

    const/4 v13, 0x2

    .line 702
    new-array v9, v13, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    .line 703
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v9, v3

    const-string v12, "timestamp ASC"

    .line 706
    iget-object v5, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "glucoseReadings"

    const-string v14, "glucoseLevel"

    const-string v15, "timestamp"

    const-string v16, "groupId"

    const-string v17, "recordNumber"

    const-string v18, "glucoseRaw1"

    const-string v19, "glucoseRaw2"

    const-string v20, "glucoseRaw3"

    const-string v21, "glucoseRaw4"

    const-string v22, "glucoseRaw5"

    const-string v23, "glucoseRaw6"

    const-string v24, "glucoseRaw7"

    const-string v25, "glucoseRaw8"

    filled-new-array/range {v14 .. v25}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 723
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 725
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 726
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 727
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 729
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 730
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/4 v6, 0x3

    .line 731
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/4 v7, 0x4

    .line 732
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x5

    .line 733
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x6

    .line 734
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v14, 0x7

    .line 735
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v14, 0x8

    .line 736
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v11, 0x9

    .line 737
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v9, 0xa

    .line 738
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v7, 0xb

    .line 739
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 740
    new-instance v6, Lcom/senseonics/graph/util/Glucose;

    new-array v14, v14, [I

    aput v8, v14, v2

    aput v10, v14, v3

    aput v12, v14, v13

    const/4 v8, 0x3

    aput v20, v14, v8

    const/4 v8, 0x4

    aput v21, v14, v8

    const/4 v8, 0x5

    aput v11, v14, v8

    const/4 v8, 0x6

    aput v9, v14, v8

    const/4 v8, 0x7

    aput v7, v14, v8

    move-object v7, v14

    move-object v14, v6

    move-object/from16 v20, v7

    invoke-direct/range {v14 .. v20}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII[I)V

    .line 743
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 749
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v4
.end method

.method public getSqlLiteHelper()Lcom/senseonics/db/SenseonicsDBHelper;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

    return-object v0
.end method

.method public getStatistics2Between(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 9

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " day\') AND datetime(\'now\')) AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "glucoseLevel"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "glucoseLevel"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 677
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "glucoseReadings"

    const-string p1, "COUNT( glucoseLevel )"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 683
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-lt p2, p4, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 684
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 685
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2

    .line 688
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p3
.end method

.method public getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)[D
    .locals 0

    .line 565
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWithWhere(Ljava/lang/String;)[D

    move-result-object p1

    return-object p1
.end method

.method public getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)[D
    .locals 0

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWithWhere(Ljava/lang/String;)[D

    move-result-object p1

    return-object p1
.end method

.method public getStatisticsBetween(ILjava/lang/String;)[I
    .locals 9

    const/4 v0, 0x4

    .line 600
    new-array v0, v0, [I

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 604
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "glucoseReadings"

    const-string p1, "AVG( glucoseLevel )"

    const-string p2, "MIN( glucoseLevel )"

    const-string v3, "MAX( glucoseLevel )"

    const-string v5, "COUNT( glucoseLevel )"

    filled-new-array {p1, p2, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 605
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 622
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    .line 623
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 625
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v0, v2

    .line 626
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 627
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 628
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v0, p2

    .line 629
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 633
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public hideCalibrationEventAndGetNotesDuringSync(JIII)Ljava/lang/String;
    .locals 6

    .line 914
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide p1

    .line 916
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    sub-long v2, p1, v0

    add-long/2addr p1, v0

    const-string v0, "eventType == ? AND timestamp >= ? AND timestamp <= ? AND glucoseLevel == ? AND (customType == ? OR customType == ?) AND event_synced == 1 AND event_hidden == 0"

    const/4 v1, 0x6

    .line 927
    new-array v1, v1, [Ljava/lang/String;

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 928
    invoke-virtual {v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 929
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 930
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 931
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 932
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 933
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    .line 936
    invoke-direct {p0, v0, v1}, Lcom/senseonics/db/DatabaseManager;->hideCalibrationEventAndGetNotesDuringSyncSubMethod(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hideCalibrationEventAndGetNotesDuringSync(JIIII)Ljava/lang/String;
    .locals 6

    .line 940
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide p1

    .line 942
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    sub-long v2, p1, v0

    add-long/2addr p1, v0

    const-string v0, "eventType == ? AND timestamp >= ? AND timestamp <= ? AND glucoseLevel == ? AND (customType == ? OR customType == ? OR customType == ?) AND event_synced == 1 AND event_hidden == 0"

    const/4 v1, 0x7

    .line 953
    new-array v1, v1, [Ljava/lang/String;

    sget-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 954
    invoke-virtual {v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 955
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 956
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 957
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    .line 958
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v1, p2

    .line 959
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    .line 960
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v1, p2

    .line 963
    invoke-direct {p0, v0, v1}, Lcom/senseonics/db/DatabaseManager;->hideCalibrationEventAndGetNotesDuringSyncSubMethod(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notificationEventsExistsSince(JLjava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/senseonics/util/TransmitterMessageCode;",
            ">;)Z"
        }
    .end annotation

    .line 2098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp > ? AND eventType IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    .line 2100
    new-array v7, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v7, p2

    .line 2102
    iget-object v3, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "events"

    const-string p1, "timestamp"

    const-string v1, "eventType"

    const-string v2, "customType"

    filled-new-array {p1, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2112
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v0, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x2

    .line 2114
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 2115
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2118
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2120
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

    invoke-virtual {v0}, Lcom/senseonics/db/SenseonicsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public setSqlLiteHelper(Lcom/senseonics/db/SenseonicsDBHelper;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/senseonics/db/DatabaseManager;->sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

    return-void
.end method

.method public updateEvent(Lcom/senseonics/events/EventPoint;)V
    .locals 5

    const-string v0, "id = ? "

    const/4 v1, 0x1

    .line 1482
    new-array v2, v1, [Ljava/lang/String;

    .line 1483
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getDatabaseId()I

    move-result v3

    .line 1482
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1486
    instance-of v3, p1, Lcom/senseonics/events/GlucoseEventPoint;

    if-nez v3, :cond_3

    .line 1487
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/senseonics/db/DatabaseManager;->getGlucoseLevelAt(Ljava/util/Calendar;Z)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1488
    sget v3, Lcom/senseonics/util/Utils;->INT_MAX:I

    if-lt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_2

    .line 1491
    invoke-virtual {p1, v1}, Lcom/senseonics/events/EventPoint;->setGlucoseLevel(I)V

    goto :goto_1

    .line 1489
    :cond_1
    :goto_0
    sget v1, Lcom/senseonics/util/Utils;->EVENT_POSITION:I

    :cond_2
    :goto_1
    const-string v3, "glucose level"

    .line 1493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -----"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_3
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->isEventSynced()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/senseonics/db/DatabaseManager;->createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 1497
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "events"

    invoke-virtual {v1, v3, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v0, "updated"

    .line 1499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rows"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
