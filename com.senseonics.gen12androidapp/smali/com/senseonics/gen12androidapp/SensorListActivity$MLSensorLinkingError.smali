.class public final enum Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
.super Ljava/lang/Enum;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MLSensorLinkingError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum CorruptedData:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum Timeout:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field public static final enum UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 94
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "Timeout"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->Timeout:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "IncompatibleSensorFile"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "NotConnectedToWifi"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "ServerError"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "UnableToDownloadSensorFile"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "CorruptedData"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->CorruptedData:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "TransmitterError"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "IncompatibleFWVersion"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "SyncTransmitterTimeFailure"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-string v1, "None"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/16 v0, 0xa

    .line 93
    new-array v0, v0, [Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->Timeout:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->CorruptedData:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    aput-object v1, v0, v11

    sput-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->$VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    .locals 1

    .line 93
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    .locals 1

    .line 93
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->$VALUES:[Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-object v0
.end method
