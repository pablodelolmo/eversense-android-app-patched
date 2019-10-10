.class public final enum Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;
.super Ljava/lang/Enum;
.source "BleHealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/BleHealthMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BLE_CONNECTION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

.field public static final enum CONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

.field public static final enum CONNECTING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

.field public static final enum DISCONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

.field public static final enum NEGOTIATING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

.field public static final enum SEARCHING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

.field public static final enum TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 39
    new-instance v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    new-instance v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    const-string v1, "SEARCHING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->SEARCHING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    new-instance v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    const-string v1, "CONNECTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    new-instance v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    const-string v1, "NEGOTIATING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->NEGOTIATING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    new-instance v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    const-string v1, "TRANSPORT_CONNECTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    new-instance v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    const-string v1, "CONNECTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->SEARCHING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->NEGOTIATING:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;
    .locals 1

    .line 39
    const-class v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;
    .locals 1

    .line 39
    sget-object v0, Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/BleHealthMonitor$BLE_CONNECTION_STATE;

    return-object v0
.end method
