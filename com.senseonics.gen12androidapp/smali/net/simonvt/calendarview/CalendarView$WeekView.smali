.class Lnet/simonvt/calendarview/CalendarView$WeekView;
.super Landroid/view/View;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/calendarview/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekView"
.end annotation


# instance fields
.field private mDayNumbers:[Ljava/lang/String;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFirstDay:Ljava/util/Calendar;

.field private mFocusDay:[Z

.field private mHasFocusedDay:Z

.field private mHasSelectedDay:Z

.field private mHasUnfocusedDay:Z

.field private mHeight:I

.field private mLastWeekDayMonth:I

.field private final mMonthNumDrawPaint:Landroid/graphics/Paint;

.field private mMonthOfFirstWeekDay:I

.field private mNumCells:I

.field private mSelectedDay:I

.field private mSelectedLeft:I

.field private mSelectedRight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mWeek:I

.field private mWidth:I

.field final synthetic this$0:Lnet/simonvt/calendarview/CalendarView;


# direct methods
.method public constructor <init>(Lnet/simonvt/calendarview/CalendarView;Landroid/content/Context;)V
    .locals 0

    .line 1548
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1549
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1496
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    .line 1498
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    .line 1500
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 1518
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    .line 1521
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mLastWeekDayMonth:I

    .line 1525
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWeek:I

    const/4 p2, 0x0

    .line 1534
    iput-boolean p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasSelectedDay:Z

    .line 1537
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedDay:I

    .line 1543
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedLeft:I

    .line 1546
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedRight:I

    .line 1552
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView$WeekView;->initilaizePaints()V

    return-void
.end method

.method static synthetic access$100(Lnet/simonvt/calendarview/CalendarView$WeekView;)Z
    .locals 0

    .line 1494
    iget-boolean p0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasSelectedDay:Z

    return p0
.end method

.method static synthetic access$200(Lnet/simonvt/calendarview/CalendarView$WeekView;)Z
    .locals 0

    .line 1494
    iget-boolean p0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasFocusedDay:Z

    return p0
.end method

.method static synthetic access$300(Lnet/simonvt/calendarview/CalendarView$WeekView;)Z
    .locals 0

    .line 1494
    iget-boolean p0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasUnfocusedDay:Z

    return p0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1715
    iget-boolean v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    return-void

    .line 1718
    :cond_0
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$2500(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1720
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$2600(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1721
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1723
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$2400(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1726
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1727
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1729
    :cond_1
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v3}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v3

    :cond_2
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1730
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1732
    :goto_0
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v0, :cond_4

    .line 1735
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1736
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_3
    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    :goto_1
    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 1738
    :cond_4
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1739
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1741
    :goto_2
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1822
    iget-boolean v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasSelectedDay:Z

    if-nez v0, :cond_0

    return-void

    .line 1825
    :cond_0
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$3200(Lnet/simonvt/calendarview/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedLeft:I

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$3100(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1826
    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$2600(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v2

    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedLeft:I

    iget-object v4, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1827
    invoke-static {v4}, Lnet/simonvt/calendarview/CalendarView;->access$3100(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHeight:I

    .line 1825
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1828
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$3200(Lnet/simonvt/calendarview/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1829
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$3200(Lnet/simonvt/calendarview/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedRight:I

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$3100(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1830
    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$2600(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v2

    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedRight:I

    iget-object v4, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1831
    invoke-static {v4}, Lnet/simonvt/calendarview/CalendarView;->access$3100(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHeight:I

    .line 1829
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1832
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$3200(Lnet/simonvt/calendarview/CalendarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1750
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1751
    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$2600(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1752
    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    mul-int/lit8 v2, v1, 0x2

    .line 1755
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1756
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v4}, Lnet/simonvt/calendarview/CalendarView;->access$2300(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1760
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v3}, Lnet/simonvt/calendarview/CalendarView;->access$2400(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_1

    .line 1762
    iget-object v7, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mFocusDay:[Z

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_0

    iget-object v8, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v8}, Lnet/simonvt/calendarview/CalendarView;->access$2700(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v8

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1763
    invoke-static {v8}, Lnet/simonvt/calendarview/CalendarView;->access$2800(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v8

    .line 1762
    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v5

    .line 1764
    iget v8, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    mul-int v7, v7, v8

    div-int/2addr v7, v2

    .line 1765
    iget-object v8, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    sub-int/2addr v6, v3

    aget-object v6, v8, v6

    int-to-float v7, v7

    int-to-float v8, v0

    iget-object v9, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1767
    :cond_1
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1768
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v3}, Lnet/simonvt/calendarview/CalendarView;->access$2900(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1769
    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    div-int/2addr v3, v2

    sub-int/2addr v1, v3

    .line 1770
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v2, v2, v4

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 1773
    :cond_2
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v3}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1774
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v6}, Lnet/simonvt/calendarview/CalendarView;->access$2900(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1775
    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    div-int/2addr v3, v2

    .line 1776
    iget-object v6, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v4, v6, v4

    int-to-float v3, v3

    int-to-float v6, v0

    iget-object v7, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v4, 0x1

    :cond_3
    :goto_2
    if-ge v4, v1, :cond_5

    .line 1780
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_4

    iget-object v6, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v6}, Lnet/simonvt/calendarview/CalendarView;->access$2700(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v6

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1781
    invoke-static {v6}, Lnet/simonvt/calendarview/CalendarView;->access$2800(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v6

    .line 1780
    :goto_3
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v3, v4, 0x2

    add-int/2addr v3, v5

    .line 1782
    iget v6, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    mul-int v3, v3, v6

    div-int/2addr v3, v2

    .line 1783
    iget-object v6, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v4

    int-to-float v3, v3

    int-to-float v7, v0

    iget-object v8, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v3, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return-void
.end method

.method private drawWeekSeparators(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1795
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$1800(Lnet/simonvt/calendarview/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1796
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$1800(Lnet/simonvt/calendarview/CalendarView;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1799
    :cond_0
    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWeek:I

    if-ne v0, v1, :cond_1

    return-void

    .line 1802
    :cond_1
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$3000(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1803
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$2600(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1806
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$2400(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1808
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    goto :goto_0

    :goto_1
    move v5, v0

    const/4 v3, 0x0

    goto :goto_2

    .line 1810
    :cond_3
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    move v1, v0

    .line 1811
    :cond_4
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    int-to-float v0, v0

    move v5, v0

    move v3, v1

    :goto_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1813
    iget-object v7, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initilaizePaints()V
    .locals 3

    .line 1624
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1625
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1626
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1628
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1629
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1630
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1631
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1632
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthNumDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$2300(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private updateSelectionPositions()V
    .locals 3

    .line 1845
    iget-boolean v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_3

    .line 1846
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$2400(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v0

    .line 1847
    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedDay:I

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$1700(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    add-int/lit8 v1, v1, 0x7

    .line 1851
    :cond_0
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 1855
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$2200(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    mul-int v0, v0, v1

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedLeft:I

    goto :goto_0

    .line 1858
    :cond_2
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    mul-int v1, v1, v0

    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v0

    iput v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedLeft:I

    .line 1860
    :goto_0
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedLeft:I

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedRight:I

    :cond_3
    return-void
.end method


# virtual methods
.method public getDayFromLocation(FLjava/util/Calendar;)Z
    .locals 6

    .line 1670
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$2400(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1677
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v4, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    :goto_0
    move v3, v2

    const/4 v2, 0x0

    goto :goto_2

    .line 1679
    :cond_1
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v2}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    div-int/2addr v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1680
    :goto_1
    iget v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    :goto_2
    int-to-float v4, v2

    cmpg-float v5, p1, v4

    if-ltz v5, :cond_5

    int-to-float v5, v3

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3

    goto :goto_3

    :cond_3
    sub-float/2addr p1, v4

    .line 1689
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView;->access$2200(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    sub-int/2addr v3, v2

    int-to-float v1, v3

    div-float/2addr p1, v1

    float-to-int p1, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1692
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$2200(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v0

    sub-int/2addr v0, v1

    sub-int p1, v0, p1

    .line 1695
    :cond_4
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    .line 1696
    invoke-virtual {p2, v0, p1}, Ljava/util/Calendar;->add(II)V

    return v1

    .line 1684
    :cond_5
    :goto_3
    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    return v1
.end method

.method public getFirstDay()Ljava/util/Calendar;
    .locals 1

    .line 1659
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonthOfFirstWeekDay()I
    .locals 1

    .line 1641
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    return v0
.end method

.method public getMonthOfLastWeekDay()I
    .locals 1

    .line 1650
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mLastWeekDayMonth:I

    return v0
.end method

.method public init(III)V
    .locals 9

    .line 1567
    iput p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedDay:I

    .line 1568
    iget p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mSelectedDay:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasSelectedDay:Z

    .line 1569
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$2200(Lnet/simonvt/calendarview/CalendarView;)I

    move-result p2

    add-int/2addr p2, v2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$2200(Lnet/simonvt/calendarview/CalendarView;)I

    move-result p2

    :goto_1
    iput p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    .line 1570
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWeek:I

    .line 1571
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$1600(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1573
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    iget p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWeek:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3, p2}, Ljava/util/Calendar;->add(II)V

    .line 1574
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$1700(Lnet/simonvt/calendarview/CalendarView;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1577
    iget p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    .line 1578
    iget p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mFocusDay:[Z

    .line 1582
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView;->access$2100(Lnet/simonvt/calendarview/CalendarView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1583
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1584
    invoke-static {v6}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    .line 1583
    invoke-static {p2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 1589
    :goto_2
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$1700(Lnet/simonvt/calendarview/CalendarView;)I

    move-result p2

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v3}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr p2, v3

    .line 1590
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v3}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p2}, Ljava/util/Calendar;->add(II)V

    .line 1592
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Calendar;

    iput-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mFirstDay:Ljava/util/Calendar;

    .line 1593
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p2

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iput p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mMonthOfFirstWeekDay:I

    .line 1595
    iput-boolean v2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasUnfocusedDay:Z

    .line 1596
    :goto_3
    iget p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mNumCells:I

    if-ge p1, p2, :cond_6

    .line 1597
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p2, p3, :cond_3

    const/4 p2, 0x1

    goto :goto_4

    :cond_3
    const/4 p2, 0x0

    .line 1598
    :goto_4
    iget-object v5, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mFocusDay:[Z

    aput-boolean p2, v5, p1

    .line 1599
    iget-boolean v5, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasFocusedDay:Z

    or-int/2addr v5, p2

    iput-boolean v5, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasFocusedDay:Z

    .line 1600
    iget-boolean v5, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasUnfocusedDay:Z

    xor-int/lit8 p2, p2, 0x1

    and-int/2addr p2, v5

    iput-boolean p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHasUnfocusedDay:Z

    .line 1602
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p2

    iget-object v5, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v5}, Lnet/simonvt/calendarview/CalendarView;->access$1600(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p2

    iget-object v5, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v5}, Lnet/simonvt/calendarview/CalendarView;->access$1500(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_5

    .line 1605
    :cond_4
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%d"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    .line 1606
    invoke-static {v8}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1605
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, p1

    goto :goto_6

    .line 1603
    :cond_5
    :goto_5
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mDayNumbers:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, p2, p1

    .line 1608
    :goto_6
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v4, v2}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1612
    :cond_6
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 1613
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 1615
    :cond_7
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView;->access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mLastWeekDayMonth:I

    .line 1617
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView$WeekView;->updateSelectionPositions()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1703
    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1704
    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->drawWeekNumbersAndDates(Landroid/graphics/Canvas;)V

    .line 1705
    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->drawWeekSeparators(Landroid/graphics/Canvas;)V

    .line 1706
    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->drawSelectedDateVerticalBars(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1866
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView;->access$1800(Lnet/simonvt/calendarview/CalendarView;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getHeight()I

    move-result p2

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$1800(Lnet/simonvt/calendarview/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$1800(Lnet/simonvt/calendarview/CalendarView;)Landroid/widget/ListView;

    move-result-object v0

    .line 1867
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->this$0:Lnet/simonvt/calendarview/CalendarView;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView;->access$3300(Lnet/simonvt/calendarview/CalendarView;)I

    move-result v0

    div-int/2addr p2, v0

    iput p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHeight:I

    .line 1868
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lnet/simonvt/calendarview/CalendarView$WeekView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1837
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView$WeekView;->mWidth:I

    .line 1838
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView$WeekView;->updateSelectionPositions()V

    return-void
.end method
