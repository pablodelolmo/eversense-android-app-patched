.class public interface abstract Lcom/senseonics/bluetoothle/DiscoverCallback;
.super Ljava/lang/Object;
.source "DiscoverCallback.java"


# virtual methods
.method public abstract onDevice(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Transmitter;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDiscoveryTimeout()V
.end method
