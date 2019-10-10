.class public final enum Lcom/senseonics/util/Utils$EVENT_TYPE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EVENT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$EVENT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum GROUP_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 394
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "CALIBRATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 395
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "GROUP_EVENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->GROUP_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 396
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "GLUCOSE_EVENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 397
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "MEAL_EVENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 398
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "INSULIN_EVENT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 399
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "HEALTH_EVENT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 400
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "EXERCISE_EVENT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 401
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "NOTIFICATION_EVENT_RED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 402
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "NOTIFICATION_EVENT_YELLOW"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 403
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "NOTIFICATION_EVENT_BLUE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 404
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "ALERT_EVENT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 405
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "ALARM_EVENT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 406
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "PREDICTIVE_ALERT_EVENT_FALLING"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 407
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "PREDICTIVE_ALERT_EVENT_RISING"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 408
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "RATE_ALERT_EVENT_FALLING"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 409
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "RATE_ALERT_EVENT_RISING"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 410
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "CALIBRATE_NOW_EVENT"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 411
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "CALIBRATE_GRACE_EVENT"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 412
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "CALIBRATE_EXPIRED_EVENT"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/16 v0, 0x13

    .line 393
    new-array v0, v0, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->GROUP_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v10

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v11

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v12

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v13

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    aput-object v1, v0, v14

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$EVENT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$EVENT_TYPE;
    .locals 1

    .line 393
    const-class v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$EVENT_TYPE;
    .locals 1

    .line 393
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$EVENT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    return-object v0
.end method
