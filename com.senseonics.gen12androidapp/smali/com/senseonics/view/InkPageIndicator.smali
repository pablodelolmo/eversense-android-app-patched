.class public Lcom/senseonics/view/InkPageIndicator;
.super Landroid/view/View;
.source "InkPageIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/view/InkPageIndicator$SavedState;,
        Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;,
        Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;,
        Lcom/senseonics/view/InkPageIndicator$StartPredicate;,
        Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;,
        Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;,
        Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIM_DURATION:I = 0x190

.field private static final DEFAULT_DOT_SIZE:I = 0x8

.field private static final DEFAULT_GAP:I = 0xc

.field private static final DEFAULT_SELECTED_COLOUR:I = -0x1

.field private static final DEFAULT_UNSELECTED_COLOUR:I = -0x7f000001

.field private static final INVALID_FRACTION:F = -1.0f

.field private static final MINIMAL_REVEAL:F = 1.0E-5f


# instance fields
.field private animDuration:J

.field private animHalfDuration:J

.field private combinedUnselectedPath:Landroid/graphics/Path;

.field controlX1:F

.field controlX2:F

.field controlY1:F

.field controlY2:F

.field private currentPage:I

.field private dotBottomY:F

.field private dotCenterX:[F

.field private dotCenterY:F

.field private dotDiameter:I

.field private dotRadius:F

.field private dotRevealFractions:[F

.field private dotTopY:F

.field endX1:F

.field endX2:F

.field endY1:F

.field endY2:F

.field private gap:I

.field private halfDotRadius:F

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private isAttachedToWindow:Z

.field private joiningAnimationSet:Landroid/animation/AnimatorSet;

.field private joiningFractions:[F

.field private moveAnimation:Landroid/animation/ValueAnimator;

.field private pageChanging:Z

.field private pageCount:I

.field private previousPage:I

.field private final rectF:Landroid/graphics/RectF;

.field private retreatAnimation:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

.field private retreatingJoinX1:F

.field private retreatingJoinX2:F

.field private revealAnimations:[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

.field private selectedColour:I

.field private selectedDotInPosition:Z

.field private selectedDotX:F

.field private final selectedPaint:Landroid/graphics/Paint;

.field private unselectedColour:I

.field private final unselectedDotLeftPath:Landroid/graphics/Path;

.field private final unselectedDotPath:Landroid/graphics/Path;

.field private final unselectedDotRightPath:Landroid/graphics/Path;

.field private final unselectedPaint:Landroid/graphics/Paint;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/view/InkPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lcom/senseonics/view/InkPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-int p1, p1

    .line 136
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/senseonics/gen12androidapp/R$styleable;->InkPageIndicator:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    mul-int/lit8 p3, p1, 0x8

    const/4 v0, 0x2

    .line 139
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    .line 141
    iget p3, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    div-int/2addr p3, v0

    int-to-float p3, p3

    iput p3, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    .line 142
    iget p3, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iput p3, p0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    mul-int/lit8 p1, p1, 0xc

    const/4 p3, 0x3

    .line 143
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    const/16 p1, 0x190

    .line 145
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/senseonics/view/InkPageIndicator;->animDuration:J

    .line 147
    iget-wide v0, p0, Lcom/senseonics/view/InkPageIndicator;->animDuration:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/senseonics/view/InkPageIndicator;->animHalfDuration:J

    const/4 p1, 0x4

    const p3, -0x7f000001

    .line 148
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedColour:I

    const/4 p1, 0x1

    const/4 p3, -0x1

    .line 150
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/senseonics/view/InkPageIndicator;->selectedColour:I

    .line 153
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    .line 156
    iget-object p2, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedColour:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    .line 158
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/senseonics/view/InkPageIndicator;->selectedColour:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    new-instance p1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    .line 162
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    .line 163
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    .line 164
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    .line 165
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    .line 166
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    .line 168
    invoke-virtual {p0, p0}, Lcom/senseonics/view/InkPageIndicator;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/view/InkPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/senseonics/view/InkPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/view/InkPageIndicator;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/senseonics/view/InkPageIndicator;->setPageCount(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/senseonics/view/InkPageIndicator;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    return p0
.end method

.method static synthetic access$1100(Lcom/senseonics/view/InkPageIndicator;)[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/senseonics/view/InkPageIndicator;->revealAnimations:[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/senseonics/view/InkPageIndicator;[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;)[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->revealAnimations:[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/senseonics/view/InkPageIndicator;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    return p0
.end method

.method static synthetic access$1202(Lcom/senseonics/view/InkPageIndicator;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    return p1
.end method

.method static synthetic access$1300(Lcom/senseonics/view/InkPageIndicator;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX2:F

    return p0
.end method

.method static synthetic access$1302(Lcom/senseonics/view/InkPageIndicator;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX2:F

    return p1
.end method

.method static synthetic access$1400(Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->cancelJoiningAnimations()V

    return-void
.end method

.method static synthetic access$1500(Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->clearJoiningFractions()V

    return-void
.end method

.method static synthetic access$1600(Lcom/senseonics/view/InkPageIndicator;IF)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/senseonics/view/InkPageIndicator;->setDotRevealFraction(IF)V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->resetState()V

    return-void
.end method

.method static synthetic access$302(Lcom/senseonics/view/InkPageIndicator;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator;->pageChanging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/senseonics/view/InkPageIndicator;)F
    .locals 0

    .line 50
    iget p0, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    return p0
.end method

.method static synthetic access$402(Lcom/senseonics/view/InkPageIndicator;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    return p1
.end method

.method static synthetic access$500(Lcom/senseonics/view/InkPageIndicator;)Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatAnimation:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    return-object p0
.end method

.method static synthetic access$602(Lcom/senseonics/view/InkPageIndicator;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotInPosition:Z

    return p1
.end method

.method static synthetic access$700(Lcom/senseonics/view/InkPageIndicator;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/senseonics/view/InkPageIndicator;->animHalfDuration:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/senseonics/view/InkPageIndicator;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/senseonics/view/InkPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/senseonics/view/InkPageIndicator;)[F
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    return-object p0
.end method

.method private calculateDotPositions(II)V
    .locals 4

    .line 228
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingLeft()I

    move-result p2

    .line 229
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingTop()I

    move-result v0

    .line 230
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 231
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingBottom()I

    .line 233
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->getRequiredWidth()I

    move-result v1

    sub-int/2addr p1, p2

    sub-int/2addr p1, v1

    .line 234
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    int-to-float p1, p2

    iget p2, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr p1, p2

    .line 236
    iget p2, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    const/4 p2, 0x0

    .line 237
    :goto_0
    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    if-ge p2, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    add-int/2addr v2, v3

    mul-int v2, v2, p2

    int-to-float v2, v2

    add-float/2addr v2, p1

    aput v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    int-to-float p1, v0

    .line 241
    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    .line 242
    iget p2, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    .line 243
    iget p1, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    add-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    .line 245
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method

.method private cancelJoiningAnimations()V
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private clearJoiningFractions()V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningFractions:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 654
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;
    .locals 8

    const/4 v0, 0x2

    .line 594
    new-array v0, v0, [F

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 597
    new-instance v7, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    const/high16 v1, 0x3e800000    # 0.25f

    if-le p3, p2, :cond_0

    new-instance v2, Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;

    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    sub-float v3, p1, v3

    mul-float v3, v3, v1

    sub-float/2addr p1, v3

    invoke-direct {v2, p0, p1}, Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;-><init>(Lcom/senseonics/view/InkPageIndicator;F)V

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;

    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    sub-float/2addr v3, p1

    mul-float v3, v3, v1

    add-float/2addr p1, v3

    invoke-direct {v2, p0, p1}, Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;-><init>(Lcom/senseonics/view/InkPageIndicator;F)V

    goto :goto_0

    :goto_1
    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;-><init>(Lcom/senseonics/view/InkPageIndicator;IIILcom/senseonics/view/InkPageIndicator$StartPredicate;)V

    iput-object v7, p0, Lcom/senseonics/view/InkPageIndicator;->retreatAnimation:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    .line 601
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->retreatAnimation:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    new-instance p2, Lcom/senseonics/view/InkPageIndicator$2;

    invoke-direct {p2, p0}, Lcom/senseonics/view/InkPageIndicator$2;-><init>(Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {p1, p2}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    new-instance p1, Lcom/senseonics/view/InkPageIndicator$3;

    invoke-direct {p1, p0}, Lcom/senseonics/view/InkPageIndicator$3;-><init>(Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 617
    new-instance p1, Lcom/senseonics/view/InkPageIndicator$4;

    invoke-direct {p1, p0}, Lcom/senseonics/view/InkPageIndicator$4;-><init>(Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 634
    iget-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotInPosition:Z

    const-wide/16 p2, 0x4

    if-eqz p1, :cond_1

    iget-wide v1, p0, Lcom/senseonics/view/InkPageIndicator;->animDuration:J

    div-long/2addr v1, p2

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 635
    iget-wide v1, p0, Lcom/senseonics/view/InkPageIndicator;->animDuration:J

    const-wide/16 v3, 0x3

    mul-long v1, v1, v3

    div-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 636
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private drawSelected(Landroid/graphics/Canvas;)V
    .locals 4

    .line 559
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    iget-object v3, p0, Lcom/senseonics/view/InkPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawUnselected(Landroid/graphics/Canvas;)V
    .locals 7

    .line 334
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    .line 337
    :goto_0
    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    const/high16 v2, -0x40800000    # -1.0f

    if-ge v0, v1, :cond_2

    .line 338
    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 339
    :goto_1
    iget-object v3, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    aget v4, v4, v1

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->joiningFractions:[F

    aget v1, v1, v0

    move v5, v1

    :goto_2
    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotRevealFractions:[F

    aget v6, v1, v0

    move-object v1, p0

    move v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/view/InkPageIndicator;->getUnselectedPath(IFFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 344
    iget-object v2, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 345
    iget-object v2, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_2
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 349
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->getRetreatingJoinPath()Landroid/graphics/Path;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 353
    :cond_3
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getDesiredHeight()I
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRequiredWidth()I
    .locals 3

    .line 308
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private getRetreatingJoinPath()Landroid/graphics/Path;
    .locals 5

    .line 552
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 553
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX2:F

    iget v4, p0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 554
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 555
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object v0
.end method

.method private getUnselectedPath(IFFFF)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 382
    iget-object v6, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    const/4 v6, 0x0

    cmpl-float v7, p4, v6

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    cmpl-float v10, p4, v8

    if-nez v10, :cond_2

    :cond_0
    cmpl-float v6, p5, v6

    if-nez v6, :cond_2

    .line 384
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    if-ne v1, v6, :cond_1

    iget-boolean v6, v0, Lcom/senseonics/view/InkPageIndicator;->selectedDotInPosition:Z

    if-eq v6, v9, :cond_2

    .line 389
    :cond_1
    iget-object v6, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    aget v1, v10, v1

    iget v10, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v1, v10, v11, v12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v10, 0x42b40000    # 90.0f

    if-lez v7, :cond_3

    cmpg-float v7, p4, v1

    if-gtz v7, :cond_3

    .line 392
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 398
    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 401
    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v7, v2, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 404
    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v11, v2, v11

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr v13, v2

    iget v14, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 405
    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v11, v10, v6, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 408
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr v7, v2

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    int-to-float v11, v11

    mul-float v11, v11, p4

    add-float/2addr v7, v11

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    .line 409
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    .line 410
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    add-float/2addr v7, v2

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 411
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    .line 412
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 413
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    sub-float/2addr v7, v11

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 414
    iget-object v11, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    iget v14, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    iget v15, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    move/from16 v16, v7

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 419
    iput v2, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    .line 420
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    .line 421
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 422
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    add-float/2addr v6, v7

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    .line 423
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    add-float/2addr v6, v2

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 424
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 425
    iget-object v11, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    iget v14, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    iget v15, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 429
    iget-object v6, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 432
    iget-object v6, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 435
    iget-object v6, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v6, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 438
    iget-object v6, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v7, v3, v7

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr v12, v3

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v6, v7, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 439
    iget-object v6, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v11, -0x3ccc0000    # -180.0f

    invoke-virtual {v6, v7, v10, v11, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 442
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v6, v3, v6

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    int-to-float v7, v7

    mul-float v7, v7, p4

    sub-float/2addr v6, v7

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    .line 443
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    .line 444
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    sub-float v6, v3, v6

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 445
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    .line 446
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 447
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    sub-float/2addr v6, v7

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 448
    iget-object v11, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    iget v14, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    iget v15, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 453
    iput v3, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    .line 454
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    .line 455
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 456
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    add-float/2addr v6, v7

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    .line 457
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    sub-float/2addr v6, v7

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 458
    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    iput v6, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 459
    iget-object v11, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    iget v14, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    iget v15, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 462
    iget-object v6, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_3
    cmpl-float v1, p4, v1

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v1, :cond_4

    cmpg-float v1, p4, v6

    if-gez v1, :cond_4

    .line 465
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    cmpl-float v1, v1, v8

    if-nez v1, :cond_4

    const v1, 0x3e4ccccd    # 0.2f

    sub-float v1, p4, v1

    const/high16 v7, 0x3fa00000    # 1.25f

    mul-float v1, v1, v7

    .line 474
    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v7, v2, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 477
    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v11, v2, v11

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr v13, v2

    iget v14, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 478
    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    invoke-virtual {v7, v11, v10, v12, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 481
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr v7, v2

    iget v10, v0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v7, v10

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    .line 482
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iget v10, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v10, v10, v1

    sub-float/2addr v7, v10

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    .line 483
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v10, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v10, v10, v1

    sub-float/2addr v7, v10

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 484
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    .line 485
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    sub-float v10, v6, v1

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v11, v11, v10

    sub-float/2addr v7, v11

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 486
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 487
    iget-object v11, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    iget v14, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    iget v15, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 492
    iput v3, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    .line 493
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    .line 494
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v8, v8, v10

    add-float/2addr v7, v8

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 495
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    .line 496
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v8, v8, v1

    add-float/2addr v7, v8

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 497
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 498
    iget-object v11, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    iget v14, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    iget v15, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 503
    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v8, v3, v8

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr v12, v3

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v7, v8, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 504
    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v11, 0x43870000    # 270.0f

    const/high16 v12, 0x43340000    # 180.0f

    invoke-virtual {v7, v8, v11, v12, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 508
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v8, v8, v1

    add-float/2addr v7, v8

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    .line 509
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v8, v8, v1

    add-float/2addr v7, v8

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 510
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    .line 511
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v8, v8, v10

    add-float/2addr v7, v8

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 512
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 513
    iget-object v11, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    iget v14, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    iget v15, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 518
    iput v2, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    .line 519
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    .line 520
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v10, v10, v8

    sub-float/2addr v7, v10

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 521
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    .line 522
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v1, v1, v8

    sub-float/2addr v7, v1

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 523
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    iput v1, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 524
    iget-object v7, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v8, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    iget v9, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    iget v10, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    iget v11, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    iget v12, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    iget v13, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_4
    cmpl-float v1, p4, v6

    if-nez v1, :cond_5

    .line 528
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_5

    .line 533
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v4, v2, v4

    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr v3, v7

    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v4, v6, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 534
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    iget v6, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_5
    const v1, 0x3727c5ac    # 1.0E-5f

    cmpl-float v1, p5, v1

    if-lez v1, :cond_6

    .line 544
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v3, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v4, v4, p5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 548
    :cond_6
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object v1
.end method

.method private resetState()V
    .locals 3

    .line 260
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    sub-int/2addr v0, v1

    :goto_0
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningFractions:[F

    .line 261
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningFractions:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 262
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotRevealFractions:[F

    .line 263
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotRevealFractions:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 264
    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    .line 265
    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX2:F

    .line 266
    iput-boolean v1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotInPosition:Z

    return-void
.end method

.method private setCurrentPageImmediate()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    aget v0, v0, v1

    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    :cond_2
    return-void
.end method

.method private setDotRevealFraction(IF)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotRevealFractions:[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotRevealFractions:[F

    aput p2, v0, p1

    .line 661
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setJoiningFraction(IF)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningFractions:[F

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningFractions:[F

    aput p2, v0, p1

    .line 648
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setPageCount(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    .line 223
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->resetState()V

    .line 224
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->requestLayout()V

    return-void
.end method

.method private setSelectedPage(I)V
    .locals 4

    .line 563
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    array-length v0, v0

    if-gt v0, p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/senseonics/view/InkPageIndicator;->pageChanging:Z

    .line 566
    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    iput v1, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    .line 567
    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    .line 568
    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_2

    .line 571
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-le p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 573
    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v2}, Lcom/senseonics/view/InkPageIndicator;->setJoiningFraction(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    neg-int v3, v1

    if-le v0, v3, :cond_2

    .line 577
    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v2}, Lcom/senseonics/view/InkPageIndicator;->setJoiningFraction(IF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    aget v0, v0, p1

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/senseonics/view/InkPageIndicator;->createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    .line 587
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/view/InkPageIndicator;->drawUnselected(Landroid/graphics/Canvas;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/senseonics/view/InkPageIndicator;->drawSelected(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 272
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->getDesiredHeight()I

    move-result v0

    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 279
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 286
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->getDesiredWidth()I

    move-result p2

    .line 288
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 290
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 293
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 299
    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/senseonics/view/InkPageIndicator;->setMeasuredDimension(II)V

    .line 300
    invoke-direct {p0, p2, v0}, Lcom/senseonics/view/InkPageIndicator;->calculateDotPositions(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 186
    iget-boolean p3, p0, Lcom/senseonics/view/InkPageIndicator;->isAttachedToWindow:Z

    if-eqz p3, :cond_2

    .line 188
    iget-boolean p3, p0, Lcom/senseonics/view/InkPageIndicator;->pageChanging:Z

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    :goto_0
    if-eq p3, p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 198
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 201
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/senseonics/view/InkPageIndicator;->setJoiningFraction(IF)V

    :cond_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/senseonics/view/InkPageIndicator;->isAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcom/senseonics/view/InkPageIndicator;->setSelectedPage(I)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->setCurrentPageImmediate()V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 863
    check-cast p1, Lcom/senseonics/view/InkPageIndicator$SavedState;

    .line 864
    invoke-virtual {p1}, Lcom/senseonics/view/InkPageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 865
    iget p1, p1, Lcom/senseonics/view/InkPageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    .line 866
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 871
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 872
    new-instance v1, Lcom/senseonics/view/InkPageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/senseonics/view/InkPageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 873
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    iput v0, v1, Lcom/senseonics/view/InkPageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator;->isAttachedToWindow:Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 322
    iput-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator;->isAttachedToWindow:Z

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 172
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 173
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 174
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/senseonics/view/InkPageIndicator;->setPageCount(I)V

    .line 175
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/senseonics/view/InkPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/senseonics/view/InkPageIndicator$1;-><init>(Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 181
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method
