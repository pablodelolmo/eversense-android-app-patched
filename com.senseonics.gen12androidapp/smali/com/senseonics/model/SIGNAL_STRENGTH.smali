.class public final enum Lcom/senseonics/model/SIGNAL_STRENGTH;
.super Ljava/lang/Enum;
.source "SIGNAL_STRENGTH.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/SIGNAL_STRENGTH;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum EXCELLENT:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field public static final enum VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;


# instance fields
.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v1, "NO_SIGNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 5
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v1, "POOR"

    const/4 v3, 0x1

    const/16 v4, 0x15e

    invoke-direct {v0, v1, v3, v4}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 6
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v1, "VERY_LOW"

    const/4 v4, 0x2

    const/16 v5, 0x1f4

    invoke-direct {v0, v1, v4, v5}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 7
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v1, "LOW"

    const/4 v5, 0x3

    const/16 v6, 0x320

    invoke-direct {v0, v1, v5, v6}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 8
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v1, "GOOD"

    const/4 v6, 0x4

    const/16 v7, 0x514

    invoke-direct {v0, v1, v6, v7}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 9
    new-instance v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string v1, "EXCELLENT"

    const/4 v7, 0x5

    const/16 v8, 0x640

    invoke-direct {v0, v1, v7, v8}, Lcom/senseonics/model/SIGNAL_STRENGTH;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->EXCELLENT:Lcom/senseonics/model/SIGNAL_STRENGTH;

    const/4 v0, 0x6

    .line 3
    new-array v0, v0, [Lcom/senseonics/model/SIGNAL_STRENGTH;

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->POOR:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->VERY_LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->LOW:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->EXCELLENT:Lcom/senseonics/model/SIGNAL_STRENGTH;

    aput-object v1, v0, v7

    sput-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->$VALUES:[Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/senseonics/model/SIGNAL_STRENGTH;->threshold:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/SIGNAL_STRENGTH;
    .locals 1

    .line 3
    const-class v0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/SIGNAL_STRENGTH;
    .locals 1

    .line 3
    sget-object v0, Lcom/senseonics/model/SIGNAL_STRENGTH;->$VALUES:[Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v0}, [Lcom/senseonics/model/SIGNAL_STRENGTH;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-object v0
.end method


# virtual methods
.method public getThreshold()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/senseonics/model/SIGNAL_STRENGTH;->threshold:I

    return v0
.end method
