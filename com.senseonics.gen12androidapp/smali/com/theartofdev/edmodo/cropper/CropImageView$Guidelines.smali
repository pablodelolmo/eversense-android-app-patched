.class public final enum Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Guidelines"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

.field public static final enum OFF:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

.field public static final enum ON:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

.field public static final enum ON_TOUCH:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1666
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->OFF:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 1671
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    const-string v1, "ON_TOUCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 1676
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    const-string v1, "ON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    const/4 v0, 0x3

    .line 1662
    new-array v0, v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->OFF:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    aput-object v1, v0, v2

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    aput-object v1, v0, v3

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    aput-object v1, v0, v4

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->$VALUES:[Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1662
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;
    .locals 1

    .line 1662
    const-class v0, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    return-object p0
.end method

.method public static values()[Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;
    .locals 1

    .line 1662
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->$VALUES:[Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    invoke-virtual {v0}, [Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    return-object v0
.end method
