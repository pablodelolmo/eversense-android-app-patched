.class public final enum Lcom/senseonics/model/BATTERY_LEVEL;
.super Ljava/lang/Enum;
.source "BATTERY_LEVEL.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/BATTERY_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_100:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_25:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_35:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_45:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_55:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_65:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_75:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_85:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum BL_95:Lcom/senseonics/model/BATTERY_LEVEL;

.field public static final enum UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;


# instance fields
.field private strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 4
    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "UNKNOWN_NEG_1"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_0"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_5"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_10"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_25"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_25:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_35"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_35:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_45"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_45:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_55"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v8}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_55:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_65"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v9}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_65:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_75"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v10}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_75:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_85"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v11}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_85:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_95"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v12}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_95:Lcom/senseonics/model/BATTERY_LEVEL;

    new-instance v0, Lcom/senseonics/model/BATTERY_LEVEL;

    const-string v1, "BL_100"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v13}, Lcom/senseonics/model/BATTERY_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->BL_100:Lcom/senseonics/model/BATTERY_LEVEL;

    const/16 v0, 0xd

    .line 3
    new-array v0, v0, [Lcom/senseonics/model/BATTERY_LEVEL;

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_25:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_35:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_45:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_55:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v9

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_65:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v10

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_75:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v11

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_85:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v12

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_95:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v13

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_100:Lcom/senseonics/model/BATTERY_LEVEL;

    aput-object v1, v0, v14

    sput-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->$VALUES:[Lcom/senseonics/model/BATTERY_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/senseonics/model/BATTERY_LEVEL;->strength:I

    return-void
.end method

.method public static fromStrength(I)Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 5

    .line 13
    invoke-static {}, Lcom/senseonics/model/BATTERY_LEVEL;->values()[Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 14
    iget v4, v3, Lcom/senseonics/model/BATTERY_LEVEL;->strength:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    sget-object p0, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 3
    const-class v0, Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/BATTERY_LEVEL;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 3
    sget-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->$VALUES:[Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v0}, [Lcom/senseonics/model/BATTERY_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/BATTERY_LEVEL;

    return-object v0
.end method
