.class public Lcom/senseonics/gcm/GCMSubMessage;
.super Ljava/lang/Object;
.source "GCMSubMessage.java"


# instance fields
.field private body:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field private sound:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sound"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/senseonics/gcm/GCMSubMessage;->title:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/senseonics/gcm/GCMSubMessage;->body:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/senseonics/gcm/GCMSubMessage;->sound:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/senseonics/gcm/GCMSubMessage;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/senseonics/gcm/GCMSubMessage;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/senseonics/gcm/GCMSubMessage;->title:Ljava/lang/String;

    return-object v0
.end method
