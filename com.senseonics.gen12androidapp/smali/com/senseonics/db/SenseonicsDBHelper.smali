.class public Lcom/senseonics/db/SenseonicsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SenseonicsDBHelper.java"


# static fields
.field public static final ALERTS_TABLE:Ljava/lang/String; = "alerts"

.field public static final ALERT_CODE_FIELD:Ljava/lang/String; = "alertCode"

.field public static final AMOUNT_FIELD:Ljava/lang/String; = "amount"

.field public static final CUSTOM_FIELD:Ljava/lang/String; = "customType"

.field public static final CUSTOM_FIELD2:Ljava/lang/String; = "customType2"

.field private static final DATABASE_NAME:Ljava/lang/String; = "milan.db"

.field private static final DATABASE_VERSION:I = 0x17

.field public static final END_TIME_FIELD:Ljava/lang/String; = "endTime"

.field public static final EVENTS_TABLE:Ljava/lang/String; = "events"

.field public static final EVENT_HIDDEN:Ljava/lang/String; = "event_hidden"

.field public static final EVENT_HIDDEN_TIMESTAMP:Ljava/lang/String; = "event_hidden_timestamp"

.field public static final EVENT_SYNCED:Ljava/lang/String; = "event_synced"

.field public static final EVENT_TYPE_FIELD:Ljava/lang/String; = "eventType"

.field public static final EXERCISE_INTENSITY_FIELD:Ljava/lang/String; = "exerciseIntensity"

.field public static final GLUCOSE_LEVEL_FIELD:Ljava/lang/String; = "glucoseLevel"

.field public static final GLUCOSE_RAW_1_FIELD:Ljava/lang/String; = "glucoseRaw1"

.field public static final GLUCOSE_RAW_2_FIELD:Ljava/lang/String; = "glucoseRaw2"

.field public static final GLUCOSE_RAW_3_FIELD:Ljava/lang/String; = "glucoseRaw3"

.field public static final GLUCOSE_RAW_4_FIELD:Ljava/lang/String; = "glucoseRaw4"

.field public static final GLUCOSE_RAW_5_FIELD:Ljava/lang/String; = "glucoseRaw5"

.field public static final GLUCOSE_RAW_6_FIELD:Ljava/lang/String; = "glucoseRaw6"

.field public static final GLUCOSE_RAW_7_FIELD:Ljava/lang/String; = "glucoseRaw7"

.field public static final GLUCOSE_RAW_8_FIELD:Ljava/lang/String; = "glucoseRaw8"

.field public static final GLUCOSE_READINGS_TABLE:Ljava/lang/String; = "glucoseReadings"

.field public static final GROUP_ID_FIELD:Ljava/lang/String; = "groupId"

.field public static final HEALTH_SEVERITY_FIELD:Ljava/lang/String; = "healthSeverity"

.field public static final HIDDEN:I = 0x1

.field private static final IdxEventsE:Ljava/lang/String; = "IdxEventsE"

.field private static final IdxEventsET:Ljava/lang/String; = "IdxEventsET"

.field private static final IdxEventsT:Ljava/lang/String; = "IdxEventsT"

.field private static final IdxGlucoseG:Ljava/lang/String; = "IdxGlucoseG"

.field private static final IdxGlucoseT:Ljava/lang/String; = "IdxGlucoseT"

.field private static final IdxGlucoseTG:Ljava/lang/String; = "IdxGlucoseTG"

.field public static final NOTES_FIELD:Ljava/lang/String; = "notes"

.field public static final NOT_HIDDEN:I = 0x0

.field public static final NOT_SYNCED:I = 0x0

.field public static final RECORD_NUMBER_FIELD:Ljava/lang/String; = "recordNumber"

.field public static final START_TIME_FIELD:Ljava/lang/String; = "startTime"

.field public static final SYNCED:I = 0x1

.field public static final TIMESTAMP_FIELD:Ljava/lang/String; = "timestamp"

