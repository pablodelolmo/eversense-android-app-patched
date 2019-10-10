.class public final enum Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;
.super Ljava/lang/Enum;
.source "MealTimeDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/MealTimeDataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MealType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field public static final enum SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 78
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const-string v1, "BREAKFAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 79
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const-string v1, "LUNCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 80
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const-string v1, "SNACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 81
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const-string v1, "DINNER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 82
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const-string v1, "SLEEP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    .line 83
    new-instance v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const-string v1, "ALL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const/4 v0, 0x6

    .line 77
    new-array v0, v0, [Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->$VALUES:[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;
    .locals 1

    .line 77
    const-class v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;
    .locals 1

    .line 77
    sget-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->$VALUES:[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v0}, [Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    return-object v0
.end method
