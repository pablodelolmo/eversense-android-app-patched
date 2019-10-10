.class public final enum Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;
.super Ljava/lang/Enum;
.source "EventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/events/EventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EXERCISE_INTENSITY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

.field public static final enum HIGH:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

.field public static final enum LOW:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

.field public static final enum MEDIUM:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;


# instance fields
.field private subType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->LOW:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    new-instance v0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    const-string v1, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->MEDIUM:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    new-instance v0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    const-string v1, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->HIGH:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    const/4 v0, 0x3

    .line 55
    new-array v0, v0, [Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    sget-object v1, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->LOW:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->MEDIUM:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->HIGH:Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    aput-object v1, v0, v4

    sput-object v0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->$VALUES:[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->subType:I

    return-void
.end method

.method public static valueBySubtype(I)Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;
    .locals 5

    .line 69
    invoke-static {}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->values()[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 70
    invoke-virtual {v3}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->getSubType()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;
    .locals 1

    .line 55
    const-class v0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;
    .locals 1

    .line 55
    sget-object v0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->$VALUES:[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    invoke-virtual {v0}, [Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    return-object v0
.end method


# virtual methods
.method public getSubType()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->subType:I

    return v0
.end method
