.class public final enum Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;
.super Ljava/lang/Enum;
.source "MealTimeDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/MealTimeDataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

.field public static final enum ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

.field public static final enum Hour0_6:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

.field public static final enum Hour12_18:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

.field public static final enum Hour18_24:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

.field public static final enum Hour6_12:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;


# instance fields
.field private fromHour:I

.field private timeFromInSec:I

.field private timeToInSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 16
    new-instance v9, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const-string v1, "Hour0_6"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/16 v7, 0x3b

    const/16 v8, 0x3b

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v9, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour0_6:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    .line 17
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const-string v11, "Hour6_12"

    const/4 v12, 0x1

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xb

    const/16 v17, 0x3b

    const/16 v18, 0x3b

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour6_12:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    .line 18
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const-string v2, "Hour12_18"

    const/4 v3, 0x2

    const/16 v4, 0xc

    const/4 v6, 0x0

    const/16 v7, 0x11

    const/16 v9, 0x3b

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour12_18:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    .line 19
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const-string v11, "Hour18_24"

    const/4 v12, 0x3

    const/16 v13, 0x12

    const/16 v16, 0x17

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour18_24:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    .line 20
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const-string v2, "ALL"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/16 v7, 0x17

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const/4 v0, 0x5

    .line 15
    new-array v0, v0, [Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour0_6:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour6_12:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour12_18:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour18_24:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->$VALUES:[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    mul-int/lit16 p1, p3, 0xe10

    mul-int/lit8 p4, p4, 0x3c

    add-int/2addr p1, p4

    add-int/2addr p1, p5

    .line 30
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->timeFromInSec:I

    mul-int/lit16 p6, p6, 0xe10

    mul-int/lit8 p7, p7, 0x3c

    add-int/2addr p6, p7

    add-int/2addr p6, p8

    .line 31
    iput p6, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->timeToInSec:I

    .line 32
    iput p3, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->fromHour:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;
    .locals 1

    .line 15
    const-class v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;
    .locals 1

    .line 15
    sget-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->$VALUES:[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    return-object v0
.end method


# virtual methods
.method public getFromHour()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->fromHour:I

    return v0
.end method

.method public getTimeFromInSec()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->timeFromInSec:I

    return v0
.end method

.method public getTimeToInSec()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->timeToInSec:I

    return v0
.end method
