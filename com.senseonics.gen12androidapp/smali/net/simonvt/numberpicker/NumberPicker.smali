.class public Lnet/simonvt/numberpicker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;,
        Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;,
        Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lnet/simonvt/numberpicker/NumberPicker$CustomEditText;,
        Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;,
        Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;,
        Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;,
        Lnet/simonvt/numberpicker/NumberPicker$Formatter;,
        Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;,
        Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;,
        Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x0

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;

.field private final mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

.field private mFormatter:Lnet/simonvt/numberpicker/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;

.field private final mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lnet/simonvt/numberpicker/NumberPicker;->sTwoDigitFormatter:Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;

    const/16 v0, 0x1e

    .line 1970
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/simonvt/numberpicker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 550
    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 560
    sget v0, Lnet/simonvt/numberpicker/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 571
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x12c

    .line 299
    iput-wide v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    .line 304
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v0, 0x3

    .line 309
    new-array v0, v0, [I

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    const/high16 v0, -0x80000000

    .line 329
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    const/4 v0, 0x0

    .line 430
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    const/4 v1, -0x1

    .line 481
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 574
    sget-object v2, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 576
    sget p3, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker_internalLayout:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 579
    :goto_0
    iput-boolean v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    .line 581
    sget v3, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker_solidColor:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSolidColor:I

    .line 583
    sget v3, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker_selectionDivider:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x40000000    # 2.0f

    .line 587
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 585
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 588
    sget v4, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker_selectionDividerHeight:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    const/high16 v3, 0x42400000    # 48.0f

    .line 593
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 591
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 594
    sget v4, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker_selectionDividersDistance:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    .line 597
    sget v3, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker_internalMinHeight:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinHeight:I

    .line 600
    sget v3, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker_internalMaxHeight:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxHeight:I

    .line 602
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinHeight:I

    if-eq v3, v1, :cond_1

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxHeight:I

    if-eq v3, v1, :cond_1

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinHeight:I

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxHeight:I

    if-le v3, v4, :cond_1

    .line 604
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 607
    :cond_1
    sget v3, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker_internalMinWidth:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    .line 610
    sget v3, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker_internalMaxWidth:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    .line 612
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    if-eq v3, v1, :cond_2

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    if-eq v3, v1, :cond_2

    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    if-le v3, v4, :cond_2

    .line 614
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 617
    :cond_2
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    if-ne v3, v1, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mComputeMaxWidth:Z

    .line 619
    sget v3, Lnet/simonvt/numberpicker/R$styleable;->NumberPicker_virtualButtonPressedDrawable:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 622
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 624
    new-instance p2, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    .line 631
    iget-boolean p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr p2, v2

    invoke-virtual {p0, p2}, Lnet/simonvt/numberpicker/NumberPicker;->setWillNotDraw(Z)V

    .line 633
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v3, "layout_inflater"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 635
    invoke-virtual {p2, p3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 637
    new-instance p2, Lnet/simonvt/numberpicker/NumberPicker$1;

    invoke-direct {p2, p0}, Lnet/simonvt/numberpicker/NumberPicker$1;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 649
    new-instance p3, Lnet/simonvt/numberpicker/NumberPicker$2;

    invoke-direct {p3, p0}, Lnet/simonvt/numberpicker/NumberPicker$2;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 663
    iget-boolean v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 664
    sget v3, Lnet/simonvt/numberpicker/R$id;->np__increment:I

    invoke-virtual {p0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 665
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 668
    :cond_4
    iput-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 672
    :goto_2
    iget-boolean v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v3, :cond_5

    .line 673
    sget v3, Lnet/simonvt/numberpicker/R$id;->np__decrement:I

    invoke-virtual {p0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 674
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .line 677
    :cond_5
    iput-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 681
    :goto_3
    sget p2, Lnet/simonvt/numberpicker/R$id;->np__numberpicker_input:I

    invoke-virtual {p0, p2}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 682
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance p3, Lnet/simonvt/numberpicker/NumberPicker$3;

    invoke-direct {p3, p0}, Lnet/simonvt/numberpicker/NumberPicker$3;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 692
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-array p3, v2, [Landroid/text/InputFilter;

    new-instance v3, Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;

    invoke-direct {v3, p0}, Lnet/simonvt/numberpicker/NumberPicker$InputTextFilter;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    aput-object v3, p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 696
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 697
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 700
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 701
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTouchSlop:I

    .line 702
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinimumFlingVelocity:I

    .line 703
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaximumFlingVelocity:I

    .line 705
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTextSize:I

    .line 708
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 709
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 710
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 711
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 712
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 713
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 714
    sget-object p3, Lnet/simonvt/numberpicker/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 715
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 716
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 719
    new-instance p1, Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v4, v2}, Lnet/simonvt/numberpicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    .line 720
    new-instance p1, Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40200000    # 2.5f

    invoke-direct {p3, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Lnet/simonvt/numberpicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    .line 722
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 724
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_6

    .line 726
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 727
    invoke-virtual {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setImportantForAccessibility(I)V

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    .line 95
    iget-object p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lnet/simonvt/numberpicker/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lnet/simonvt/numberpicker/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 0

    .line 95
    iget p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$1300(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1400(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1402(Lnet/simonvt/numberpicker/NumberPicker;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 0

    .line 95
    iget p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$1600(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1602(Lnet/simonvt/numberpicker/NumberPicker;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1700(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 0

    .line 95
    iget p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1800(Lnet/simonvt/numberpicker/NumberPicker;)J
    .locals 2

    .line 95
    iget-wide v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1900(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->showSoftInput()V

    return-void
.end method

.method static synthetic access$200(Lnet/simonvt/numberpicker/NumberPicker;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2002(Lnet/simonvt/numberpicker/NumberPicker;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$2100(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 0

    .line 95
    iget p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    return p0
.end method

.method static synthetic access$2200(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 0

    .line 95
    iget p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    return p0
.end method

.method static synthetic access$2300(Lnet/simonvt/numberpicker/NumberPicker;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$2400(Lnet/simonvt/numberpicker/NumberPicker;I)I
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lnet/simonvt/numberpicker/NumberPicker;)I
    .locals 0

    .line 95
    iget p0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    return p0
.end method

.method static synthetic access$2600(Lnet/simonvt/numberpicker/NumberPicker;I)Ljava/lang/String;
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lnet/simonvt/numberpicker/NumberPicker;ZJ)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$400(Lnet/simonvt/numberpicker/NumberPicker;Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900()[C
    .locals 1

    .line 95
    sget-object v0, Lnet/simonvt/numberpicker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1653
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1654
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1655
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->moveToFinalScrollerPosition(Lnet/simonvt/numberpicker/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1656
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->moveToFinalScrollerPosition(Lnet/simonvt/numberpicker/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1658
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 1660
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Lnet/simonvt/numberpicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1662
    :cond_1
    iget-object v7, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Lnet/simonvt/numberpicker/Scroller;->startScroll(IIIII)V

    .line 1664
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1667
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1669
    :cond_3
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1773
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 1774
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1776
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1777
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1778
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 1780
    aput v0, p1, v1

    .line 1781
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1789
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1790
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1794
    :cond_0
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-le p1, v1, :cond_1

    goto :goto_0

    .line 1797
    :cond_1
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1798
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int v1, p1, v1

    .line 1799
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v2, v1

    goto :goto_1

    .line 1801
    :cond_2
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    .line 1804
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 2053
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2055
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 2056
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    if-lez v0, :cond_0

    .line 2057
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    :goto_0
    add-int/2addr v0, v1

    :cond_1
    move v5, v0

    .line 2059
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Lnet/simonvt/numberpicker/Scroller;->startScroll(IIIII)V

    .line 2060
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1729
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 1732
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Lnet/simonvt/numberpicker/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1734
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Lnet/simonvt/numberpicker/Scroller;->fling(IIIIIIII)V

    .line 1737
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    .line 1808
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFormatter:Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFormatter:Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/simonvt/numberpicker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 4

    .line 2659
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 1923
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1925
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1930
    :goto_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1932
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1933
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1934
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1943
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 1949
    :catch_0
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    return p1
.end method

.method private getSupportAccessibilityNodeProvider()Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;
    .locals 2

    .line 2204
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;-><init>(Lnet/simonvt/numberpicker/NumberPicker;Lnet/simonvt/numberpicker/NumberPicker$1;)V

    return-object v0
.end method

.method public static final getTwoDigitFormatter()Lnet/simonvt/numberpicker/NumberPicker$Formatter;
    .locals 1

    .line 203
    sget-object v0, Lnet/simonvt/numberpicker/NumberPicker;->sTwoDigitFormatter:Lnet/simonvt/numberpicker/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 3

    .line 1744
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1745
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    sub-int/2addr p1, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1746
    :cond_0
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1747
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v2

    rem-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .line 1204
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1207
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1757
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1758
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 1760
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1761
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1762
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    .line 1764
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1765
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1692
    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1693
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1675
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1676
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    .line 1677
    array-length v1, v0

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTextSize:I

    mul-int v1, v1, v2

    .line 1678
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 1679
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1680
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    .line 1681
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTextSize:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    .line 1684
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1685
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    .line 1687
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1688
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1605
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1606
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    .line 1607
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1608
    :goto_0
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    .line 1610
    iget-boolean v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1611
    invoke-direct {p0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1613
    :cond_0
    aput v3, v0, v2

    .line 1614
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1531
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1532
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    .line 1541
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return p1

    .line 1539
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1537
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private moveToFinalScrollerPosition(Lnet/simonvt/numberpicker/Scroller;)Z
    .locals 5

    const/4 v0, 0x1

    .line 788
    invoke-virtual {p1, v0}, Lnet/simonvt/numberpicker/Scroller;->forceFinished(Z)V

    .line 789
    invoke-virtual {p1}, Lnet/simonvt/numberpicker/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 790
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 791
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 793
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    if-lez v2, :cond_0

    .line 795
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 797
    :cond_0
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v3

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 801
    invoke-virtual {p0, p1, v1}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1852
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnValueChangeListener:Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 1853
    iget-object p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnValueChangeListener:Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;->onValueChange(Lnet/simonvt/numberpicker/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1716
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1719
    :cond_0
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    .line 1720
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnScrollListener:Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1721
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnScrollListener:Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;->onScrollStateChange(Lnet/simonvt/numberpicker/NumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Lnet/simonvt/numberpicker/Scroller;)V
    .locals 1

    .line 1700
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    if-ne p1, v0, :cond_1

    .line 1701
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1702
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    .line 1704
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1706
    :cond_1
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 1707
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 1886
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1887
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 1889
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1891
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 1863
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1864
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1866
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1868
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$600(Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1869
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1

    .line 1957
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1958
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;-><init>(Lnet/simonvt/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    goto :goto_0

    .line 1960
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1962
    :goto_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->access$702(Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;I)I

    .line 1963
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-static {p1, p2}, Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;->access$802(Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;I)I

    .line 1964
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1907
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1910
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1911
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSetSelectionCommand:Lnet/simonvt/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1913
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1914
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1916
    :cond_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 1898
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1876
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lnet/simonvt/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 2

    .line 1580
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1581
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    if-ge p1, p0, :cond_2

    const/high16 p0, 0x1000000

    or-int/2addr p0, p1

    :cond_2
    :goto_0
    const/high16 p1, -0x1000000

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1558
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 1559
    invoke-static {p1, p3, p2}, Lnet/simonvt/numberpicker/NumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1625
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1629
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1630
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1632
    :cond_1
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1633
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1635
    :goto_0
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    .line 1636
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    .line 1637
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_2

    .line 1639
    invoke-direct {p0, v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->notifyChange(II)V

    .line 1641
    :cond_2
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1642
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 1190
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 1192
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1193
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1195
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1196
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1217
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1221
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_2

    .line 1224
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1230
    :cond_2
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    :goto_1
    if-lez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1233
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_3

    .line 1237
    :cond_4
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1239
    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1245
    :goto_3
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1246
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1247
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1248
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1250
    :cond_7
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    .line 1252
    :goto_4
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    :cond_8
    return-void
.end method

.method private updateInputTextView()Z
    .locals 3

    .line 1837
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1839
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1840
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 1812
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1813
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1815
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    .line 1818
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 1819
    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1046
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    .line 1047
    invoke-virtual {v0}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    .line 1049
    invoke-virtual {v0}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1053
    :cond_0
    invoke-virtual {v0}, Lnet/simonvt/numberpicker/Scroller;->computeScrollOffset()Z

    .line 1054
    invoke-virtual {v0}, Lnet/simonvt/numberpicker/Scroller;->getCurrY()I

    move-result v1

    .line 1055
    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1056
    invoke-virtual {v0}, Lnet/simonvt/numberpicker/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 1058
    iget v3, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    .line 1059
    iput v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 1060
    invoke-virtual {v0}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1061
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollerFinished(Lnet/simonvt/numberpicker/Scroller;)V

    goto :goto_0

    .line 1063
    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    :goto_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 996
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 997
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 1003
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 1005
    :cond_1
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 1010
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    .line 1011
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getSupportAccessibilityNodeProvider()Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;

    move-result-object v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x80

    const/4 v6, -0x1

    const/16 v7, 0x100

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1035
    :pswitch_0
    invoke-virtual {v1, v0, v7}, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)V

    .line 1037
    iput v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1015
    :pswitch_1
    invoke-virtual {v1, v0, v5}, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)V

    .line 1017
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1018
    invoke-virtual {v1, v0, v4, v3}, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1022
    :cond_3
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_4

    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v6, :cond_4

    .line 1024
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v1, p1, v7}, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)V

    .line 1027
    invoke-virtual {v1, v0, v5}, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->sendAccessibilityEventForVirtualView(II)V

    .line 1029
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1030
    invoke-virtual {v1, v0, v4, v3}, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 947
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 955
    :pswitch_0
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_0

    goto :goto_3

    .line 958
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 972
    :pswitch_1
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_6

    const/4 p1, -0x1

    .line 973
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v2

    .line 960
    :pswitch_2
    iget-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    const/16 v3, 0x14

    if-nez v1, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 961
    :cond_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_6

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 962
    :goto_1
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->requestFocus()Z

    .line 963
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 964
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 965
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_4

    if-ne v0, v3, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 966
    :goto_2
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V

    :cond_4
    return v2

    .line 951
    :cond_5
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 979
    :cond_6
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 935
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 942
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 988
    :cond_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 991
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .line 1511
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1512
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 1514
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAccessibilityNodeProvider:Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;

    if-nez v0, :cond_1

    .line 1515
    new-instance v0, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;-><init>(Lnet/simonvt/numberpicker/NumberPicker;Lnet/simonvt/numberpicker/NumberPicker$1;)V

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAccessibilityNodeProvider:Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;

    .line 1517
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAccessibilityNodeProvider:Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;

    iget-object v0, v0, Lnet/simonvt/numberpicker/NumberPicker$SupportAccessibilityNodeProvider;->mProvider:Lnet/simonvt/numberpicker/NumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1397
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1359
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1321
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1113
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1312
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1265
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1438
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1443
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1444
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 1448
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v1, v1

    .line 1451
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    if-nez v2, :cond_2

    .line 1453
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v2, :cond_1

    .line 1455
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lnet/simonvt/numberpicker/NumberPicker;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1456
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v4

    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1457
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1459
    :cond_1
    iget-boolean v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v2, :cond_2

    .line 1461
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lnet/simonvt/numberpicker/NumberPicker;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1462
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v5

    .line 1463
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v6

    .line 1462
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1464
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1469
    :cond_2
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    move v4, v1

    const/4 v1, 0x0

    .line 1470
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_5

    .line 1471
    aget v5, v2, v1

    .line 1472
    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    .line 1478
    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1479
    :cond_3
    iget-object v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1481
    :cond_4
    iget v5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1485
    :cond_5
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 1487
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    .line 1488
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    add-int/2addr v1, v0

    .line 1489
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1490
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1493
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1494
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    sub-int v1, v0, v1

    .line 1495
    iget-object v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1496
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1502
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1503
    const-class v0, Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1504
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1505
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    mul-int v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1506
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    mul-int v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 809
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 812
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    return v1

    .line 815
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 816
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    .line 818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventTime:J

    .line 819
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIngonreMoveEvents:Z

    .line 820
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mShowSoftInputOnTap:Z

    .line 822
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_2

    .line 823
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 824
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 827
    :cond_2
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 828
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 829
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v0}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 834
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 835
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 836
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {p1, v0}, Lnet/simonvt/numberpicker/Scroller;->forceFinished(Z)V

    .line 837
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {p1, v0}, Lnet/simonvt/numberpicker/Scroller;->forceFinished(Z)V

    .line 838
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 839
    :cond_4
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 840
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFlingScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {p1, v0}, Lnet/simonvt/numberpicker/Scroller;->forceFinished(Z)V

    .line 841
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mAdjustScroller:Lnet/simonvt/numberpicker/Scroller;

    invoke-virtual {p1, v0}, Lnet/simonvt/numberpicker/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 842
    :cond_5
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    .line 843
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->hideSoftInput()V

    .line 845
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    .line 844
    invoke-direct {p0, v1, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 846
    :cond_6
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    .line 847
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->hideSoftInput()V

    .line 849
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    .line 848
    invoke-direct {p0, v0, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 851
    :cond_7
    iput-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mShowSoftInputOnTap:Z

    .line 852
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 734
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 735
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 738
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result p2

    .line 739
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result p3

    .line 742
    iget-object p4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 743
    iget-object p5, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 744
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 745
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 748
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 752
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheel()V

    .line 753
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeFadingEdges()V

    .line 754
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getHeight()I

    move-result p1

    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    .line 756
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr p1, p2

    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 763
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 764
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 768
    :cond_0
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 769
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lnet/simonvt/numberpicker/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 770
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 772
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lnet/simonvt/numberpicker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 774
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 776
    invoke-virtual {p0, p1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 862
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 865
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 866
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 868
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 872
    :pswitch_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 875
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 876
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mScrollState:I

    if-eq v0, v2, :cond_3

    .line 877
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 878
    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_4

    .line 879
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 880
    invoke-direct {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 883
    :cond_3
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 884
    invoke-virtual {p0, v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->scrollBy(II)V

    .line 885
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    .line 887
    :cond_4
    :goto_0
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    .line 890
    :pswitch_1
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeBeginSoftInputCommand()V

    .line 891
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 892
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->cancel()V

    .line 893
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    .line 894
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 895
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 896
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinimumFlingVelocity:I

    const/4 v5, 0x2

    if-le v3, v4, :cond_5

    .line 897
    invoke-direct {p0, v0}, Lnet/simonvt/numberpicker/NumberPicker;->fling(I)V

    .line 898
    invoke-direct {p0, v5}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 900
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v3, v0

    .line 901
    iget v4, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    iget-wide v6, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLastDownEventTime:J

    .line 903
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 904
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mTouchSlop:I

    if-gt v3, p1, :cond_8

    .line 905
    iget-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_6

    .line 906
    iput-boolean v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mShowSoftInputOnTap:Z

    .line 907
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->showSoftInput()V

    goto :goto_1

    .line 909
    :cond_6
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v2

    if-lez v0, :cond_7

    .line 912
    invoke-direct {p0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V

    .line 913
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_7
    if-gez v0, :cond_9

    .line 916
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->changeValueByOne(Z)V

    .line 917
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mPressedStateHelper:Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v5}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 922
    :cond_8
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 924
    :cond_9
    :goto_1
    invoke-direct {p0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->onScrollStateChange(I)V

    .line 926
    :goto_2
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 927
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v2

    :cond_a
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1081
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    .line 1082
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v0, p1, v1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-gt v0, v2, :cond_0

    .line 1084
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1087
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    aget v0, p1, v1

    iget v2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-lt v0, v2, :cond_1

    .line 1089
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1092
    :cond_1
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1093
    :cond_2
    :goto_0
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr p2, v0

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    if-le p2, v0, :cond_3

    .line 1094
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1095
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->decrementSelectorIndices([I)V

    .line 1096
    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    .line 1097
    iget-boolean p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 1098
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1101
    :cond_3
    :goto_1
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr p2, v0

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v0, v0

    if-ge p2, v0, :cond_4

    .line 1102
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1103
    invoke-direct {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->incrementSelectorIndices([I)V

    .line 1104
    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    .line 1105
    iget-boolean p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    .line 1106
    iget p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lnet/simonvt/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1410
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1413
    :cond_0
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1414
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1416
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1419
    :cond_1
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1421
    :goto_0
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1422
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1423
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1069
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1070
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1073
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1074
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1076
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setFormatter(Lnet/simonvt/numberpicker/NumberPicker$Formatter;)V
    .locals 1

    .line 1146
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFormatter:Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1149
    :cond_0
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mFormatter:Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    .line 1150
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1151
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1373
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 1377
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1379
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    .line 1380
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_2

    .line 1381
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    .line 1383
    :cond_2
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1384
    :goto_0
    invoke-virtual {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1385
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1386
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1387
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    .line 1388
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1335
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 1339
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1341
    :cond_1
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    .line 1342
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    if-le p1, v0, :cond_2

    .line 1343
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mValue:I

    .line 1345
    :cond_2
    iget p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1346
    :goto_0
    invoke-virtual {p0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1347
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1348
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1349
    invoke-direct {p0}, Lnet/simonvt/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    .line 1350
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1303
    iput-wide p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnScrollListener:Lnet/simonvt/numberpicker/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mOnValueChangeListener:Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1183
    invoke-direct {p0, p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1286
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 1287
    :cond_1
    iget-boolean v0, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 1288
    iput-boolean p1, p0, Lnet/simonvt/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    :cond_2
    return-void
.end method
