.class public final enum Lcom/senseonics/util/Utils$ARROW_TYPE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ARROW_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$ARROW_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum FALLING:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum FALLING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum RISING:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum RISING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field public static final enum STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;


# instance fields
.field private imageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 339
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v1, "STALE"

    const/4 v2, 0x0

    const v3, 0x7f080188

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 340
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v1, "FALLING_FAST"

    const/4 v3, 0x1

    const v4, 0x7f080186

    invoke-direct {v0, v1, v3, v4}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 341
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v1, "FALLING"

    const/4 v4, 0x2

    const v5, 0x7f080185

    invoke-direct {v0, v1, v4, v5}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 342
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v1, "FLAT"

    const/4 v5, 0x3

    const v6, 0x7f080187

    invoke-direct {v0, v1, v5, v6}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 343
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v1, "RISING"

    const/4 v6, 0x4

    const v7, 0x7f080189

    invoke-direct {v0, v1, v6, v7}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 344
    new-instance v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    const-string v1, "RISING_FAST"

    const/4 v7, 0x5

    const v8, 0x7f08018a

    invoke-direct {v0, v1, v7, v8}, Lcom/senseonics/util/Utils$ARROW_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/4 v0, 0x6

    .line 338
    new-array v0, v0, [Lcom/senseonics/util/Utils$ARROW_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 349
    iput p3, p0, Lcom/senseonics/util/Utils$ARROW_TYPE;->imageId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$ARROW_TYPE;
    .locals 1

    .line 338
    const-class v0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$ARROW_TYPE;
    .locals 1

    .line 338
    sget-object v0, Lcom/senseonics/util/Utils$ARROW_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$ARROW_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$ARROW_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-object v0
.end method


# virtual methods
.method public getImageId()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .line 354
    iget v0, p0, Lcom/senseonics/util/Utils$ARROW_TYPE;->imageId:I

    return v0
.end method
