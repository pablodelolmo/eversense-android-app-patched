.class public Lnet/simonvt/datepicker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/datepicker/DatePicker$SavedState;,
        Lnet/simonvt/datepicker/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final LOG_TAG:Ljava/lang/String; = "DatePicker"


# instance fields
.field private final mCalendarView:Lnet/simonvt/calendarview/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Lnet/simonvt/datepicker/DatePicker$OnDateChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lnet/simonvt/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 155
    sget v0, Lnet/simonvt/datepicker/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lnet/simonvt/datepicker/DatePicker;->mIsEnabled:Z

    .line 162
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/simonvt/datepicker/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 164
    sget-object v1, Lnet/simonvt/datepicker/R$styleable;->DatePicker:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 166
    sget p3, Lnet/simonvt/datepicker/R$styleable;->DatePicker_dp_spinnersShown:I

    .line 167
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 169
    sget v1, Lnet/simonvt/datepicker/R$styleable;->DatePicker_dp_calendarViewShown:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 172
    sget v3, Lnet/simonvt/datepicker/R$styleable;->DatePicker_dp_startYear:I

    const/16 v4, 0x76c

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 174
    sget v4, Lnet/simonvt/datepicker/R$styleable;->DatePicker_dp_endYear:I

    const/16 v5, 0x834

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 176
    sget v5, Lnet/simonvt/datepicker/R$styleable;->DatePicker_dp_minDate:I

    .line 177
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 178
    sget v6, Lnet/simonvt/datepicker/R$styleable;->DatePicker_dp_maxDate:I

    .line 179
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    sget v7, Lnet/simonvt/datepicker/R$styleable;->DatePicker_dp_internalLayout:I

    sget v8, Lnet/simonvt/datepicker/R$layout;->date_picker_holo:I

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 183
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "layout_inflater"

    .line 186
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 187
    invoke-virtual {p1, v7, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 189
    new-instance p1, Lnet/simonvt/datepicker/DatePicker$1;

    invoke-direct {p1, p0}, Lnet/simonvt/datepicker/DatePicker$1;-><init>(Lnet/simonvt/datepicker/DatePicker;)V

    .line 229
    sget p2, Lnet/simonvt/datepicker/R$id;->pickers:I

    invoke-virtual {p0, p2}, Lnet/simonvt/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 232
    sget p2, Lnet/simonvt/datepicker/R$id;->calendar_view:I

    invoke-virtual {p0, p2}, Lnet/simonvt/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lnet/simonvt/calendarview/CalendarView;

    iput-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    .line 233
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    new-instance v7, Lnet/simonvt/datepicker/DatePicker$2;

    invoke-direct {v7, p0}, Lnet/simonvt/datepicker/DatePicker$2;-><init>(Lnet/simonvt/datepicker/DatePicker;)V

    .line 234
    invoke-virtual {p2, v7}, Lnet/simonvt/calendarview/CalendarView;->setOnDateChangeListener(Lnet/simonvt/calendarview/CalendarView$OnDateChangeListener;)V

    .line 244
    sget p2, Lnet/simonvt/datepicker/R$id;->day:I

    invoke-virtual {p0, p2}, Lnet/simonvt/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    .line 245
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {}, Lnet/simonvt/numberpicker/NumberPicker;->getTwoDigitFormatter()Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    move-result-object v7

    invoke-virtual {p2, v7}, Lnet/simonvt/numberpicker/NumberPicker;->setFormatter(Lnet/simonvt/numberpicker/NumberPicker$Formatter;)V

    .line 246
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const-wide/16 v7, 0x64

    invoke-virtual {p2, v7, v8}, Lnet/simonvt/numberpicker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 247
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    .line 248
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    sget v9, Lnet/simonvt/datepicker/R$id;->np__numberpicker_input:I

    .line 249
    invoke-virtual {p2, v9}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 250
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 251
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 253
    sget p2, Lnet/simonvt/datepicker/R$id;->month:I

    invoke-virtual {p0, p2}, Lnet/simonvt/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    .line 254
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 255
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget v9, p0, Lnet/simonvt/datepicker/DatePicker;->mNumberOfMonths:I

    sub-int/2addr v9, v0

    invoke-virtual {p2, v9}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 256
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v9, p0, Lnet/simonvt/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {p2, v9}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const-wide/16 v9, 0xc8

    invoke-virtual {p2, v9, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 258
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    .line 259
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    sget v9, Lnet/simonvt/datepicker/R$id;->np__numberpicker_input:I

    .line 260
    invoke-virtual {p2, v9}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 261
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 262
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 264
    sget p2, Lnet/simonvt/datepicker/R$id;->year:I

    invoke-virtual {p0, p2}, Lnet/simonvt/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    .line 265
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2, v7, v8}, Lnet/simonvt/numberpicker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 266
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    .line 267
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    sget p2, Lnet/simonvt/datepicker/R$id;->np__numberpicker_input:I

    .line 268
    invoke-virtual {p1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 269
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 270
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    if-nez p3, :cond_0

    if-nez v1, :cond_0

    .line 274
    invoke-virtual {p0, v0}, Lnet/simonvt/datepicker/DatePicker;->setSpinnersShown(Z)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0, p3}, Lnet/simonvt/datepicker/DatePicker;->setSpinnersShown(Z)V

    .line 277
    invoke-virtual {p0, v1}, Lnet/simonvt/datepicker/DatePicker;->setCalendarViewShown(Z)V

    .line 281
    :goto_0
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 282
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 283
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v5, p1}, Lnet/simonvt/datepicker/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 284
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v3, v2, v0}, Ljava/util/Calendar;->set(III)V

    goto :goto_1

    .line 287
    :cond_1
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v3, v2, v0}, Ljava/util/Calendar;->set(III)V

    .line 289
    :cond_2
    :goto_1
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/simonvt/datepicker/DatePicker;->setMinDate(J)V

    .line 292
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 293
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 p2, 0x1f

    const/16 p3, 0xb

    if-nez p1, :cond_3

    .line 294
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v6, p1}, Lnet/simonvt/datepicker/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 295
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4, p3, p2}, Ljava/util/Calendar;->set(III)V

    goto :goto_2

    .line 298
    :cond_3
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4, p3, p2}, Ljava/util/Calendar;->set(III)V

    .line 300
    :cond_4
    :goto_2
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/simonvt/datepicker/DatePicker;->setMaxDate(J)V

    .line 303
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 304
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    .line 305
    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, p1, p2, p3, v1}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    .line 308
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->reorderSpinners()V

    .line 311
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->setContentDescriptions()V

    .line 314
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_5

    .line 315
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 316
    invoke-virtual {p0, v0}, Lnet/simonvt/datepicker/DatePicker;->setImportantForAccessibility(I)V

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lnet/simonvt/datepicker/DatePicker;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 75
    iget-object p0, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 75
    iget-object p0, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$300(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;
    .locals 0

    .line 75
    iget-object p0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    return-object p0
.end method

.method static synthetic access$400(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;
    .locals 0

    .line 75
    iget-object p0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;
    .locals 0

    .line 75
    iget-object p0, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    return-object p0
.end method

.method static synthetic access$600(Lnet/simonvt/datepicker/DatePicker;III)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lnet/simonvt/datepicker/DatePicker;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Lnet/simonvt/datepicker/DatePicker;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$900(Lnet/simonvt/datepicker/DatePicker;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 535
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 537
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 538
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 539
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method private isNewDate(III)Z
    .locals 2

    .line 654
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    .line 655
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 p3, 0x5

    .line 656
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 4

    const/4 v0, 0x4

    .line 750
    invoke-virtual {p0, v0}, Lnet/simonvt/datepicker/DatePicker;->sendAccessibilityEvent(I)V

    .line 751
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mOnDateChangedListener:Lnet/simonvt/datepicker/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mOnDateChangedListener:Lnet/simonvt/datepicker/DatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v2

    .line 753
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result v3

    .line 752
    invoke-interface {v0, p0, v1, v2, v3}, Lnet/simonvt/datepicker/DatePicker$OnDateChangedListener;->onDateChanged(Lnet/simonvt/datepicker/DatePicker;III)V

    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2

    .line 645
    :try_start_0
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 648
    :catch_0
    sget-object p2, Lnet/simonvt/datepicker/DatePicker;->LOG_TAG:Ljava/lang/String;

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

.method private reorderSpinners()V
    .locals 5

    .line 550
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 551
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 552
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 554
    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x64

    if-eq v3, v4, :cond_1

    const/16 v4, 0x79

    if-eq v3, v4, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 564
    :cond_0
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lnet/simonvt/datepicker/DatePicker;->setImeOptions(Lnet/simonvt/numberpicker/NumberPicker;II)V

    goto :goto_1

    .line 556
    :cond_1
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 557
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lnet/simonvt/datepicker/DatePicker;->setImeOptions(Lnet/simonvt/numberpicker/NumberPicker;II)V

    goto :goto_1

    .line 560
    :cond_2
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 561
    iget-object v3, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lnet/simonvt/datepicker/DatePicker;->setImeOptions(Lnet/simonvt/numberpicker/NumberPicker;II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setContentDescriptions()V
    .locals 0

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 3

    .line 505
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 509
    :cond_0
    iput-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 511
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lnet/simonvt/datepicker/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    .line 512
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lnet/simonvt/datepicker/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    .line 513
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lnet/simonvt/datepicker/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 514
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lnet/simonvt/datepicker/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 516
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/simonvt/datepicker/DatePicker;->mNumberOfMonths:I

    .line 517
    iget p1, p0, Lnet/simonvt/datepicker/DatePicker;->mNumberOfMonths:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 518
    :goto_0
    iget v0, p0, Lnet/simonvt/datepicker/DatePicker;->mNumberOfMonths:I

    if-ge p1, v0, :cond_1

    .line 519
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x0

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDate(III)V
    .locals 1

    .line 660
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 661
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 662
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 663
    :cond_0
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 664
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setImeOptions(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    .line 775
    :goto_0
    sget p3, Lnet/simonvt/datepicker/R$id;->np__numberpicker_input:I

    .line 776
    invoke-virtual {p1, p3}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 777
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 0

    .line 802
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 804
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    .line 722
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lnet/simonvt/calendarview/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 816
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 817
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 819
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 821
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 822
    :cond_0
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 824
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 825
    :cond_1
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 826
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 827
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 7

    .line 670
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v6, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 672
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v6, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 673
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 672
    invoke-virtual {v0, v6}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 674
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 675
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 677
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 678
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 677
    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 679
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 680
    :cond_0
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v6, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v6, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 682
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v6

    .line 681
    invoke-virtual {v0, v6}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 683
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v6, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 684
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 685
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 687
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    .line 686
    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 688
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 689
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 692
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v6, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 693
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 692
    invoke-virtual {v0, v6}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 694
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 695
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 697
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 698
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 703
    :goto_0
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    .line 704
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v6, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v6}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v6

    add-int/2addr v6, v5

    .line 703
    invoke-static {v0, v1, v6}, Lnet/simonvt/datepicker/CVArrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 705
    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 709
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 710
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 713
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 714
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 715
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 416
    invoke-virtual {p0, p1}, Lnet/simonvt/datepicker/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 597
    invoke-virtual {p0, p1}, Lnet/simonvt/datepicker/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCalendarView()Lnet/simonvt/calendarview/CalendarView;
    .locals 1

    .line 466
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .line 456
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0}, Lnet/simonvt/calendarview/CalendarView;->isShown()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 743
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 369
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0}, Lnet/simonvt/calendarview/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 331
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0}, Lnet/simonvt/calendarview/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .line 736
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 485
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 729
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 0

    .line 631
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->setDate(III)V

    .line 632
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateSpinners()V

    .line 633
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateCalendarView()V

    .line 634
    iput-object p4, p0, Lnet/simonvt/datepicker/DatePicker;->mOnDateChangedListener:Lnet/simonvt/datepicker/DatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lnet/simonvt/datepicker/DatePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 445
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 446
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lnet/simonvt/datepicker/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 433
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 434
    const-class v0, Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 439
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 440
    const-class v0, Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 422
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 426
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 427
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    .line 426
    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 609
    check-cast p1, Lnet/simonvt/datepicker/DatePicker$SavedState;

    .line 610
    invoke-virtual {p1}, Lnet/simonvt/datepicker/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 611
    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker$SavedState;->access$1100(Lnet/simonvt/datepicker/DatePicker$SavedState;)I

    move-result v0

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker$SavedState;->access$1200(Lnet/simonvt/datepicker/DatePicker$SavedState;)I

    move-result v1

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker$SavedState;->access$1300(Lnet/simonvt/datepicker/DatePicker$SavedState;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lnet/simonvt/datepicker/DatePicker;->setDate(III)V

    .line 612
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateSpinners()V

    .line 613
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateCalendarView()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 602
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 603
    new-instance v6, Lnet/simonvt/datepicker/DatePicker$SavedState;

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v3

    .line 604
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/simonvt/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILnet/simonvt/datepicker/DatePicker$1;)V

    return-object v6
.end method

.method public setCalendarViewShown(Z)V
    .locals 1

    .line 476
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lnet/simonvt/calendarview/CalendarView;->setVisibility(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 398
    iget-boolean v0, p0, Lnet/simonvt/datepicker/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 402
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mDaySpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setEnabled(Z)V

    .line 403
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMonthSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setEnabled(Z)V

    .line 404
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mYearSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0, p1}, Lnet/simonvt/calendarview/CalendarView;->setEnabled(Z)V

    .line 406
    iput-boolean p1, p0, Lnet/simonvt/datepicker/DatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 381
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 382
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    .line 383
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 384
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 388
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/calendarview/CalendarView;->setMaxDate(J)V

    .line 389
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 390
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 391
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateCalendarView()V

    .line 393
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 343
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 344
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x6

    .line 345
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    .line 346
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 350
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mCalendarView:Lnet/simonvt/calendarview/CalendarView;

    invoke-virtual {v0, p1, p2}, Lnet/simonvt/calendarview/CalendarView;->setMinDate(J)V

    .line 351
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 352
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 353
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateCalendarView()V

    .line 355
    :cond_1
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1

    .line 495
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 584
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->setDate(III)V

    .line 588
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateSpinners()V

    .line 589
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->updateCalendarView()V

    .line 590
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method
