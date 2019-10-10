.class Lcom/senseonics/gcm/GCMSubResponse;
.super Ljava/lang/Object;
.source "GCMResponse.java"


# instance fields
.field message_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/senseonics/gcm/GCMSubResponse;->message_id:Ljava/lang/String;

    return-void
.end method
