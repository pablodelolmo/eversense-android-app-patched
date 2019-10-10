.class public Lcom/senseonics/bluetoothle/TransmitterScanner;
.super Ljava/lang/Object;
.source "TransmitterScanner.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static SENSEONICS_SERVICE_HANDLE:Ljava/lang/String; = "c3230001-9308-47ae-ac12-3d030892a211"

.field static final SENSEONICS_SERVICE_HANDLE_UUID:Ljava/util/UUID;


# instance fields
.field protected bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

.field protected handler:Landroid/os/Handler;

.field private leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private queryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

.field protected scanPeriod:J

.field private shouldStillScan:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lcom/senseonics/bluetoothle/TransmitterScanner;->SENSEONICS_SERVICE_HANDLE:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/senseonics/bluetoothle/TransmitterScanner;->SENSEONICS_SERVICE_HANDLE_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;Landroid/os/Handler;JLcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;)V
    .locals 0
    .param p3    # J
        .annotation runtime Ljavax/inject/Named;
            value = "SCAN_PERIOD_MILLISECONDS"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    .line 34
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->handler:Landroid/os/Handler;

    .line 35
    iput-wide p3, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->scanPeriod:J

    .line 36
    iput-object p5, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->queryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/bluetoothle/TransmitterScanner;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->shouldStillScan:Z

    return p0
.end method

.method static synthetic access$100(Lcom/senseonics/bluetoothle/TransmitterScanner;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object p0
.end method

.method static synthetic access$102(Lcom/senseonics/bluetoothle/TransmitterScanner;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/senseonics/bluetoothle/TransmitterScanner;[B)Ljava/util/List;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterScanner;->parseUUIDs([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private parseUUIDs([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 118
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 119
    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 123
    aget-byte v3, p1, v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v2, v2, -0x1

    add-int/2addr v4, v2

    :cond_1
    move v2, v4

    goto :goto_0

    :goto_1
    :pswitch_1
    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 141
    :try_start_0
    invoke-static {p1, v4, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 142
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 144
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 145
    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v3, v4, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 155
    throw p1

    :catch_0
    :goto_2
    add-int/lit8 v4, v5, 0xf

    add-int/lit8 v2, v2, -0x10

    goto :goto_1

    :goto_3
    :pswitch_2
    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 128
    aget-byte v4, p1, v4

    add-int/lit8 v6, v5, 0x1

    .line 129
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, -0x2

    const-string v5, "%08x-0000-1000-8000-00805f9b34fb"

    .line 131
    new-array v3, v3, [Ljava/lang/Object;

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 131
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_3

    :cond_2
    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method scan(Lcom/senseonics/bluetoothle/DiscoverCallback;)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterScanner;->stopLeScanIfCurrentlyScanning()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->shouldStillScan:Z

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->queryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    new-instance v2, Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/senseonics/bluetoothle/TransmitterScanner$1;-><init>(Lcom/senseonics/bluetoothle/TransmitterScanner;Ljava/util/Set;Lcom/senseonics/bluetoothle/DiscoverCallback;)V

    invoke-virtual {v1, v2}, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;->startQuery(Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;)V

    .line 85
    new-instance v1, Lcom/senseonics/bluetoothle/TransmitterScanner$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/senseonics/bluetoothle/TransmitterScanner$2;-><init>(Lcom/senseonics/bluetoothle/TransmitterScanner;Ljava/util/Set;Lcom/senseonics/bluetoothle/DiscoverCallback;)V

    iput-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method stopLeScanIfCurrentlyScanning()V
    .locals 2

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->shouldStillScan:Z

    .line 108
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    :cond_0
    return-void
.end method
