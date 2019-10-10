.class public Lcom/senseonics/util/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# instance fields
.field private description:Ljava/lang/String;

.field private eventPoint:Lcom/senseonics/events/EventPoint;

.field private timestamp:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/senseonics/util/Notification;->title:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/senseonics/util/Notification;->description:Ljava/lang/String;

    .line 19
    iput-wide p3, p0, Lcom/senseonics/util/Notification;->timestamp:J

    .line 21
    iput-object p5, p0, Lcom/senseonics/util/Notification;->eventPoint:Lcom/senseonics/events/EventPoint;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/senseonics/util/Notification;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEventPoint()Lcom/senseonics/events/EventPoint;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/senseonics/util/Notification;->eventPoint:Lcom/senseonics/events/EventPoint;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/senseonics/util/Notification;->timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/senseonics/util/Notification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/senseonics/util/Notification;->description:Ljava/lang/String;

    return-void
.end method

.method public setEventPoint(Lcom/senseonics/events/EventPoint;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/senseonics/util/Notification;->eventPoint:Lcom/senseonics/events/EventPoint;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/senseonics/util/Notification;->timestamp:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/senseonics/util/Notification;->title:Ljava/lang/String;

    return-void
.end method
