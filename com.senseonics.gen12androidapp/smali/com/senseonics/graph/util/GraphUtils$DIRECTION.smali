.class public final enum Lcom/senseonics/graph/util/GraphUtils$DIRECTION;
.super Ljava/lang/Enum;
.source "GraphUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/util/GraphUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/graph/util/GraphUtils$DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

.field public static final enum ASCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

.field public static final enum DESCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 65
    new-instance v0, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    const-string v1, "ASCENDANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->ASCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    new-instance v0, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    const-string v1, "DESCENDANT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->DESCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    const/4 v0, 0x2

    .line 64
    new-array v0, v0, [Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->ASCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->DESCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->$VALUES:[Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/graph/util/GraphUtils$DIRECTION;
    .locals 1

    .line 64
    const-class v0, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/graph/util/GraphUtils$DIRECTION;
    .locals 1

    .line 64
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->$VALUES:[Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    invoke-virtual {v0}, [Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    return-object v0
.end method
