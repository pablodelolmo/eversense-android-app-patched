.class public final enum Lcom/senseonics/util/Utils$STATISTIC_TYPE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATISTIC_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$STATISTIC_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$STATISTIC_TYPE;

.field public static final enum STAT_12AM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

.field public static final enum STAT_12PM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

.field public static final enum STAT_4PM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

.field public static final enum STAT_8AM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

.field public static final enum STAT_8PM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

.field public static final enum STAT_ALL:Lcom/senseonics/util/Utils$STATISTIC_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 386
    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    const-string v1, "STAT_8AM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/Utils$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_8AM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    const-string v1, "STAT_12AM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/util/Utils$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_12AM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    const-string v1, "STAT_4PM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/util/Utils$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_4PM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    const-string v1, "STAT_8PM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/util/Utils$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_8PM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    const-string v1, "STAT_12PM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/util/Utils$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_12PM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    new-instance v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    const-string v1, "STAT_ALL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/util/Utils$STATISTIC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_ALL:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    const/4 v0, 0x6

    .line 385
    new-array v0, v0, [Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_8AM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_12AM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_4PM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_8PM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_12PM:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->STAT_ALL:Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$STATISTIC_TYPE;
    .locals 1

    .line 385
    const-class v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$STATISTIC_TYPE;
    .locals 1

    .line 385
    sget-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$STATISTIC_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$STATISTIC_TYPE;

    return-object v0
.end method
