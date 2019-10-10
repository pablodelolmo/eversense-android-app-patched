.class public Lcom/senseonics/bluetoothle/Transmitter;
.super Ljava/lang/Object;
.source "Transmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    }
.end annotation


# instance fields
.field private final address:Ljava/lang/String;

.field private connectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-direct {p0, p1, p2, v0}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/senseonics/bluetoothle/Transmitter;->address:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/senseonics/bluetoothle/Transmitter;->name:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/senseonics/bluetoothle/Transmitter;->connectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/senseonics/bluetoothle/Transmitter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 61
    :cond_1
    check-cast p1, Lcom/senseonics/bluetoothle/Transmitter;

    .line 63
    iget-object v1, p0, Lcom/senseonics/bluetoothle/Transmitter;->address:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/senseonics/bluetoothle/Transmitter;->address:Ljava/lang/String;

    iget-object p1, p1, Lcom/senseonics/bluetoothle/Transmitter;->address:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/senseonics/bluetoothle/Transmitter;->address:Ljava/lang/String;

    if-eqz p1, :cond_3

    :goto_0
    return v2

    :cond_3
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/senseonics/bluetoothle/Transmitter;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/senseonics/bluetoothle/Transmitter;->connectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/senseonics/bluetoothle/Transmitter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/senseonics/bluetoothle/Transmitter;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/bluetoothle/Transmitter;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/senseonics/bluetoothle/Transmitter;->connectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/senseonics/bluetoothle/Transmitter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/Transmitter;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/Transmitter;->connectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
