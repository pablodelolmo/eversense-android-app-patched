.class public Lnet/simonvt/calendarview/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/calendarview/CalendarView$WeekView;,
        Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;,
        Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;,
        Lnet/simonvt/calendarview/CalendarView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field private static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "CalendarView"

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayLabels:[Ljava/lang/String;

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Lnet/simonvt/calendarview/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, p1, v0}, Lnet/simonvt/calendarview/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/calendarview/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 p3, 0x0

    .line 339
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    .line 182
    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListScrollTopOffset:I

    const/16 v0, 0xc

    .line 187
    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekMinVisibleHeight:I

    const/16 v0, 0x14

    .line 192
    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mBottomBuffer:I

    const/4 v0, 0x7

    .line 207
    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDaysPerWeek:I

    const v0, 0x3d4ccccd    # 0.05f

    .line 212
    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFriction:F

    const v0, 0x3eaa7efa    # 0.333f

    .line 217
    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mVelocityScale:F

    .line 262
    iput-boolean p3, p0, Lnet/simonvt/calendarview/CalendarView;->mIsScrollingUp:Z

    .line 267
    iput p3, p0, Lnet/simonvt/calendarview/CalendarView;->mPreviousScrollState:I

    .line 272
    iput p3, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentScrollState:I

    .line 282
    new-instance v0, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;-><init>(Lnet/simonvt/calendarview/CalendarView;Lnet/simonvt/calendarview/CalendarView$1;)V

    iput-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mScrollStateChangedRunnable:Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;

    .line 307
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    .line 342
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/simonvt/calendarview/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 344
    sget-object v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView:[I

    sget v2, Lnet/simonvt/calendarview/R$attr;->calendarViewStyle:I

    invoke-virtual {p1, p2, v0, v2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 346
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_showWeekNumber:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lnet/simonvt/calendarview/CalendarView;->mShowWeekNumber:Z

    .line 348
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_firstDayOfWeek:I

    .line 350
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    .line 348
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfWeek:I

    .line 351
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_minDate:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v3}, Lnet/simonvt/calendarview/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "01/01/1900"

    .line 353
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v3}, Lnet/simonvt/calendarview/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 355
    :cond_1
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_maxDate:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v3}, Lnet/simonvt/calendarview/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "01/01/2100"

    .line 357
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v3}, Lnet/simonvt/calendarview/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 359
    :cond_3
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max date cannot be before min date."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_4
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_shownWeekCount:I

    const/4 v3, 0x6

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mShownWeekCount:I

    .line 364
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_selectedWeekBackgroundColor:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedWeekBackgroundColor:I

    .line 366
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_focusedMonthDateColor:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFocusedMonthDateColor:I

    .line 368
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_unfocusedMonthDateColor:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mUnfocusedMonthDateColor:I

    .line 370
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_weekSeparatorLineColor:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekSeparatorLineColor:I

    .line 372
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_weekNumberColor:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekNumberColor:I

    .line 373
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_selectedDateVerticalBar:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 376
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_dateTextAppearance:I

    const v3, 0x1030046

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDateTextAppearanceResId:I

    .line 378
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->updateDateTextSize()V

    .line 380
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_weekDayTextAppearance:I

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekDayTextAppearanceResId:I

    .line 384
    sget v0, Lnet/simonvt/calendarview/R$styleable;->CalendarView_cv_dividerHorizontal:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 387
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v3, 0x41400000    # 12.0f

    .line 388
    invoke-static {v2, v3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekMinVisibleHeight:I

    const/high16 v3, 0x40000000    # 2.0f

    .line 390
    invoke-static {v2, v3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lnet/simonvt/calendarview/CalendarView;->mListScrollTopOffset:I

    const/high16 v3, 0x41a00000    # 20.0f

    .line 392
    invoke-static {v2, v3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lnet/simonvt/calendarview/CalendarView;->mBottomBuffer:I

    const/high16 v3, 0x40c00000    # 6.0f

    .line 394
    invoke-static {v2, v3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedDateVerticalBarWidth:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 396
    invoke-static {v2, v3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekSeperatorLineWidth:I

    const-string p2, "layout_inflater"

    .line 400
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 401
    sget p2, Lnet/simonvt/calendarview/R$layout;->calendar_view:I

    invoke-virtual {p1, p2, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 402
    invoke-virtual {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->addView(Landroid/view/View;)V

    const p2, 0x102000a

    .line 404
    invoke-virtual {p0, p2}, Lnet/simonvt/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    .line 405
    sget p2, Lnet/simonvt/calendarview/R$id;->cv_day_names:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 406
    sget p2, Lnet/simonvt/calendarview/R$id;->cv_month_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mMonthName:Landroid/widget/TextView;

    .line 407
    sget p1, Lnet/simonvt/calendarview/R$id;->cv_divider:I

    invoke-virtual {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->setUpHeader()V

    .line 410
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->setUpListView()V

    .line 411
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->setUpAdapter()V

    .line 414
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 415
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 416
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p3, v2, v2}, Lnet/simonvt/calendarview/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    .line 417
    :cond_5
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 418
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p3, v2, v2}, Lnet/simonvt/calendarview/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0

    .line 420
    :cond_6
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, p1, p3, v2, v2}, Lnet/simonvt/calendarview/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    .line 423
    :goto_0
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView;->invalidate()V

    return-void
.end method

.method static synthetic access$1002(Lnet/simonvt/calendarview/CalendarView;I)I
    .locals 0

    .line 78
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$1100(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mPreviousScrollState:I

    return p0
.end method

.method static synthetic access$1102(Lnet/simonvt/calendarview/CalendarView;I)I
    .locals 0

    .line 78
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$1200(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mListScrollTopOffset:I

    return p0
.end method

.method static synthetic access$1300(Lnet/simonvt/calendarview/CalendarView;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lnet/simonvt/calendarview/CalendarView;->mIsScrollingUp:Z

    return p0
.end method

.method static synthetic access$1400(Lnet/simonvt/calendarview/CalendarView;Ljava/util/Calendar;)I
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;
    .locals 0

    .line 78
    iget-object p0, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1600(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;
    .locals 0

    .line 78
    iget-object p0, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1700(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfWeek:I

    return p0
.end method

.method static synthetic access$1800(Lnet/simonvt/calendarview/CalendarView;)Landroid/widget/ListView;
    .locals 0

    .line 78
    iget-object p0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1900(Lnet/simonvt/calendarview/CalendarView;)Ljava/util/Calendar;
    .locals 0

    .line 78
    iget-object p0, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$2000(Lnet/simonvt/calendarview/CalendarView;Ljava/util/Calendar;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2100(Lnet/simonvt/calendarview/CalendarView;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lnet/simonvt/calendarview/CalendarView;->mShowWeekNumber:Z

    return p0
.end method

.method static synthetic access$2200(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mDaysPerWeek:I

    return p0
.end method

.method static synthetic access$2300(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mDateTextSize:I

    return p0
.end method

.method static synthetic access$2400(Lnet/simonvt/calendarview/CalendarView;)Z
    .locals 0

    .line 78
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->isLayoutRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedWeekBackgroundColor:I

    return p0
.end method

.method static synthetic access$2600(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekSeperatorLineWidth:I

    return p0
.end method

.method static synthetic access$2700(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mFocusedMonthDateColor:I

    return p0
.end method

.method static synthetic access$2800(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mUnfocusedMonthDateColor:I

    return p0
.end method

.method static synthetic access$2900(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekNumberColor:I

    return p0
.end method

.method static synthetic access$3000(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekSeparatorLineColor:I

    return p0
.end method

.method static synthetic access$3100(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedDateVerticalBarWidth:I

    return p0
.end method

.method static synthetic access$3200(Lnet/simonvt/calendarview/CalendarView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 78
    iget-object p0, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3300(Lnet/simonvt/calendarview/CalendarView;)I
    .locals 0

    .line 78
    iget p0, p0, Lnet/simonvt/calendarview/CalendarView;->mShownWeekCount:I

    return p0
.end method

.method static synthetic access$600(Lnet/simonvt/calendarview/CalendarView;)Lnet/simonvt/calendarview/CalendarView$OnDateChangeListener;
    .locals 0

    .line 78
    iget-object p0, p0, Lnet/simonvt/calendarview/CalendarView;->mOnDateChangeListener:Lnet/simonvt/calendarview/CalendarView$OnDateChangeListener;

    return-object p0
.end method

.method static synthetic access$700(Lnet/simonvt/calendarview/CalendarView;)Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;
    .locals 0

    .line 78
    iget-object p0, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lnet/simonvt/calendarview/CalendarView;Landroid/widget/AbsListView;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lnet/simonvt/calendarview/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$900(Lnet/simonvt/calendarview/CalendarView;Landroid/widget/AbsListView;III)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/simonvt/calendarview/CalendarView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 990
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 992
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 993
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 994
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 8

    .line 1277
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not precede toDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1282
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 1283
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    .line 1284
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    iget-object v4, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 1285
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget v4, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfWeek:I

    sub-int/2addr p1, v4

    int-to-long v4, p1

    const-wide/32 v6, 0x5265c00

    mul-long v4, v4, v6

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    const-wide/32 v2, 0x240c8400

    .line 1287
    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 6

    .line 1110
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1115
    :cond_0
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1116
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1117
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1120
    :cond_1
    iget v3, p0, Lnet/simonvt/calendarview/CalendarView;->mShownWeekCount:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eqz v1, :cond_2

    .line 1121
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v5, p0, Lnet/simonvt/calendarview/CalendarView;->mBottomBuffer:I

    if-le v1, v5, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    if-eqz p3, :cond_3

    .line 1125
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-virtual {v1, p1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 1128
    :cond_3
    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v1

    if-lt v1, v0, :cond_5

    if-gt v1, v3, :cond_5

    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_8

    .line 1157
    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_2

    .line 1134
    :cond_5
    :goto_0
    iget-object p3, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1135
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 p3, 0x5

    invoke-virtual {p1, p3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1137
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 1140
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object p3, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    .line 1143
    :cond_6
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result p1

    :goto_1
    const/4 p3, 0x2

    .line 1146
    iput p3, p0, Lnet/simonvt/calendarview/CalendarView;->mPreviousScrollState:I

    if-eqz p2, :cond_7

    .line 1148
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    iget p3, p0, Lnet/simonvt/calendarview/CalendarView;->mListScrollTopOffset:I

    const/16 p4, 0x3e8

    invoke-virtual {p2, p1, p3, p4}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_2

    .line 1151
    :cond_7
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    iget p3, p0, Lnet/simonvt/calendarview/CalendarView;->mListScrollTopOffset:I

    invoke-virtual {p2, p1, p3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1153
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, p1, v2}, Lnet/simonvt/calendarview/CalendarView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_8
    :goto_2
    return-void

    .line 1111
    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Time not between "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " and "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    .line 1112
    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private invalidateAllWeekViews()V
    .locals 3

    .line 957
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 959
    iget-object v2, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 960
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isLayoutRtl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x6

    .line 1004
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 1005
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    const/4 p2, 0x0

    .line 1191
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lnet/simonvt/calendarview/CalendarView$WeekView;

    if-nez p3, :cond_0

    return-void

    .line 1197
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p4

    invoke-virtual {p3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->getHeight()I

    move-result v0

    mul-int p4, p4, v0

    invoke-virtual {p3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->getBottom()I

    move-result v0

    sub-int/2addr p4, v0

    int-to-long v0, p4

    .line 1200
    iget-wide v2, p0, Lnet/simonvt/calendarview/CalendarView;->mPreviousScrollPosition:J

    cmp-long p4, v0, v2

    const/4 v2, 0x1

    if-gez p4, :cond_1

    .line 1201
    iput-boolean v2, p0, Lnet/simonvt/calendarview/CalendarView;->mIsScrollingUp:Z

    goto :goto_0

    .line 1202
    :cond_1
    iget-wide v3, p0, Lnet/simonvt/calendarview/CalendarView;->mPreviousScrollPosition:J

    cmp-long p4, v0, v3

    if-lez p4, :cond_c

    .line 1203
    iput-boolean p2, p0, Lnet/simonvt/calendarview/CalendarView;->mIsScrollingUp:Z

    .line 1212
    :goto_0
    invoke-virtual {p3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->getBottom()I

    move-result p4

    iget v3, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekMinVisibleHeight:I

    if-ge p4, v3, :cond_2

    const/4 p2, 0x1

    .line 1213
    :cond_2
    iget-boolean p4, p0, Lnet/simonvt/calendarview/CalendarView;->mIsScrollingUp:Z

    if-eqz p4, :cond_3

    add-int/lit8 p2, p2, 0x2

    .line 1214
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lnet/simonvt/calendarview/CalendarView$WeekView;

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 1216
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lnet/simonvt/calendarview/CalendarView$WeekView;

    .line 1221
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lnet/simonvt/calendarview/CalendarView;->mIsScrollingUp:Z

    if-eqz p1, :cond_5

    .line 1222
    invoke-virtual {p3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->getMonthOfFirstWeekDay()I

    move-result p1

    goto :goto_2

    .line 1224
    :cond_5
    invoke-virtual {p3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->getMonthOfLastWeekDay()I

    move-result p1

    .line 1229
    :goto_2
    iget p2, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentMonthDisplayed:I

    const/16 p4, 0xb

    if-ne p2, p4, :cond_6

    if-nez p1, :cond_6

    goto :goto_3

    .line 1231
    :cond_6
    iget p2, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentMonthDisplayed:I

    if-nez p2, :cond_7

    if-ne p1, p4, :cond_7

    const/4 v2, -0x1

    goto :goto_3

    .line 1234
    :cond_7
    iget p2, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentMonthDisplayed:I

    sub-int v2, p1, p2

    .line 1239
    :goto_3
    iget-boolean p1, p0, Lnet/simonvt/calendarview/CalendarView;->mIsScrollingUp:Z

    if-nez p1, :cond_8

    if-gtz v2, :cond_9

    :cond_8
    iget-boolean p1, p0, Lnet/simonvt/calendarview/CalendarView;->mIsScrollingUp:Z

    if-eqz p1, :cond_b

    if-gez v2, :cond_b

    .line 1240
    :cond_9
    invoke-virtual {p3}, Lnet/simonvt/calendarview/CalendarView$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object p1

    .line 1241
    iget-boolean p2, p0, Lnet/simonvt/calendarview/CalendarView;->mIsScrollingUp:Z

    const/4 p3, 0x5

    if-eqz p2, :cond_a

    const/4 p2, -0x7

    .line 1242
    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    :cond_a
    const/4 p2, 0x7

    .line 1244
    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->add(II)V

    .line 1246
    :goto_4
    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->setMonthDisplayed(Ljava/util/Calendar;)V

    .line 1248
    :cond_b
    iput-wide v0, p0, Lnet/simonvt/calendarview/CalendarView;->mPreviousScrollPosition:J

    .line 1249
    iget p1, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentScrollState:I

    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mPreviousScrollState:I

    return-void

    :cond_c
    return-void
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1182
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mScrollStateChangedRunnable:Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/calendarview/CalendarView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2

    .line 1169
    :try_start_0
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 1172
    :catch_0
    sget-object p2, Lnet/simonvt/calendarview/CalendarView;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in format: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MM/dd/yyyy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 970
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 974
    :cond_0
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentLocale:Ljava/util/Locale;

    .line 976
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lnet/simonvt/calendarview/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    .line 977
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lnet/simonvt/calendarview/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfMonth:Ljava/util/Calendar;

    .line 978
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lnet/simonvt/calendarview/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    .line 979
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lnet/simonvt/calendarview/CalendarView;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    return-void
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 8

    const/4 v0, 0x2

    .line 1259
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1260
    iget v1, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentMonthDisplayed:I

    if-eq v1, v0, :cond_0

    .line 1261
    iput v0, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentMonthDisplayed:I

    .line 1262
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView;->mCurrentMonthDisplayed:I

    invoke-virtual {v0, v1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->setFocusMonth(I)V

    .line 1265
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1266
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v7, 0x34

    move-wide v3, v5

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p1

    .line 1267
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    .line 1012
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;-><init>(Lnet/simonvt/calendarview/CalendarView;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    .line 1014
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    new-instance v1, Lnet/simonvt/calendarview/CalendarView$1;

    invoke-direct {v1, p0}, Lnet/simonvt/calendarview/CalendarView$1;-><init>(Lnet/simonvt/calendarview/CalendarView;)V

    invoke-virtual {v0, v1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1026
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1030
    :cond_0
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-virtual {v0}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setUpHeader()V
    .locals 8

    .line 1037
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDaysPerWeek:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDayLabels:[Ljava/lang/String;

    .line 1038
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfWeek:I

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfWeek:I

    iget v2, p0, Lnet/simonvt/calendarview/CalendarView;->mDaysPerWeek:I

    add-int/2addr v1, v2

    :goto_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x7

    goto :goto_1

    :cond_0
    move v2, v0

    .line 1040
    :goto_1
    iget-object v3, p0, Lnet/simonvt/calendarview/CalendarView;->mDayLabels:[Ljava/lang/String;

    iget v4, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfWeek:I

    sub-int v4, v0, v4

    const/16 v5, 0x32

    invoke-static {v2, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1044
    :cond_1
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1045
    iget-boolean v2, p0, Lnet/simonvt/calendarview/CalendarView;->mShowWeekNumber:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    .line 1046
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1048
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1050
    :goto_2
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v4, 0x1

    :goto_3
    if-ge v4, v0, :cond_5

    .line 1051
    iget-object v5, p0, Lnet/simonvt/calendarview/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1052
    iget v6, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekDayTextAppearanceResId:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_3

    .line 1053
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1055
    :cond_3
    iget v6, p0, Lnet/simonvt/calendarview/CalendarView;->mDaysPerWeek:I

    add-int/2addr v6, v2

    if-ge v4, v6, :cond_4

    .line 1056
    iget-object v6, p0, Lnet/simonvt/calendarview/CalendarView;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v7, v4, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1059
    :cond_4
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1062
    :cond_5
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private setUpListView()V
    .locals 2

    .line 1070
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1071
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1072
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 1073
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    new-instance v1, Lnet/simonvt/calendarview/CalendarView$2;

    invoke-direct {v1, p0}, Lnet/simonvt/calendarview/CalendarView$2;-><init>(Lnet/simonvt/calendarview/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1086
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1087
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 1088
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    :cond_0
    return-void
.end method

.method private updateDateTextSize()V
    .locals 3

    .line 946
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lnet/simonvt/calendarview/CalendarView;->mDateTextAppearanceResId:I

    sget-object v2, Lnet/simonvt/calendarview/R$styleable;->TextAppearanceCompatStyleable:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 948
    sget v1, Lnet/simonvt/calendarview/R$styleable;->TextAppearanceCompatStyleable_android_textSize:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lnet/simonvt/calendarview/CalendarView;->mDateTextSize:I

    .line 950
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 903
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-static {v0}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->access$400(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    .line 688
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 859
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    .line 510
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 784
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 732
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 637
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    .line 479
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .line 840
    iget-boolean v0, p0, Lnet/simonvt/calendarview/CalendarView;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    .line 448
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    .line 541
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    .line 662
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    .line 568
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    .line 593
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 698
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 703
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 704
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 709
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 710
    const-class v0, Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 715
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 716
    const-class v0, Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDate(J)V
    .locals 1

    const/4 v0, 0x0

    .line 920
    invoke-virtual {p0, p1, p2, v0, v0}, Lnet/simonvt/calendarview/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .locals 1

    .line 938
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 939
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->access$400(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/simonvt/calendarview/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 942
    :cond_0
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2, p4}, Lnet/simonvt/calendarview/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1

    .line 673
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 674
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mDateTextAppearanceResId:I

    .line 675
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->updateDateTextSize()V

    .line 676
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 693
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 878
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    return-void

    .line 881
    :cond_0
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mFirstDayOfWeek:I

    .line 882
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->access$500(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)V

    .line 883
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-virtual {p1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 884
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->setUpHeader()V

    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 3

    .line 490
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mFocusedMonthDateColor:I

    if-eq v0, p1, :cond_1

    .line 491
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mFocusedMonthDateColor:I

    .line 492
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 494
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/simonvt/calendarview/CalendarView$WeekView;

    .line 495
    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->access$200(Lnet/simonvt/calendarview/CalendarView$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    invoke-virtual {v1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaxDate(J)V
    .locals 2

    .line 797
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 798
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lnet/simonvt/calendarview/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 803
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->access$500(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)V

    .line 804
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->access$400(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object p1

    .line 805
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 806
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/simonvt/calendarview/CalendarView;->setDate(J)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 812
    invoke-direct {p0, p1, v0, p2, v0}, Lnet/simonvt/calendarview/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    :goto_0
    return-void
.end method

.method public setMinDate(J)V
    .locals 2

    .line 745
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 746
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lnet/simonvt/calendarview/CalendarView;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 754
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-static {p1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->access$400(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object p1

    .line 755
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 756
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 759
    :cond_1
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-static {p2}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->access$500(Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;)V

    .line 760
    iget-object p2, p0, Lnet/simonvt/calendarview/CalendarView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 761
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/simonvt/calendarview/CalendarView;->setDate(J)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 767
    invoke-direct {p0, p1, v0, p2, v0}, Lnet/simonvt/calendarview/CalendarView;->goTo(Ljava/util/Calendar;ZZZ)V

    :goto_0
    return-void
.end method

.method public setOnDateChangeListener(Lnet/simonvt/calendarview/CalendarView$OnDateChangeListener;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mOnDateChangeListener:Lnet/simonvt/calendarview/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 1

    .line 605
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 606
    invoke-virtual {p0, p1}, Lnet/simonvt/calendarview/CalendarView;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 618
    iget-object v0, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 619
    iput-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 620
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 622
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/simonvt/calendarview/CalendarView$WeekView;

    .line 623
    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->access$100(Lnet/simonvt/calendarview/CalendarView$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {v1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 3

    .line 459
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedWeekBackgroundColor:I

    if-eq v0, p1, :cond_1

    .line 460
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mSelectedWeekBackgroundColor:I

    .line 461
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 463
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/simonvt/calendarview/CalendarView$WeekView;

    .line 464
    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->access$100(Lnet/simonvt/calendarview/CalendarView$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {v1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1

    .line 824
    iget-boolean v0, p0, Lnet/simonvt/calendarview/CalendarView;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 827
    :cond_0
    iput-boolean p1, p0, Lnet/simonvt/calendarview/CalendarView;->mShowWeekNumber:Z

    .line 828
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mAdapter:Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;

    invoke-virtual {p1}, Lnet/simonvt/calendarview/CalendarView$WeeksAdapter;->notifyDataSetChanged()V

    .line 829
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->setUpHeader()V

    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 1

    .line 434
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mShownWeekCount:I

    if-eq v0, p1, :cond_0

    .line 435
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mShownWeekCount:I

    .line 436
    invoke-virtual {p0}, Lnet/simonvt/calendarview/CalendarView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 3

    .line 521
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mUnfocusedMonthDateColor:I

    if-eq v0, p1, :cond_1

    .line 522
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mUnfocusedMonthDateColor:I

    .line 523
    iget-object p1, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 525
    iget-object v1, p0, Lnet/simonvt/calendarview/CalendarView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/simonvt/calendarview/CalendarView$WeekView;

    .line 526
    invoke-static {v1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->access$300(Lnet/simonvt/calendarview/CalendarView$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {v1}, Lnet/simonvt/calendarview/CalendarView$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1

    .line 648
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    .line 649
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekDayTextAppearanceResId:I

    .line 650
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->setUpHeader()V

    :cond_0
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1

    .line 552
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekNumberColor:I

    if-eq v0, p1, :cond_0

    .line 553
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekNumberColor:I

    .line 554
    iget-boolean p1, p0, Lnet/simonvt/calendarview/CalendarView;->mShowWeekNumber:Z

    if-eqz p1, :cond_0

    .line 555
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1

    .line 579
    iget v0, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_0

    .line 580
    iput p1, p0, Lnet/simonvt/calendarview/CalendarView;->mWeekSeparatorLineColor:I

    .line 581
    invoke-direct {p0}, Lnet/simonvt/calendarview/CalendarView;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method