.field public static final TRANSMITTER_NAME:Ljava/lang/String; = "transmitter_name"

.field public static final UNKNOWN_ERROR_CODE:Ljava/lang/String; = "unknown_error_code"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "milan.db"

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/senseonics/db/SenseonicsDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x17

    .line 63
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createIndicies(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE INDEX IdxGlucoseTG on glucoseReadings(timestamp, glucoseLevel)"

    .line 149
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IdxGlucoseG on glucoseReadings(glucoseLevel)"

    .line 150
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IdxGlucoseT on glucoseReadings(timestamp)"

    .line 151
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IdxEventsET on events(timestamp, eventType)"

    .line 152
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IdxEventsT on events(timestamp)"

    .line 153
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IdxEventsE on events(eventType)"

    .line 154
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "create table if not exists glucoseReadings (timestamp LONG primary key , glucoseLevel INTEGER, groupId INTEGER, recordNumber LONG, glucoseRaw1 INTEGER DEFAULT 0, glucoseRaw2 INTEGER DEFAULT 0, glucoseRaw3 INTEGER DEFAULT 0, glucoseRaw4 INTEGER DEFAULT 0, glucoseRaw5 INTEGER DEFAULT 0, glucoseRaw6 INTEGER DEFAULT 0, glucoseRaw7 INTEGER DEFAULT 0, glucoseRaw8 INTEGER DEFAULT 0 )"

    const-string v1, "create table if not exists events (id integer primary key autoincrement, timestamp LONG, glucoseLevel INTEGER, eventType INTEGER, notes TEXT, amount FLOAT ,customType INTEGER, customType2 INTEGER, healthSeverity INTEGER, exerciseIntensity INTEGER, event_synced SMALLINT, event_hidden SMALLINT, event_hidden_timestamp LONG, transmitter_name TEXT, unknown_error_code INTEGER, recordNumber LONG )"

    const-string v2, "create table if not exists connectedTransmitters (_id integer primary key, name TEXT, address TEXT, status TEXT )"

    .line 110
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/senseonics/db/SenseonicsDBHelper;->createIndicies(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/16 p3, 0x17

    if-ge p2, p3, :cond_1

    const/16 p3, 0x16

    if-ne p2, p3, :cond_0

    const-string p2, "ALTER TABLE glucoseReadings ADD COLUMN glucoseRaw1 INTEGER DEFAULT 0"

    .line 122
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE glucoseReadings ADD COLUMN glucoseRaw2 INTEGER DEFAULT 0"

    .line 123
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE glucoseReadings ADD COLUMN glucoseRaw3 INTEGER DEFAULT 0"

    .line 124
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE glucoseReadings ADD COLUMN glucoseRaw4 INTEGER DEFAULT 0"

    .line 125
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE glucoseReadings ADD COLUMN glucoseRaw5 INTEGER DEFAULT 0"

    .line 126
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE glucoseReadings ADD COLUMN glucoseRaw6 INTEGER DEFAULT 0"

    .line 127
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE glucoseReadings ADD COLUMN glucoseRaw7 INTEGER DEFAULT 0"

    .line 128
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE glucoseReadings ADD COLUMN glucoseRaw8 INTEGER DEFAULT 0"

    .line 129
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string p2, "DROP INDEX IF EXISTS IdxGlucoseTG"

    .line 132
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP INDEX IF EXISTS IdxGlucoseG"

    .line 133
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP INDEX IF EXISTS IdxGlucoseT"

    .line 134
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP INDEX IF EXISTS IdxEventsET"

    .line 135
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP INDEX IF EXISTS IdxEventsT"

    .line 136
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP INDEX IF EXISTS IdxEventsE"

    .line 137
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/senseonics/db/SenseonicsDBHelper;->createIndicies(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_1
    const-string p2, "DROP TABLE IF EXISTS glucoseReadings"

    .line 141
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS events"

    .line 142
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS connectedTransmitters"

    .line 143
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/senseonics/db/SenseonicsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void
.end method
