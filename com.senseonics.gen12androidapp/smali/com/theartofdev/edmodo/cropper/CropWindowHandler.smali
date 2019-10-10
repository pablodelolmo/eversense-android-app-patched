.class final Lcom/theartofdev/edmodo/cropper/CropWindowHandler;
.super Ljava/lang/Object;
.source "CropWindowHandler.java"


# instance fields
.field private final mEdges:Landroid/graphics/RectF;

.field private final mGetEdges:Landroid/graphics/RectF;

.field private mMaxCropResultHeight:F

.field private mMaxCropResultWidth:F

.field private mMaxCropWindowHeight:F

.field private mMaxCropWindowWidth:F

.field private mMinCropResultHeight:F

.field private mMinCropResultWidth:F

.field private mMinCropWindowHeight:F

.field private mMinCropWindowWidth:F

.field private mScaleFactorHeight:F

.field private mScaleFactorWidth:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorWidth:F

    .line 86
    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorHeight:F

    return-void
.end method

.method private focusCenter()Z
    .locals 1

    .line 392
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->showGuidelines()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getOvalPressedMoveType(FF)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    .locals 6

    .line 276
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    .line 277
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    .line 278
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v0, v0, v4

    add-float/2addr v3, v0

    .line 280
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    .line 281
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    .line 282
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    mul-float v0, v0, v4

    add-float/2addr v5, v0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_0

    .line 287
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_0
    cmpg-float p1, p2, v5

    if-gez p1, :cond_1

    .line 289
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 291
    :cond_1
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_2
    cmpg-float p1, p1, v3

    if-gez p1, :cond_5

    cmpg-float p1, p2, v1

    if-gez p1, :cond_3

    .line 295
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_3
    cmpg-float p1, p2, v5

    if-gez p1, :cond_4

    .line 297
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 299
    :cond_4
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_5
    cmpg-float p1, p2, v1

    if-gez p1, :cond_6

    .line 303
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_6
    cmpg-float p1, p2, v5

    if-gez p1, :cond_7

    .line 305
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 307
    :cond_7
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    :goto_0
    return-object p1
.end method

.method private getRectanglePressedMoveType(FFF)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    .locals 7

    .line 229
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->focusCenter()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 242
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 243
    :cond_6
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInVerticalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 244
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 245
    :cond_7
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move v1, p1

    move v2, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInVerticalTargetZone(FFFFFF)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 246
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 247
    :cond_8
    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, p3, Landroid/graphics/RectF;->top:F

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, p3, Landroid/graphics/RectF;->right:F

    iget-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, p3, Landroid/graphics/RectF;->bottom:F

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCenterTargetZone(FFFFFF)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->focusCenter()Z

    move-result p1

    if-nez p1, :cond_9

    .line 248
    sget-object p1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static isInCenterTargetZone(FFFFFF)Z
    .locals 0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    cmpg-float p0, p0, p4

    if-gez p0, :cond_0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p5

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isInCornerTargetZone(FFFFF)Z
    .locals 0

    sub-float/2addr p0, p2

    .line 327
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isInHorizontalTargetZone(FFFFFF)Z
    .locals 0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    cmpg-float p0, p0, p3

    if-gez p0, :cond_0

    sub-float/2addr p1, p4

    .line 344
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isInVerticalTargetZone(FFFFFF)Z
    .locals 0

    sub-float/2addr p0, p2

    .line 361
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p5

    if-gtz p0, :cond_0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMaxCropHeight()F
    .locals 3

    .line 122
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropWindowHeight:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorHeight:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMaxCropWidth()F
    .locals 3

    .line 115
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropWindowWidth:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorWidth:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMinCropHeight()F
    .locals 3

    .line 108
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropWindowHeight:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultHeight:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorHeight:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getMinCropWidth()F
    .locals 3

    .line 101
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropWindowWidth:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultWidth:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorWidth:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getMoveHandler(FFFLcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;
    .locals 1

    .line 208
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne p4, v0, :cond_0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getOvalPressedMoveType(FF)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    move-result-object p3

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRectanglePressedMoveType(FFF)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_1

    .line 211
    new-instance p4, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    invoke-direct {p4, p3, p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;-><init>(Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;Lcom/theartofdev/edmodo/cropper/CropWindowHandler;FF)V

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    return-object p4
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 94
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getScaleFactorHeight()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorHeight:F

    return v0
.end method

.method public getScaleFactorWidth()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorWidth:F

    return v0
.end method

.method public setCropWindowLimits(FFFF)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropWindowWidth:F

    .line 163
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropWindowHeight:F

    .line 164
    iput p3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorWidth:F

    .line 165
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorHeight:F

    return-void
.end method

.method public setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/CropImageOptions;)V
    .locals 1

    .line 172
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropWindowWidth:F

    .line 173
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropWindowHeight:F

    .line 174
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultWidth:F

    .line 175
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultHeight:F

    .line 176
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    .line 177
    iget p1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float p1, p1

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 0

    int-to-float p1, p1

    .line 153
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    int-to-float p1, p2

    .line 154
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 0

    int-to-float p1, p1

    .line 144
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultWidth:F

    int-to-float p1, p2

    .line 145
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultHeight:F

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public showGuidelines()Z
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
