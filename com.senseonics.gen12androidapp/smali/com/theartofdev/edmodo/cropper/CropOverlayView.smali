.class public Lcom/theartofdev/edmodo/cropper/CropOverlayView;
.super Landroid/view/View;
.source "CropOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;,
        Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;
    }
.end annotation


# instance fields
.field private initializedCropWindow:Z

.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderCornerLength:F

.field private mBorderCornerOffset:F

.field private mBorderCornerPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private final mBoundsPoints:[F

.field private final mCalcBounds:Landroid/graphics/RectF;

.field private mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

.field private mCropWindowChangeListener:Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;

.field private final mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

.field private final mDrawRect:Landroid/graphics/RectF;

.field private mFixAspectRatio:Z

.field private mGuidelinePaint:Landroid/graphics/Paint;

.field private mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

.field private mInitialCropWindowPaddingRatio:F

.field private final mInitialCropWindowRect:Landroid/graphics/Rect;

.field private mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

.field private mMultiTouchEnabled:Z

.field private mOriginalLayerType:Ljava/lang/Integer;

.field private mPath:Landroid/graphics/Path;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSnapRadius:F

.field private mTargetAspectRatio:F

.field private mTouchRadius:F

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p1, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-direct {p1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    .line 62
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    .line 87
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    const/16 p1, 0x8

    .line 92
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 97
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 159
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float p1, p1

    iget p2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 174
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$100(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/CropWindowHandler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    return-object p0
.end method

.method private calculateBounds(Landroid/graphics/RectF;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 921
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v2

    .line 922
    iget-object v3, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result v3

    .line 923
    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v4}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v4

    .line 924
    iget-object v5, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v5}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v5

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 927
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    return v7

    .line 930
    :cond_0
    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v6, v6, v7

    .line 931
    iget-object v8, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    .line 932
    iget-object v10, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v11, 0x4

    aget v10, v10, v11

    .line 933
    iget-object v12, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v13, 0x5

    aget v12, v12, v13

    .line 934
    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v15, 0x6

    aget v14, v14, v15

    .line 935
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/16 v17, 0x7

    aget v7, v7, v17

    .line 937
    iget-object v13, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v13, v13, v17

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v11, v11, v9

    cmpg-float v11, v13, v11

    const/4 v13, 0x2

    const/16 v18, 0x3

    if-gez v11, :cond_2

    .line 938
    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v6, v6, v9

    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v7, v7, v18

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 939
    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v6, v6, v15

    .line 940
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v8, v7, v17

    .line 941
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v10, v7, v13

    .line 942
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v12, v7, v18

    .line 943
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v11, 0x4

    aget v14, v7, v11

    .line 944
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v15, 0x5

    aget v7, v7, v15

    goto :goto_0

    :cond_1
    const/4 v11, 0x4

    const/4 v15, 0x5

    .line 946
    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v6, v6, v11

    .line 947
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v8, v7, v15

    .line 948
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v10, 0x0

    aget v10, v7, v10

    .line 949
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v12, v7, v9

    .line 950
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v14, v7, v13

    .line 951
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v7, v7, v18

    goto :goto_0

    .line 953
    :cond_2
    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v11, v11, v9

    iget-object v9, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v9, v9, v18

    cmpl-float v9, v11, v9

    if-lez v9, :cond_3

    .line 954
    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v6, v6, v13

    .line 955
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v8, v7, v18

    .line 956
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v10, v7, v15

    .line 957
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v12, v7, v17

    .line 958
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v9, 0x0

    aget v14, v7, v9

    .line 959
    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v9, 0x1

    aget v7, v7, v9

    :cond_3
    :goto_0
    sub-float/2addr v7, v8

    sub-float/2addr v14, v6

    div-float/2addr v7, v14

    const/high16 v9, -0x40800000    # -1.0f

    div-float/2addr v9, v7

    mul-float v11, v7, v6

    sub-float v11, v8, v11

    mul-float v6, v6, v9

    sub-float/2addr v8, v6

    mul-float v6, v7, v10

    sub-float v6, v12, v6

    mul-float v10, v10, v9

    sub-float/2addr v12, v10

    .line 969
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget v13, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    iget v14, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    div-float/2addr v10, v13

    neg-float v13, v10

    .line 971
    iget v14, v1, Landroid/graphics/RectF;->top:F

    iget v15, v1, Landroid/graphics/RectF;->left:F

    mul-float v15, v15, v10

    sub-float/2addr v14, v15

    .line 972
    iget v15, v1, Landroid/graphics/RectF;->top:F

    iget v0, v1, Landroid/graphics/RectF;->right:F

    mul-float v0, v0, v13

    sub-float/2addr v15, v0

    sub-float v0, v14, v11

    sub-float v16, v7, v10

    div-float v0, v0, v16

    move/from16 v19, v5

    .line 974
    iget v5, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v14, v8

    sub-float v5, v9, v10

    div-float/2addr v2, v5

    .line 975
    iget v5, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_5

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v15, v12

    sub-float v5, v9, v13

    div-float/2addr v2, v5

    .line 976
    iget v10, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v2, v10

    if-gez v10, :cond_6

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v2, v15, v8

    div-float/2addr v2, v5

    .line 977
    iget v5, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_7

    goto :goto_4

    :cond_7
    move v2, v4

    :goto_4
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v15, v6

    sub-float v4, v7, v13

    div-float v4, v15, v4

    .line 978
    iget v5, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_8

    goto :goto_5

    :cond_8
    move v4, v2

    :goto_5
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float/2addr v14, v6

    div-float v4, v14, v16

    .line 979
    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v4, v1

    if-lez v1, :cond_9

    goto :goto_6

    :cond_9
    move v4, v2

    :goto_6
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v2, v7, v0

    add-float/2addr v2, v11

    mul-float v4, v9, v1

    add-float/2addr v4, v8

    .line 981
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v9, v9, v0

    add-float/2addr v9, v12

    mul-float v7, v7, v1

    add-float/2addr v7, v6

    .line 982
    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move/from16 v4, v19

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v4, p0

    .line 984
    iget-object v5, v4, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 985
    iget-object v0, v4, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 986
    iget-object v0, v4, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 987
    iget-object v0, v4, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x1

    return v0
.end method

.method private callOnCropWindowChanged(Z)V
    .locals 2

    .line 1004
    :try_start_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;

    invoke-interface {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;->onCropWindowChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AIC"

    const-string v1, "Exception in crop window changed"

    .line 1008
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 12

    .line 671
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v1}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 674
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 675
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 676
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 678
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    const/16 v6, 0x11

    if-ne v3, v4, :cond_2

    .line 679
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v6, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 686
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 687
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 688
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v6, 0x4

    aget v4, v4, v6

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 689
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v6, 0x6

    aget v4, v4, v6

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 690
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 692
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 693
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 694
    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 695
    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v6, v9

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 696
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2

    .line 680
    :cond_1
    :goto_0
    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 681
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 682
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 683
    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 699
    :cond_2
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 700
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v3, v6, :cond_3

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne v3, v4, :cond_3

    .line 701
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v4, v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v6

    iget v8, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v6

    invoke-virtual {v3, v4, v7, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 703
    :cond_3
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 705
    :goto_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 706
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 707
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 708
    iget-object v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v6, v9

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 709
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 766
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 767
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 769
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne v0, v2, :cond_0

    .line 771
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawCorners(Landroid/graphics/Canvas;)V
    .locals 12

    .line 783
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 786
    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    .line 789
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne v5, v6, :cond_1

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerOffset:F

    :cond_1
    add-float/2addr v1, v4

    .line 791
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v5}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    .line 792
    invoke-virtual {v5, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    sub-float/2addr v2, v0

    div-float/2addr v2, v3

    add-float/2addr v4, v2

    .line 798
    iget v0, v5, Landroid/graphics/RectF;->left:F

    sub-float v7, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->top:F

    sub-float v8, v0, v4

    iget v0, v5, Landroid/graphics/RectF;->left:F

    sub-float v9, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v10, v0, v1

    iget-object v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 799
    iget v0, v5, Landroid/graphics/RectF;->left:F

    sub-float v7, v0, v4

    iget v0, v5, Landroid/graphics/RectF;->top:F

    sub-float v8, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v9, v0, v1

    iget v0, v5, Landroid/graphics/RectF;->top:F

    sub-float v10, v0, v2

    iget-object v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 802
    iget v0, v5, Landroid/graphics/RectF;->right:F

    add-float v7, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->top:F

    sub-float v8, v0, v4

    iget v0, v5, Landroid/graphics/RectF;->right:F

    add-float v9, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v10, v0, v1

    iget-object v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 803
    iget v0, v5, Landroid/graphics/RectF;->right:F

    add-float v7, v0, v4

    iget v0, v5, Landroid/graphics/RectF;->top:F

    sub-float v8, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v9, v0, v1

    iget v0, v5, Landroid/graphics/RectF;->top:F

    sub-float v10, v0, v2

    iget-object v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 806
    iget v0, v5, Landroid/graphics/RectF;->left:F

    sub-float v7, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    add-float v8, v0, v4

    iget v0, v5, Landroid/graphics/RectF;->left:F

    sub-float v9, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v10, v0, v1

    iget-object v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 807
    iget v0, v5, Landroid/graphics/RectF;->left:F

    sub-float v7, v0, v4

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    add-float v8, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v9, v0, v1

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    add-float v10, v0, v2

    iget-object v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 810
    iget v0, v5, Landroid/graphics/RectF;->right:F

    add-float v7, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    add-float v8, v0, v4

    iget v0, v5, Landroid/graphics/RectF;->right:F

    add-float v9, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v10, v0, v1

    iget-object v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 811
    iget v0, v5, Landroid/graphics/RectF;->right:F

    add-float v7, v0, v4

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    add-float v8, v0, v2

    iget v0, v5, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v9, v0, v1

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    add-float v10, v0, v2

    iget-object v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 717
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2

    .line 718
    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 719
    :goto_0
    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 720
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 722
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    .line 723
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    .line 725
    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne v4, v6, :cond_1

    .line 727
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v4, v1

    .line 728
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    sub-float/2addr v7, v1

    .line 731
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v11, v1, v3

    .line 732
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v15, v1, v3

    float-to-double v8, v7

    sub-float v1, v4, v3

    div-float/2addr v1, v4

    float-to-double v12, v1

    .line 733
    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v8, v8, v12

    double-to-float v1, v8

    .line 734
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    sub-float v10, v3, v1

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    add-float v12, v3, v1

    iget-object v13, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v11

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 735
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v7

    sub-float v14, v3, v1

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    add-float v16, v3, v1

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v15

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 738
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v12, v1, v5

    .line 739
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v17, v1, v5

    float-to-double v8, v4

    sub-float v1, v7, v5

    div-float/2addr v1, v7

    float-to-double v5, v1

    .line 740
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v8, v8, v5

    double-to-float v1, v8

    .line 741
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float v9, v3, v1

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    add-float v11, v3, v1

    iget-object v13, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v10, v12

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 742
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float v14, v3, v1

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    add-float v16, v2, v1

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v15, v17

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 746
    :cond_1
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v9, v1, v3

    .line 747
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v13, v1, v3

    .line 748
    iget v8, v2, Landroid/graphics/RectF;->top:F

    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v7, v9

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 749
    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v13

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 752
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v10, v1, v5

    .line 753
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v15, v1, v5

    .line 754
    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->right:F

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 755
    iget v12, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v13, v15

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private fixCropWindowRectByRules(Landroid/graphics/RectF;)V
    .locals 6

    .line 587
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 589
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 590
    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 592
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 594
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 595
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 597
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 598
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 599
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 600
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 602
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 603
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 604
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 605
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 608
    :cond_3
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    .line 609
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 610
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 611
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 612
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 613
    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 614
    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_4

    .line 615
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 617
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 618
    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 620
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    .line 621
    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 623
    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    .line 624
    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 627
    :cond_7
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_9

    .line 628
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float v2, v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 629
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float v0, v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v1

    .line 630
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 631
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 633
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v1

    .line 634
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 635
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_9
    :goto_0
    return-void
.end method

.method private static getNewPaint(I)Landroid/graphics/Paint;
    .locals 1

    .line 819
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 820
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private static getNewPaintOrNull(FI)Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 829
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 830
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 831
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 832
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x1

    .line 833
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initCropWindow()V
    .locals 10

    .line 504
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 505
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 506
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 507
    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v3}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v4, v2, v0

    if-lez v4, :cond_4

    cmpg-float v4, v3, v1

    if-gtz v4, :cond_0

    goto/16 :goto_1

    .line 513
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x1

    .line 516
    iput-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    .line 518
    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    sub-float v6, v2, v0

    mul-float v5, v5, v6

    .line 519
    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    sub-float v8, v3, v1

    mul-float v7, v7, v8

    .line 521
    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_1

    .line 523
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 524
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 525
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v7}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 526
    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v7}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 529
    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 530
    iget v0, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 531
    iget v0, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 532
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 534
    :cond_1
    iget-boolean v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    if-eqz v9, :cond_3

    cmpl-float v9, v2, v0

    if-lez v9, :cond_3

    cmpl-float v9, v3, v1

    if-lez v9, :cond_3

    div-float/2addr v6, v8

    .line 539
    iget v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    cmpl-float v6, v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    if-lez v6, :cond_2

    add-float/2addr v1, v7

    .line 541
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v7

    .line 542
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 544
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    .line 547
    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 550
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    sub-float v2, v0, v1

    .line 553
    iput v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 554
    iput v0, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    add-float/2addr v0, v5

    .line 558
    iput v0, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v5

    .line 559
    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 561
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    .line 564
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    sub-float v2, v0, v1

    .line 567
    iput v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    .line 568
    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    add-float/2addr v0, v5

    .line 572
    iput v0, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v7

    .line 573
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    .line 574
    iput v2, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v7

    .line 575
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 578
    :goto_0
    invoke-direct {p0, v4}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    .line 580
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, v4}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private isNonStraightAngleRotated()Z
    .locals 5

    .line 996
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v0, v0, v2

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onActionDown(FF)V
    .locals 3

    .line 874
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTouchRadius:F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMoveHandler(FFFLcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    .line 875
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    if-eqz p1, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method private onActionMove(FF)V
    .locals 12

    .line 896
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    .line 897
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mSnapRadius:F

    .line 898
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 900
    invoke-direct {p0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    move v9, v0

    .line 904
    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mViewWidth:I

    iget v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mViewHeight:I

    iget-boolean v10, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    iget v11, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    move-object v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v11}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->move(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V

    .line 905
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {p1, v1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    .line 906
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 907
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_1
    return-void
.end method

.method private onActionUp()V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 885
    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    const/4 v0, 0x0

    .line 886
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 887
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fixCurrentCropWindowRect()V
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 221
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    .line 222
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public getAspectRatioX()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    return v0
.end method

.method public getAspectRatioY()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    return v0
.end method

.method public getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    return-object v0
.end method

.method public getCropWindowRect()Landroid/graphics/RectF;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    return-object v0
.end method

.method public getInitialCropWindowRect()Landroid/graphics/Rect;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isFixAspectRatio()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 646
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 649
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 651
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->showGuidelines()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    .line 657
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    .line 661
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->drawBorders(Landroid/graphics/Canvas;)V

    .line 663
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->drawCorners(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 843
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 844
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 848
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 858
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->onActionMove(FF)V

    .line 859
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 854
    :pswitch_1
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 855
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->onActionUp()V

    return v2

    .line 850
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->onActionDown(FF)V

    return v2

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetCropOverlayView()V
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->EMPTY_RECT_F:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 255
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 256
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public resetCropWindowRect()V
    .locals 1

    .line 452
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 454
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    const/4 v0, 0x0

    .line 455
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    :cond_0
    return-void
.end method

.method public setAspectRatioX(I)V
    .locals 1

    if-gtz p1, :cond_0

    .line 343
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_0
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    if-eq v0, p1, :cond_1

    .line 345
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    .line 346
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float p1, p1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 348
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 350
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setAspectRatioY(I)V
    .locals 1

    if-gtz p1, :cond_0

    .line 370
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 371
    :cond_0
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    if-eq v0, p1, :cond_1

    .line 372
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    .line 373
    iget p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float p1, p1

    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 375
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_1

    .line 376
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 377
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setBounds([FII)V
    .locals 4

    if-eqz p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :goto_0
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mViewWidth:I

    .line 241
    iput p3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mViewHeight:I

    .line 242
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 244
    :cond_2
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    :cond_3
    return-void
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-eq v0, p1, :cond_3

    .line 272
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    .line 273
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-gt p1, v0, :cond_2

    .line 274
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getLayerType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    .line 276
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 278
    invoke-virtual {p0, v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 280
    :cond_0
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    goto :goto_0

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 284
    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 285
    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    .line 288
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setCropWindowChangeListener(Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;

    return-void
.end method

.method public setCropWindowLimits(FFFF)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setCropWindowLimits(FFFF)V

    return-void
.end method

.method public setCropWindowRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    if-eq v0, p1, :cond_0

    .line 323
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    .line 324
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 326
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    if-eq v0, p1, :cond_0

    .line 304
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 305
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/CropImageOptions;)V
    .locals 2

    .line 465
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/CropImageOptions;)V

    .line 467
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)V

    .line 469
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setSnapRadius(F)V

    .line 471
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)V

    .line 473
    iget-boolean v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 475
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 477
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 479
    iget-boolean v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setMultiTouchEnabled(Z)Z

    .line 481
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTouchRadius:F

    .line 483
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    .line 485
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getNewPaintOrNull(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    .line 487
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerOffset:F

    .line 488
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    .line 489
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getNewPaintOrNull(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 491
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getNewPaintOrNull(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 493
    iget p1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    invoke-static {p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getNewPaint(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setInitialCropWindowRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 441
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 443
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    const/4 p1, 0x0

    .line 444
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    :cond_1
    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setMaxCropResultSize(II)V

    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setMinCropResultSize(II)V

    return-void
.end method

.method public setMultiTouchEnabled(Z)Z
    .locals 3

    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eq v0, p1, :cond_1

    .line 396
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    .line 397
    iget-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez p1, :cond_0

    .line 398
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;-><init>(Lcom/theartofdev/edmodo/cropper/CropOverlayView;Lcom/theartofdev/edmodo/cropper/CropOverlayView$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setSnapRadius(F)V
    .locals 0

    .line 388
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mSnapRadius:F

    return-void
.end method
