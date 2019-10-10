.class public Lcom/senseonics/util/StepPagerStrip;
.super Landroid/view/View;
.source "StepPagerStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/StepPagerStrip$OnPageSelectedListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private mCurrentPage:I

.field private mGravity:I

.field private mNextTabPaint:Landroid/graphics/Paint;

.field private mOnPageSelectedListener:Lcom/senseonics/util/StepPagerStrip$OnPageSelectedListener;

.field private mPageCount:I

.field private mPrevTabPaint:Landroid/graphics/Paint;

.field private mSelectedLastTabPaint:Landroid/graphics/Paint;

.field private mSelectedTabPaint:Landroid/graphics/Paint;

.field private mTabHeight:F

.field private mTabSpacing:F

.field private mTabWidth:F

.field private mTempRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/senseonics/util/StepPagerStrip;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/util/StepPagerStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/senseonics/util/StepPagerStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x33

    .line 37
    iput p3, p0, Lcom/senseonics/util/StepPagerStrip;->mGravity:I

    .line 47
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/senseonics/util/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    .line 64
    sget-object p3, Lcom/senseonics/util/StepPagerStrip;->ATTRS:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 65
    iget v0, p0, Lcom/senseonics/util/StepPagerStrip;->mGravity:I

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/senseonics/util/StepPagerStrip;->mGravity:I

    .line 66
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0700cc

    .line 69
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/util/StepPagerStrip;->mTabWidth:F

    const v0, 0x7f0700ca

    .line 70
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/util/StepPagerStrip;->mTabHeight:F

    const v0, 0x7f0700cb

    .line 71
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    .line 73
    sget-object v0, Lcom/senseonics/gen12androidapp/R$styleable;->StepPagerStripView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 76
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/senseonics/util/StepPagerStrip;->mPrevTabPaint:Landroid/graphics/Paint;

    .line 77
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/senseonics/util/StepPagerStrip;->mSelectedTabPaint:Landroid/graphics/Paint;

    .line 78
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/senseonics/util/StepPagerStrip;->mSelectedLastTabPaint:Landroid/graphics/Paint;

    .line 79
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/senseonics/util/StepPagerStrip;->mNextTabPaint:Landroid/graphics/Paint;

    .line 81
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_0

    .line 83
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v2, 0x7f060092

    .line 92
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 94
    iget-object v2, p0, Lcom/senseonics/util/StepPagerStrip;->mSelectedTabPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :pswitch_1
    const v2, 0x7f060090

    .line 87
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 89
    iget-object v2, p0, Lcom/senseonics/util/StepPagerStrip;->mPrevTabPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :pswitch_2
    const v2, 0x7f060059

    .line 103
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 104
    iget-object v2, p0, Lcom/senseonics/util/StepPagerStrip;->mNextTabPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :pswitch_3
    const v2, 0x7f060091

    .line 97
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 99
    iget-object v2, p0, Lcom/senseonics/util/StepPagerStrip;->mSelectedLastTabPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hitTest(F)I
    .locals 7

    .line 205
    iget v0, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 209
    :cond_0
    iget v0, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    int-to-float v0, v0

    iget v2, p0, Lcom/senseonics/util/StepPagerStrip;->mTabWidth:F

    iget v3, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    add-float/2addr v2, v3

    mul-float v0, v0, v2

    iget v2, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    .line 213
    iget v3, p0, Lcom/senseonics/util/StepPagerStrip;->mGravity:I

    const/4 v4, 0x7

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v6, 0x5

    if-eq v3, v6, :cond_2

    if-eq v3, v4, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x1

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v0, v3, v0

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v3, v0

    .line 228
    :goto_0
    iget v3, p0, Lcom/senseonics/util/StepPagerStrip;->mTabWidth:F

    if-eqz v2, :cond_4

    .line 230
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v4, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    int-to-float v3, v3

    div-float v3, v2, v3

    .line 235
    :cond_4
    iget v2, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    int-to-float v2, v2

    iget v4, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    add-float/2addr v2, v0

    cmpl-float v3, p1, v0

    if-ltz v3, :cond_5

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_5

    cmpl-float v3, v2, v0

    if-lez v3, :cond_5

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    .line 237
    iget v0, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1

    :cond_5
    return v1
.end method

