.class final enum Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$13;
.super Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
.source "ALERT_LOG_RECORD_TYPE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$1;)V

    return-void
.end method


# virtual methods
.method public save(Lcom/senseonics/db/DatabaseManager;ILjava/util/Calendar;III)V
    .locals 6

    .line 103
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const-string v2, ""

    sget v3, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->access$200(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;ILjava/util/Calendar;Z)V

    return-void
.end method
