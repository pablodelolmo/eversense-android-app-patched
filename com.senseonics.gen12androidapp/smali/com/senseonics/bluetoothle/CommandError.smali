.class public final enum Lcom/senseonics/bluetoothle/CommandError;
.super Ljava/lang/Enum;
.source "CommandError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/bluetoothle/CommandError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum AccessDenied:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum BufferOverflow:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum CRCErrorLogicalBlock:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum CorruptRecord:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum CriticalFaultError:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum GlucoseBlinded:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidCRC:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidCommandArgument:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidCommandCode:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidMessageLength:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidRecord:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum InvalidRecordNumberRange:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum LowBatteryError:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum NoDataAvailable:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum NotAllowed:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum SensorHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum SensorReadError:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum SensorUnableToBeLinked:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum TransmitterHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum TransmitterIsBusy:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum USBOnly:Lcom/senseonics/bluetoothle/CommandError;

.field public static final enum Unused:Lcom/senseonics/bluetoothle/CommandError;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 4
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "NotAllowed"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->NotAllowed:Lcom/senseonics/bluetoothle/CommandError;

    .line 5
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "Unused"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->Unused:Lcom/senseonics/bluetoothle/CommandError;

    .line 6
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "InvalidCommandCode"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidCommandCode:Lcom/senseonics/bluetoothle/CommandError;

    .line 7
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "InvalidCRC"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidCRC:Lcom/senseonics/bluetoothle/CommandError;

    .line 8
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "InvalidMessageLength"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidMessageLength:Lcom/senseonics/bluetoothle/CommandError;

    .line 9
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "BufferOverflow"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->BufferOverflow:Lcom/senseonics/bluetoothle/CommandError;

    .line 10
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "InvalidCommandArgument"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v8}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidCommandArgument:Lcom/senseonics/bluetoothle/CommandError;

    .line 11
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "SensorReadError"

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->SensorReadError:Lcom/senseonics/bluetoothle/CommandError;

    .line 12
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "LowBatteryError"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v9, v10}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->LowBatteryError:Lcom/senseonics/bluetoothle/CommandError;

    .line 13
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "SensorHardwareFailure"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v10, v11}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->SensorHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

    .line 14
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "TransmitterHardwareFailure"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v11, v12}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->TransmitterHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

    .line 15
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "SensorUnableToBeLinked"

    const/16 v13, 0xc

    invoke-direct {v0, v1, v12, v13}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->SensorUnableToBeLinked:Lcom/senseonics/bluetoothle/CommandError;

    .line 16
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "TransmitterIsBusy"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v13, v14}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->TransmitterIsBusy:Lcom/senseonics/bluetoothle/CommandError;

    .line 17
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "InvalidRecordNumberRange"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecordNumberRange:Lcom/senseonics/bluetoothle/CommandError;

    .line 18
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "InvalidRecord"

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecord:Lcom/senseonics/bluetoothle/CommandError;

    .line 19
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "CorruptRecord"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->CorruptRecord:Lcom/senseonics/bluetoothle/CommandError;

    .line 20
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "CriticalFaultError"

    const/16 v14, 0x11

    invoke-direct {v0, v1, v15, v14}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->CriticalFaultError:Lcom/senseonics/bluetoothle/CommandError;

    .line 21
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "CRCErrorLogicalBlock"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->CRCErrorLogicalBlock:Lcom/senseonics/bluetoothle/CommandError;

    .line 22
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "AccessDenied"

    const/16 v14, 0x12

    const/16 v15, 0x13

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->AccessDenied:Lcom/senseonics/bluetoothle/CommandError;

    .line 23
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "USBOnly"

    const/16 v14, 0x13

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->USBOnly:Lcom/senseonics/bluetoothle/CommandError;

    .line 24
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "NoDataAvailable"

    const/16 v14, 0x14

    const/16 v15, 0x15

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->NoDataAvailable:Lcom/senseonics/bluetoothle/CommandError;

    .line 25
    new-instance v0, Lcom/senseonics/bluetoothle/CommandError;

    const-string v1, "GlucoseBlinded"

    const/16 v14, 0x15

    const/16 v15, 0x16

    invoke-direct {v0, v1, v14, v15}, Lcom/senseonics/bluetoothle/CommandError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->GlucoseBlinded:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v0, 0x16

    .line 3
    new-array v0, v0, [Lcom/senseonics/bluetoothle/CommandError;

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->NotAllowed:Lcom/senseonics/bluetoothle/CommandError;

    const/4 v14, 0x0

    aput-object v1, v0, v14

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->Unused:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidCommandCode:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidCRC:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidMessageLength:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->BufferOverflow:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidCommandArgument:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->SensorReadError:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->LowBatteryError:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->SensorHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->TransmitterHardwareFailure:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v11

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->SensorUnableToBeLinked:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->TransmitterIsBusy:Lcom/senseonics/bluetoothle/CommandError;

    aput-object v1, v0, v13

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecordNumberRange:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecord:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->CorruptRecord:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->CriticalFaultError:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->CRCErrorLogicalBlock:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->AccessDenied:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->USBOnly:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->NoDataAvailable:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/bluetoothle/CommandError;->GlucoseBlinded:Lcom/senseonics/bluetoothle/CommandError;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/senseonics/bluetoothle/CommandError;->$VALUES:[Lcom/senseonics/bluetoothle/CommandError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/senseonics/bluetoothle/CommandError;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/CommandError;
    .locals 1

    .line 3
    const-class v0, Lcom/senseonics/bluetoothle/CommandError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/bluetoothle/CommandError;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/bluetoothle/CommandError;
    .locals 1

    .line 3
    sget-object v0, Lcom/senseonics/bluetoothle/CommandError;->$VALUES:[Lcom/senseonics/bluetoothle/CommandError;

    invoke-virtual {v0}, [Lcom/senseonics/bluetoothle/CommandError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/bluetoothle/CommandError;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/senseonics/bluetoothle/CommandError;->code:I

    return v0
.end method
