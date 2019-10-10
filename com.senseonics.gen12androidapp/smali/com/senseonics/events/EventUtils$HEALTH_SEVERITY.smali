.class public final enum Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;
.super Ljava/lang/Enum;
.source "EventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/events/EventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HEALTH_SEVERITY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

.field public static final enum HIGH:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

.field public static final enum LOW:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

.field public static final enum MEDIUM:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;


# instance fields
.field private subType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->LOW:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    const-string v1, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->MEDIUM:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    new-instance v0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->HIGH:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->LOW:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->MEDIUM:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->HIGH:Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    aput-object v1, v0, v4

    sput-object v0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->$VALUES:[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->subType:I

    return-void
.end method

.method public static valueBySubtype(I)Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;
    .locals 5

    .line 47
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->values()[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 48
    invoke-virtual {v3}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->getSubType()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;
    .locals 1

    .line 33
    const-class v0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;
    .locals 1

    .line 33
    sget-object v0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->$VALUES:[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    invoke-virtual {v0}, [Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    return-object v0
.end method


# virtual methods
.method public getSubType()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->subType:I

    return v0
.end method
