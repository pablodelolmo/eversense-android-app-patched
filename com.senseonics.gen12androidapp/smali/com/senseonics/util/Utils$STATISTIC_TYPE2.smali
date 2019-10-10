.class public final enum Lcom/senseonics/util/Utils$STATISTIC_TYPE2;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATISTIC_TYPE2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$STATISTIC_TYPE2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

.field public static final enum ABOVE_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

.field public static final enum BELOW_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

.field public static final enum WITHIN_TARGET_LEVELS:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 390
    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    const-string v1, "ABOVE_TARGET_LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ABOVE_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    const-string v1, "BELOW_TARGET_LEVEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->BELOW_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    const-string v1, "WITHIN_TARGET_LEVELS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->WITHIN_TARGET_LEVELS:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    const/4 v0, 0x3

    .line 389
    new-array v0, v0, [Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ABOVE_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->BELOW_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->WITHIN_TARGET_LEVELS:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    aput-object v1, v0, v4

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->$VALUES:[Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 389
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$STATISTIC_TYPE2;
    .locals 1

    .line 389
    const-class v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$STATISTIC_TYPE2;
    .locals 1

    .line 389
    sget-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->$VALUES:[Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    return-object v0
.end method
