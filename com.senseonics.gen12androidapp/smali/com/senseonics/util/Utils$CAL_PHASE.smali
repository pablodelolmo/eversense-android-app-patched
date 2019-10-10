.class public final enum Lcom/senseonics/util/Utils$CAL_PHASE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAL_PHASE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$CAL_PHASE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum DEBUG:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum DROPOUT:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

.field public static final enum WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 335
    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string v1, "WARM_UP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string v1, "INITIALIZATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string v1, "DAILY_CALIBRATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string v1, "SUSPICIOUS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string v1, "DROPOUT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->DROPOUT:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string v1, "DEBUG"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->DEBUG:Lcom/senseonics/util/Utils$CAL_PHASE;

    new-instance v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string v1, "UNDERTERMINED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/senseonics/util/Utils$CAL_PHASE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    const/16 v0, 0x8

    .line 334
    new-array v0, v0, [Lcom/senseonics/util/Utils$CAL_PHASE;

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->DROPOUT:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->DEBUG:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    aput-object v1, v0, v9

    sput-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->$VALUES:[Lcom/senseonics/util/Utils$CAL_PHASE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$CAL_PHASE;
    .locals 1

    .line 334
    const-class v0, Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$CAL_PHASE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$CAL_PHASE;
    .locals 1

    .line 334
    sget-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->$VALUES:[Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$CAL_PHASE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$CAL_PHASE;

    return-object v0
.end method
