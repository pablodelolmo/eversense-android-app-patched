.class public final enum Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;
.super Ljava/lang/Enum;
.source "CalibrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/model/CalibrationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALIBRATION_USE_FLAG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum AUTO_LINK_MODE_ACTIVE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum GLUCOSE_RAPID_CHANGE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum GLUCOSE_TOO_HIGH_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum GLUCOSE_TOO_LOW_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum INSUFFICIENT_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum INSUFFICIENT_DATA_POST_FS_ENTRY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum INVALID_TIME:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum OTHER_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum SENSOR_LED_DISCONNECT:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum THIS_SUSPICIOUS_PREVIOUS_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

.field public static final enum UNKNOWN_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;


# instance fields
.field private id:I

.field private isCalibration:Z

.field private message:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private shortTitle:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private title:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 124
    new-instance v8, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v1, "NOT_ENTERED_FOR_CALIBRATION"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0f0046

    const v5, 0x7f0f0045

    const v6, 0x7f0f00e4

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v8, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 131
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "ACTUALLY_USED_FOR_CALIBRATION"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const v13, 0x7f0f0043

    const v14, 0x7f0f0042

    const v15, 0x7f0f00e3

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 142
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "MARKED_SUSPICIOUS"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const v5, 0x7f0f005d

    const v6, 0x7f0f005c

    const v7, 0x7f0f00ec

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 153
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "GLUCOSE_TOO_LOW_TO_READ"

    const/4 v11, 0x3

    const/4 v12, 0x3

    const v13, 0x7f0f0061

    const v14, 0x7f0f0060

    const v15, 0x7f0f00ee

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_LOW_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 164
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "GLUCOSE_TOO_HIGH_TO_READ"

    const/4 v3, 0x4

    const/4 v4, 0x4

    const v5, 0x7f0f005f

    const v6, 0x7f0f005e

    const v7, 0x7f0f00ed

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_HIGH_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 175
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "GLUCOSE_RAPID_CHANGE"

    const/4 v11, 0x5

    const/4 v12, 0x5

    const v13, 0x7f0f0058

    const v14, 0x7f0f0057

    const v15, 0x7f0f00ea

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_RAPID_CHANGE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 186
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "INVALID_TIME"

    const/4 v3, 0x6

    const/4 v4, 0x6

    const v5, 0x7f0f0054

    const v6, 0x7f0f0053

    const v7, 0x7f0f00e8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INVALID_TIME:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 195
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "INSUFFICIENT_DATA"

    const/4 v11, 0x7

    const/4 v12, 0x7

    const v13, 0x7f0f0050

    const v14, 0x7f0f004e

    const v15, 0x7f0f00e7

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 204
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "SENSOR_EOL"

    const/16 v3, 0x8

    const/16 v4, 0x8

    const v5, 0x7f0f005a

    const v6, 0x7f0f0059

    const v7, 0x7f0f00eb

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 215
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "DROPOUT_PHASE"

    const/16 v11, 0x9

    const/16 v12, 0x9

    const v13, 0x7f0f004b

    const v14, 0x7f0f004a

    const v15, 0x7f0f00e6

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 224
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "AUTO_LINK_MODE_ACTIVE"

    const/16 v3, 0xa

    const/16 v4, 0xa

    const v5, 0x7f0f0049

    const v6, 0x7f0f0048

    const v7, 0x7f0f00e5

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->AUTO_LINK_MODE_ACTIVE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 233
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "SENSOR_LED_DISCONNECT"

    const/16 v11, 0xb

    const/16 v12, 0xb

    const v13, 0x7f0f005a

    const v14, 0x7f0f0059

    const v15, 0x7f0f00eb

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_LED_DISCONNECT:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 244
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "OTHER_FAILURE"

    const/16 v3, 0xc

    const/16 v4, 0xc

    const v5, 0x7f0f0056

    const v6, 0x7f0f0055

    const v7, 0x7f0f00e9

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->OTHER_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 255
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "THIS_ONE_USED_PREVIOUS_ONE_DELETED"

    const/16 v11, 0xd

    const/16 v12, 0xd

    const v13, 0x7f0f0043

    const v14, 0x7f0f0042

    const v15, 0x7f0f00e3

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 266
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "THIS_SUSPICIOUS_PREVIOUS_DELETED"

    const/16 v3, 0xe

    const/16 v4, 0xe

    const v5, 0x7f0f0041

    const v6, 0x7f0f003f

    const v7, 0x7f0f00e3

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_SUSPICIOUS_PREVIOUS_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 273
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v10, "INSUFFICIENT_DATA_POST_FS_ENTRY"

    const/16 v11, 0xf

    const/16 v12, 0xf

    const v13, 0x7f0f0041

    const v14, 0x7f0f003f

    const v15, 0x7f0f00e7

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA_POST_FS_ENTRY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 281
    new-instance v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const-string v2, "UNKNOWN_FAILURE"

    const/16 v3, 0x10

    const/4 v4, -0x1

    const v5, 0x7f0f0064

    const v6, 0x7f0f0063

    const v7, 0x7f0f00e4

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->UNKNOWN_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v0, 0x11

    .line 123
    new-array v0, v0, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_LOW_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_HIGH_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_RAPID_CHANGE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INVALID_TIME:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->AUTO_LINK_MODE_ACTIVE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_LED_DISCONNECT:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->OTHER_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_SUSPICIOUS_PREVIOUS_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA_POST_FS_ENTRY:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->UNKNOWN_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->$VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .line 299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 300
    iput p3, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->id:I

    .line 301
    iput p4, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->title:I

    .line 302
    iput p5, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->message:I

    .line 303
    iput p6, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->shortTitle:I

    .line 304
    iput-boolean p7, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration:Z

    return-void
.end method

.method public static fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;
    .locals 5

    .line 312
    invoke-static {}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->values()[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 313
    invoke-virtual {v3}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_1
    sget-object p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->UNKNOWN_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;
    .locals 1

    .line 123
    const-class v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;
    .locals 1

    .line 123
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->$VALUES:[Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v0}, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->id:I

    return v0
.end method

.method public getMessage()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 327
    iget v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->message:I

    return v0
.end method

.method public getShortTitle()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 332
    iget v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->shortTitle:I

    return v0
.end method

.method public getTitle()I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .line 322
    iget v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->title:I

    return v0
.end method

.method public isCalibration()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration:Z

    return v0
.end method
