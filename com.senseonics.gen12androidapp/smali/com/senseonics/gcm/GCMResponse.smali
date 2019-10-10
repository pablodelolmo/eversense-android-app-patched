.class public Lcom/senseonics/gcm/GCMResponse;
.super Ljava/lang/Object;
.source "GCMResponse.java"


# instance fields
.field canonical_ids:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canonical_ids"
    .end annotation
.end field

.field failure:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "failure"
    .end annotation
.end field

.field multicast_id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "multicast_id"
    .end annotation
.end field

.field results:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "results"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/gcm/GCMSubResponse;",
            ">;"
        }
    .end annotation
.end field

.field success:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/senseonics/gcm/GCMSubResponse;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/senseonics/gcm/GCMResponse;->multicast_id:Ljava/lang/Integer;

    .line 21
    iput-object p2, p0, Lcom/senseonics/gcm/GCMResponse;->success:Ljava/lang/Integer;

    .line 22
    iput-object p3, p0, Lcom/senseonics/gcm/GCMResponse;->failure:Ljava/lang/Integer;

    .line 23
    iput-object p4, p0, Lcom/senseonics/gcm/GCMResponse;->canonical_ids:Ljava/lang/Integer;

    .line 24
    iput-object p5, p0, Lcom/senseonics/gcm/GCMResponse;->results:Ljava/util/List;

    return-void
.end method
