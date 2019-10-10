.class Lcom/senseonics/bluetoothle/ConnectionStateModifier$1;
.super Ljava/lang/Object;
.source "ConnectionStateModifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Ljava/util/List;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

.field final synthetic val$state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field final synthetic val$transmitters:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/ConnectionStateModifier;Ljava/util/List;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$1;->this$0:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$1;->val$transmitters:Ljava/util/List;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$1;->val$state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 28
    const-class v0, Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$1;->val$transmitters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " transmitters to disconnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$1;->val$transmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/bluetoothle/Transmitter;

    .line 30
    iget-object v2, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$1;->val$state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v1, v2}, Lcom/senseonics/bluetoothle/Transmitter;->setConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 31
    const-class v2, Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending TransmitterConnectionEvent with tx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v2, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$1;->this$0:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    invoke-static {v2}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->access$000(Lcom/senseonics/bluetoothle/ConnectionStateModifier;)Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;

    invoke-direct {v3, v1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;-><init>(Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
