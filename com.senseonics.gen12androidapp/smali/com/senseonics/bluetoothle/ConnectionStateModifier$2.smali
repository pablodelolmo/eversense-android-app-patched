.class Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;
.super Ljava/lang/Object;
.source "ConnectionStateModifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

.field final synthetic val$state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field final synthetic val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/ConnectionStateModifier;Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;->this$0:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;->val$state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;->val$state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/Transmitter;->setConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 44
    const-class v0, Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending TransmitterConnectionEvent with tx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;->this$0:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->access$000(Lcom/senseonics/bluetoothle/ConnectionStateModifier;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/ConnectionStateModifier$2;->val$transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-direct {v1, v2}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;-><init>(Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method
