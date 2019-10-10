.class public final enum Lcom/senseonics/graph/util/GraphUtils$COLOR;
.super Ljava/lang/Enum;
.source "GraphUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/util/GraphUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COLOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/graph/util/GraphUtils$COLOR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/graph/util/GraphUtils$COLOR;

.field public static final enum COLOR_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

.field public static final enum COLOR_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

.field public static final enum GREEN_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

.field public static final enum GREEN_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

.field public static final enum RED_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

.field public static final enum RED_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

.field public static final enum YELLOW_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

.field public static final enum YELLOW_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 61
    new-instance v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    const-string v1, "RED_MIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/graph/util/GraphUtils$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->RED_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    new-instance v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    const-string v1, "YELLOW_MIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/graph/util/GraphUtils$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->YELLOW_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    new-instance v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    const-string v1, "GREEN_MIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/graph/util/GraphUtils$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->GREEN_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    new-instance v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    const-string v1, "GREEN_MAX"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/graph/util/GraphUtils$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->GREEN_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    new-instance v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    const-string v1, "YELLOW_MAX"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/graph/util/GraphUtils$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->YELLOW_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    new-instance v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    const-string v1, "RED_MAX"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/graph/util/GraphUtils$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->RED_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    new-instance v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    const-string v1, "COLOR_MAX"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/senseonics/graph/util/GraphUtils$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->COLOR_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    new-instance v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    const-string v1, "COLOR_MIN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/senseonics/graph/util/GraphUtils$COLOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->COLOR_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    const/16 v0, 0x8

    .line 60
    new-array v0, v0, [Lcom/senseonics/graph/util/GraphUtils$COLOR;

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$COLOR;->RED_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$COLOR;->YELLOW_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$COLOR;->GREEN_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$COLOR;->GREEN_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$COLOR;->YELLOW_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$COLOR;->RED_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$COLOR;->COLOR_MAX:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$COLOR;->COLOR_MIN:Lcom/senseonics/graph/util/GraphUtils$COLOR;

    aput-object v1, v0, v9

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->$VALUES:[Lcom/senseonics/graph/util/GraphUtils$COLOR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/graph/util/GraphUtils$COLOR;
    .locals 1

    .line 60
    const-class v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/graph/util/GraphUtils$COLOR;
    .locals 1

    .line 60
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils$COLOR;->$VALUES:[Lcom/senseonics/graph/util/GraphUtils$COLOR;

    invoke-virtual {v0}, [Lcom/senseonics/graph/util/GraphUtils$COLOR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/graph/util/GraphUtils$COLOR;

    return-object v0
.end method
