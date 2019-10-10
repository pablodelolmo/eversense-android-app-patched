.class public Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "MyBluetoothGattCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final LET_BLUETOOTH_CATCH_ITS_BREATH_BETWEEN_CONNECT_AND_DISCOVER:I = 0x7d0


# instance fields
.field private bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private final connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private final handler:Landroid/os/Handler;

.field private lastCommandWritten:Ljava/lang/String;

.field private needServices:Z


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;Landroid/os/Handler;Lcom/senseonics/bluetoothle/ConnectionStateModifier;Landroid/bluetooth/BluetoothManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->needServices:Z

    .line 37
    iput-object p1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->eventBus:Lde/greenrobot/event/EventBus;

    .line 38
    iput-object p2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->handler:Landroid/os/Handler;

    .line 39
    iput-object p3, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    .line 40
    iput-object p4, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;)Lcom/senseonics/bluetoothle/ConnectionStateModifier;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method private convertToIntArray([B)[I
    .locals 3

    .line 163
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 164
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 165
    aget-byte v2, p1, v1

    if-ltz v2, :cond_0

    .line 166
    aget-byte v2, p1, v1

    aput v2, v0, v1

    goto :goto_1

    .line 168
    :cond_0
    aget-byte v2, p1, v1

    add-int/lit16 v2, v2, 0x100

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createTransmitterFromGattDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/senseonics/bluetoothle/Transmitter;
    .locals 2

    .line 96
    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private isMagicDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 2

    .line 212
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->MAGIC_DESCRIPTOR:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->COMMAND_RESPONSE_CHARACTERISTIC_HANDLE:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private lastCommandSentWas69()Z
    .locals 5

    .line 100
    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->saveBondingInformation()Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Request;->getData()[I

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->lastCommandWritten:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 102
    const-class v2, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "was last command sent a 69? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->lastCommandWritten:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private sendConnectionEstablishedEvents(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$3;-><init>(Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "Bluetooth"

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "&&&&&& NEED SERVICE  ?  last command:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->lastCommandWritten:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was69?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->lastCommandSentWas69()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3

    .line 152
    const-class v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "characteristic changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->convertToIntArray([B)[I

    move-result-object p2

    .line 156
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-direct {v1, p1, v0, v2}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 159
    iget-object p1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;

    invoke-direct {v0, p2, v1}, Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;-><init>([ILcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 177
    const-class p3, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "characteristic read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p2}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on device "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 182
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->lastCommandWritten:Ljava/lang/String;

    .line 183
    const-class p1, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "characteristic write data: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->lastCommandWritten:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", thread: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    .line 47
    const-class v2, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", new state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bond state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", connectionStateFromManagerForGattServer is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", on device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-class v2, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionStateFromManagerForGatt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", connectionStateFromManagerForGattServer: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    const/4 v2, 0x2

    if-nez p2, :cond_1

    if-ne v1, v2, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v0, :cond_1

    if-ne p3, v2, :cond_0

    const/4 p3, 0x1

    .line 55
    iget-object v2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/bluetoothle/event/TransportConnectionEvent;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->createTransmitterFromGattDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/senseonics/bluetoothle/event/TransportConnectionEvent;-><init>(Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->createTransmitterFromGattDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p3

    .line 59
    iget-object v2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    sget-object v3, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v2, p3, v3}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    if-ne v1, v2, :cond_2

    .line 61
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p3

    if-eq p3, v0, :cond_2

    .line 63
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->createTransmitterFromGattDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p3

    .line 64
    iget-object v2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    sget-object v3, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v2, p3, v3}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto :goto_0

    :cond_2
    const/16 p3, 0x85

    if-ne p2, p3, :cond_3

    .line 67
    iget-object p3, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/bluetoothle/event/BluetoothGattErrorEvent;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/senseonics/bluetoothle/event/BluetoothGattErrorEvent;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p3, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->createTransmitterFromGattDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p3

    .line 71
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->lastCommandSentWas69()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    iget-object v2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    sget-object v3, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->NEGOTIATING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v2, p3, v3}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto :goto_0

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$1;

    invoke-direct {v3, p0, p3}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$1;-><init>(Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 p3, 0x0

    .line 84
    :goto_1
    const-class v2, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionStateFromManager is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", haveTransportConnection: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-boolean v1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->needServices:Z

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    if-ne p2, v0, :cond_5

    .line 87
    iget-object p2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$2;

    invoke-direct {p3, p0, p1}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$2;-><init>(Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;Landroid/bluetooth/BluetoothGatt;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 188
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 189
    const-class p1, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onDescriptor read"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    .line 194
    const-class p3, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDescriptor ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") write for characteristic ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0, p2}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->isMagicDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 197
    sget-object p2, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->SENSEONICS_SERVICE_HANDLE:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    .line 198
    sget-object p3, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->COMMAND_CHARACTERISTIC_HANDLE:Ljava/util/UUID;

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->sendConnectionEstablishedEvents(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .line 204
    const-class p1, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReadRemoteRssi ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    .line 207
    iget-object p1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p3, Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;

    invoke-direct {p3, p2}, Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;-><init>(I)V

    invoke-virtual {p1, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .line 108
    const-class v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "services discovered with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    .line 111
    sget-object p2, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->SENSEONICS_SERVICE_HANDLE:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    if-nez p2, :cond_0

    const-string v0, "Bluetooth"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******** PANIC: gattService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " ********"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p2, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/bluetoothle/event/BluetoothGattErrorEvent;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/senseonics/bluetoothle/event/BluetoothGattErrorEvent;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->COMMAND_CHARACTERISTIC_HANDLE:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->COMMAND_RESPONSE_CHARACTERISTIC_HANDLE:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p1, p2, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 125
    sget-object v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->MAGIC_DESCRIPTOR:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 127
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 128
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    .line 129
    const-class p2, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "harvested characteristics, did enable notifications? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    new-instance p2, Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {p1, p2, v0}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    :cond_2
    :goto_0
    return-void
.end method