.method private scrollCurrentPageIntoView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/senseonics/util/StepPagerStrip;->mCurrentPage:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget v0, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget v0, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/senseonics/util/StepPagerStrip;->mTabWidth:F

    iget v2, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    sub-float/2addr v0, v1

    .line 128
    iget v1, p0, Lcom/senseonics/util/StepPagerStrip;->mGravity:I

    const/4 v2, 0x7

    and-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_2

    if-eq v1, v2, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    move v1, v0

    const/4 v0, 0x0

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    move v1, v0

    const/4 v0, 0x1

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v0, v1, v0

    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v1, v0

    goto :goto_0

    .line 143
    :goto_1
    iget v2, p0, Lcom/senseonics/util/StepPagerStrip;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v5, 0x10

    if-eq v2, v5, :cond_5

    const/16 v5, 0x50

    if-eq v2, v5, :cond_4

    .line 151
    iget-object v2, p0, Lcom/senseonics/util/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    iput v5, v2, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 148
    :cond_4
    iget-object v2, p0, Lcom/senseonics/util/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/senseonics/util/StepPagerStrip;->mTabHeight:F

    sub-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 145
    :cond_5
    iget-object v2, p0, Lcom/senseonics/util/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/senseonics/util/StepPagerStrip;->mTabHeight:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 154
    :goto_2
    iget-object v2, p0, Lcom/senseonics/util/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/senseonics/util/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget v6, p0, Lcom/senseonics/util/StepPagerStrip;->mTabHeight:F

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->bottom:F

    .line 156
    iget v2, p0, Lcom/senseonics/util/StepPagerStrip;->mTabWidth:F

    if-eqz v0, :cond_6

    .line 158
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v5, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    mul-float v2, v2, v5

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 163
    :cond_6
    :goto_3
    iget v0, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    if-ge v3, v0, :cond_a

    .line 164
    iget-object v0, p0, Lcom/senseonics/util/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    int-to-float v5, v3

    iget v6, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    add-float/2addr v6, v2

    mul-float v5, v5, v6

    add-float/2addr v5, v1

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 165
    iget-object v0, p0, Lcom/senseonics/util/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/senseonics/util/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    iput v5, v0, Landroid/graphics/RectF;->right:F

    .line 166
    iget-object v0, p0, Lcom/senseonics/util/StepPagerStrip;->mTempRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/senseonics/util/StepPagerStrip;->mCurrentPage:I

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lcom/senseonics/util/StepPagerStrip;->mPrevTabPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_7
    iget v5, p0, Lcom/senseonics/util/StepPagerStrip;->mCurrentPage:I

    if-le v3, v5, :cond_8

    iget-object v5, p0, Lcom/senseonics/util/StepPagerStrip;->mNextTabPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_8
    iget v5, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    sub-int/2addr v5, v4

    if-ne v3, v5, :cond_9

    iget-object v5, p0, Lcom/senseonics/util/StepPagerStrip;->mSelectedLastTabPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/senseonics/util/StepPagerStrip;->mSelectedTabPaint:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 175
    iget v0, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/senseonics/util/StepPagerStrip;->mTabWidth:F

    iget v2, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p0, Lcom/senseonics/util/StepPagerStrip;->mTabSpacing:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 177
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lcom/senseonics/util/StepPagerStrip;->mTabHeight:F

    float-to-int v0, v0

    .line 178
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/util/StepPagerStrip;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/senseonics/util/StepPagerStrip;->scrollCurrentPageIntoView()V

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/senseonics/util/StepPagerStrip;->mOnPageSelectedListener:Lcom/senseonics/util/StepPagerStrip$OnPageSelectedListener;

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/util/StepPagerStrip;->hitTest(F)I

    move-result p1

    if-ltz p1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/senseonics/util/StepPagerStrip;->mOnPageSelectedListener:Lcom/senseonics/util/StepPagerStrip$OnPageSelectedListener;

    invoke-interface {v0, p1}, Lcom/senseonics/util/StepPagerStrip$OnPageSelectedListener;->onPageStripSelected(I)V

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 201
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCurrentPage(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/senseonics/util/StepPagerStrip;->mCurrentPage:I

    .line 245
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->invalidate()V

    .line 246
    invoke-direct {p0}, Lcom/senseonics/util/StepPagerStrip;->scrollCurrentPageIntoView()V

    return-void
.end method

.method public setOnPageSelectedListener(Lcom/senseonics/util/StepPagerStrip$OnPageSelectedListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/senseonics/util/StepPagerStrip;->mOnPageSelectedListener:Lcom/senseonics/util/StepPagerStrip$OnPageSelectedListener;

    return-void
.end method

.method public setPageCount(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/senseonics/util/StepPagerStrip;->mPageCount:I

    .line 279
    invoke-virtual {p0}, Lcom/senseonics/util/StepPagerStrip;->invalidate()V

    return-void
.end method
