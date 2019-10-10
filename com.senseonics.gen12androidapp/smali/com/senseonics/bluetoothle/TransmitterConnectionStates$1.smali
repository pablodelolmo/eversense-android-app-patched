.class Lcom/senseonics/bluetoothle/TransmitterConnectionStates$1;
.super Ljava/lang/Object;
.source "TransmitterConnectionStates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/TransmitterConnectionStates;->transmittersThatNeedDisconnecting()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/senseonics/bluetoothle/Transmitter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/TransmitterConnectionStates;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/TransmitterConnectionStates;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionStates$1;->this$0:Lcom/senseonics/bluetoothle/TransmitterConnectionStates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/senseonics/bluetoothle/Transmitter;)Z
    .locals 1

    .line 36
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    check-cast p1, Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionStates$1;->apply(Lcom/senseonics/bluetoothle/Transmitter;)Z

    move-result p1

    return p1
.end method
