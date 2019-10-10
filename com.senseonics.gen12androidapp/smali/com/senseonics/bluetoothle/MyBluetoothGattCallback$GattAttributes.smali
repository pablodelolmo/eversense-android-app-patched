.class Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;
.super Ljava/lang/Object;
.source "MyBluetoothGattCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GattAttributes"
.end annotation


# static fields
.field static final COMMAND_CHARACTERISTIC_HANDLE:Ljava/util/UUID;

.field static final COMMAND_RESPONSE_CHARACTERISTIC_HANDLE:Ljava/util/UUID;

.field static final MAGIC_DESCRIPTOR:Ljava/util/UUID;

.field static final SENSEONICS_SERVICE_HANDLE:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 217
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->MAGIC_DESCRIPTOR:Ljava/util/UUID;

    const-string v0, "6eb0f021-a7ba-7e7d-66c9-6d813f01d273"

    .line 218
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->COMMAND_CHARACTERISTIC_HANDLE:Ljava/util/UUID;

    const-string v0, "6eb0f024-bd60-7aaa-25a7-0029573f4f23"

    .line 219
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->COMMAND_RESPONSE_CHARACTERISTIC_HANDLE:Ljava/util/UUID;

    const-string v0, "c3230001-9308-47ae-ac12-3d030892a211"

    .line 220
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback$GattAttributes;->SENSEONICS_SERVICE_HANDLE:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
