.class public Lcom/senseonics/gcm/GCMMessage;
.super Ljava/lang/Object;
.source "GCMMessage.java"


# instance fields
.field private content_available:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_available"
    .end annotation
.end field

.field private notification:Lcom/senseonics/gcm/GCMSubMessage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification"
    .end annotation
.end field

.field private priority:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priority"
    .end annotation
.end field

.field private to:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "to"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/senseonics/gcm/GCMSubMessage;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/senseonics/gcm/GCMMessage;->to:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/senseonics/gcm/GCMMessage;->content_available:Ljava/lang/Boolean;

    .line 18
    iput-object p3, p0, Lcom/senseonics/gcm/GCMMessage;->priority:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/senseonics/gcm/GCMMessage;->notification:Lcom/senseonics/gcm/GCMSubMessage;

    return-void
.end method


# virtual methods
.method public getContent_available()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/senseonics/gcm/GCMMessage;->content_available:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNotification()Lcom/senseonics/gcm/GCMSubMessage;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/senseonics/gcm/GCMMessage;->notification:Lcom/senseonics/gcm/GCMSubMessage;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/senseonics/gcm/GCMMessage;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/senseonics/gcm/GCMMessage;->to:Ljava/lang/String;

    return-object v0
.end method
