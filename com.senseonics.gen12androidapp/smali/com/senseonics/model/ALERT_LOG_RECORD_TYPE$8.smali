.class final enum Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$8;
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

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$1;)V

    return-void
.end method


# virtual methods
.method public save(Lcom/senseonics/db/DatabaseManager;ILjava/util/Calendar;III)V
    .locals 9

    .line 67
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v3, p3

    move v4, p2

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v8}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->access$100(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IFIIZ)V

    return-void
.end method
