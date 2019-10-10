.class public Lcom/senseonics/util/NotificationEventPersistor;
.super Ljava/lang/Object;
.source "NotificationEventPersistor.java"


# instance fields
.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private rssiReader:Lcom/senseonics/bluetoothle/RssiReader;


# direct methods
.method public constructor <init>(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/bluetoothle/RssiReader;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/senseonics/util/NotificationEventPersistor;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 27
    iput-object p2, p0, Lcom/senseonics/util/NotificationEventPersistor;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 28
    iput-object p3, p0, Lcom/senseonics/util/NotificationEventPersistor;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 29
    iput-object p4, p0, Lcom/senseonics/util/NotificationEventPersistor;->rssiReader:Lcom/senseonics/bluetoothle/RssiReader;

    return-void
.end method


# virtual methods
.method public createConnectionNotificationEventPoint(Lcom/senseonics/util/TransmitterMessageCode;J)V
    .locals 8

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 36
    iget-object v2, p0, Lcom/senseonics/util/NotificationEventPersistor;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryVoltage()F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/senseonics/util/NotificationEventPersistor;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getDelayBLEDisconnectionAlarm()I

    move-result v5

    div-int/lit8 v5, v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/senseonics/util/NotificationEventPersistor;->rssiReader:Lcom/senseonics/bluetoothle/RssiReader;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/senseonics/bluetoothle/RssiReader;->getRssiString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "~"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "~"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/senseonics/util/NotificationEventPersistor;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    sget-object p3, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p3, :cond_0

    move-object p2, v0

    .line 41
    :cond_0
    invoke-virtual {v1, p2}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, p1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 p1, -0x1

    .line 43
    invoke-virtual {v1, p1, p2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 44
    invoke-virtual {v1, v3}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 45
    iget-object p1, p0, Lcom/senseonics/util/NotificationEventPersistor;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v1, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    move-result-wide p1

    .line 46
    const-class p3, Lcom/senseonics/util/NotificationEventPersistor;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " created"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createDisconnectedNotificationEventPoint()V
    .locals 5

    .line 50
    new-instance v0, Lcom/senseonics/events/EventPoint;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    const-string v1, ""

    .line 52
    invoke-virtual {v0, v1}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 v1, -0x1

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 55
    invoke-virtual {v0, v3}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 56
    iget-object v1, p0, Lcom/senseonics/util/NotificationEventPersistor;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    move-result-wide v0

    .line 57
    const-class v2, Lcom/senseonics/util/NotificationEventPersistor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " created"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createNotificationEventPoint(Lcom/senseonics/util/TransmitterMessageCode;Z)Lcom/senseonics/events/EventPoint;
    .locals 4

    .line 62
    new-instance v0, Lcom/senseonics/events/EventPoint;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    .line 63
    :goto_0
    invoke-virtual {v0, p2}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 p1, -0x1

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 66
    invoke-virtual {v0, v3}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 67
    iget-object p1, p0, Lcom/senseonics/util/NotificationEventPersistor;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-object v0
.end method
