.class public final enum Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
.super Ljava/lang/Enum;
.source "CalibrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/model/CalibrationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALIBRATION_READINESS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum GLUCOSE_RATE_TOO_HIGH:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum LED_DISCONNECT_DETECTED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum NOT_ENOUGH_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum NO_SENSOR_LINKED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum READY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum UNSUPPORTED_MODE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

.field public static final enum WAITING_POST_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 341
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->READY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 342
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "NOT_ENOUGH_DATA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->NOT_ENOUGH_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 343
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "GLUCOSE_RATE_TOO_HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->GLUCOSE_RATE_TOO_HIGH:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 344
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "TOO_SOON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 345
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "DROPOUT_PHASE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 346
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "SENSOR_EOL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 347
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "NO_SENSOR_LINKED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->NO_SENSOR_LINKED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 348
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "UNSUPPORTED_MODE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->UNSUPPORTED_MODE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 349
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "WAITING_POST_CALIBRATION"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->WAITING_POST_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 350
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "LED_DISCONNECT_DETECTED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->LED_DISCONNECT_DETECTED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    .line 351
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const-string v1, "REASON_UNKNOWN"

    const/16 v12, 0xa

    const/16 v13, 0xff

    invoke-direct {v0, v1, v12, v13}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    const/16 v0, 0xb

    .line 340
    new-array v0, v0, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->READY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->NOT_ENOUGH_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->GLUCOSE_RATE_TOO_HIGH:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->NO_SENSOR_LINKED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->UNSUPPORTED_MODE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v9

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->WAITING_POST_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v10

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->LED_DISCONNECT_DETECTED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v11

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    aput-object v1, v0, v12

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->$VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 356
    iput p3, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->id:I

    return-void
.end method

.method public static fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
    .locals 5

    .line 364
    invoke-static {}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->values()[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 365
    invoke-virtual {v3}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    :cond_1
    sget-object p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
    .locals 1

    .line 340
    const-class v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
    .locals 1

    .line 340
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->$VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v0}, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->id:I

    return v0
.end method
