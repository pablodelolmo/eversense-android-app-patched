.class public final enum Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
.super Ljava/lang/Enum;
.source "Transmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/Transmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONNECTION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum NEGOTIATING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum SEARCHING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field public static final enum TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const-string v1, "DISCONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const-string v1, "CONNECTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const-string v1, "NEGOTIATING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->NEGOTIATING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const-string v1, "SEARCHING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->SEARCHING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    new-instance v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const-string v1, "TRANSPORT_CONNECTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->NEGOTIATING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->SEARCHING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromBluetoothState(I)Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 17
    sget-object p0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p0

    .line 13
    :cond_0
    sget-object p0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    .locals 1

    .line 8
    const-class v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    .locals 1

    .line 8
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->$VALUES:[Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object v0
.end method
