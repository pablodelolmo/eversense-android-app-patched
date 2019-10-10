.class public Lnet/simonvt/timepicker/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/timepicker/TimePicker$SavedState;,
        Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Landroid/widget/TextView;

.field private final mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lnet/simonvt/timepicker/TimePicker$1;

    invoke-direct {v0}, Lnet/simonvt/timepicker/TimePicker$1;-><init>()V

    sput-object v0, Lnet/simonvt/timepicker/TimePicker;->NO_OP_CHANGE_LISTENER:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lnet/simonvt/timepicker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 132
    sget v0, Lnet/simonvt/timepicker/R$attr;->timePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lnet/simonvt/timepicker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 102
    iput-boolean p2, p0, Lnet/simonvt/timepicker/TimePicker;->mIsEnabled:Z

    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lnet/simonvt/timepicker/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 147
    sget p3, Lnet/simonvt/timepicker/R$layout;->time_picker_holo:I

    const-string v0, "layout_inflater"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 151
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 154
    sget p1, Lnet/simonvt/timepicker/R$id;->hour:I

    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    .line 155
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    new-instance p3, Lnet/simonvt/timepicker/TimePicker$2;

    invoke-direct {p3, p0}, Lnet/simonvt/timepicker/TimePicker$2;-><init>(Lnet/simonvt/timepicker/TimePicker;)V

    .line 156
    invoke-virtual {p1, p3}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    .line 170
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    sget p3, Lnet/simonvt/timepicker/R$id;->np__numberpicker_input:I

    .line 171
    invoke-virtual {p1, p3}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 172
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 173
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 176
    sget p1, Lnet/simonvt/timepicker/R$id;->divider:I

    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mDivider:Landroid/widget/TextView;

    .line 177
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mDivider:Landroid/widget/TextView;

    sget v1, Lnet/simonvt/timepicker/R$string;->time_picker_separator:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :cond_0
    sget p1, Lnet/simonvt/timepicker/R$id;->minute:I

    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    .line 183
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 184
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 185
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v1, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 186
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {}, Lnet/simonvt/numberpicker/NumberPicker;->getTwoDigitFormatter()Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setFormatter(Lnet/simonvt/numberpicker/NumberPicker$Formatter;)V

    .line 187
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    new-instance v1, Lnet/simonvt/timepicker/TimePicker$3;

    invoke-direct {v1, p0}, Lnet/simonvt/timepicker/TimePicker$3;-><init>(Lnet/simonvt/timepicker/TimePicker;)V

    .line 188
    invoke-virtual {p1, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    .line 213
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    sget v1, Lnet/simonvt/timepicker/R$id;->np__numberpicker_input:I

    .line 214
    invoke-virtual {p1, v1}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 215
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 216
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 219
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 222
    sget p1, Lnet/simonvt/timepicker/R$id;->amPm:I

    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 223
    instance-of p3, p1, Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 224
    iput-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    .line 225
    iput-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 226
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 227
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance p3, Lnet/simonvt/timepicker/TimePicker$4;

    invoke-direct {p3, p0}, Lnet/simonvt/timepicker/TimePicker$4;-><init>(Lnet/simonvt/timepicker/TimePicker;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 236
    :cond_1
    iput-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 237
    check-cast p1, Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    .line 238
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 239
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 240
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object p3, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p1, p3}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    new-instance p3, Lnet/simonvt/timepicker/TimePicker$5;

    invoke-direct {p3, p0}, Lnet/simonvt/timepicker/TimePicker$5;-><init>(Lnet/simonvt/timepicker/TimePicker;)V

    .line 242
    invoke-virtual {p1, p3}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    .line 252
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    sget p3, Lnet/simonvt/timepicker/R$id;->np__numberpicker_input:I

    .line 253
    invoke-virtual {p1, p3}, Lnet/simonvt/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 254
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 p3, 0x6

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 255
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 259
    :goto_0
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->updateHourControl()V

    .line 260
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->updateAmPmControl()V

    .line 262
    sget-object p1, Lnet/simonvt/timepicker/TimePicker;->NO_OP_CHANGE_LISTENER:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->setOnTimeChangedListener(Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;)V

    .line 265
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xb

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 266
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 p3, 0xc

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 268
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 269
    invoke-virtual {p0, v0}, Lnet/simonvt/timepicker/TimePicker;->setEnabled(Z)V

    .line 273
    :cond_2
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->setContentDescriptions()V

    .line 276
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p1, p3, :cond_3

    .line 277
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 278
    invoke-virtual {p0, p2}, Lnet/simonvt/timepicker/TimePicker;->setImportantForAccessibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lnet/simonvt/timepicker/TimePicker;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lnet/simonvt/timepicker/TimePicker;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lnet/simonvt/timepicker/TimePicker;->mIsAm:Z

    return p0
.end method

.method static synthetic access$102(Lnet/simonvt/timepicker/TimePicker;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lnet/simonvt/timepicker/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Lnet/simonvt/timepicker/TimePicker;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Lnet/simonvt/timepicker/TimePicker;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Lnet/simonvt/timepicker/TimePicker;)Lnet/simonvt/numberpicker/NumberPicker;
    .locals 0

    .line 59
    iget-object p0, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lnet/simonvt/timepicker/TimePicker;)Lnet/simonvt/numberpicker/NumberPicker;
    .locals 0

    .line 59
    iget-object p0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    return-object p0
.end method

.method private onTimeChanged()V
    .locals 3

    const/4 v0, 0x4

    .line 557
    invoke-virtual {p0, v0}, Lnet/simonvt/timepicker/TimePicker;->sendAccessibilityEvent(I)V

    .line 558
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mOnTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mOnTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 560
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 559
    invoke-interface {v0, p0, v1, v2}, Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;->onTimeChanged(Lnet/simonvt/timepicker/TimePicker;II)V

    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 0

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 322
    :cond_0
    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 323
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 0

    .line 589
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .line 537
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 544
    :cond_1
    iget-boolean v0, p0, Lnet/simonvt/timepicker/TimePicker;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    .line 545
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 546
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 547
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 549
    :cond_2
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x4

    .line 553
    invoke-virtual {p0, v0}, Lnet/simonvt/timepicker/TimePicker;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 2

    .line 525
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 527
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 528
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {}, Lnet/simonvt/numberpicker/NumberPicker;->getTwoDigitFormatter()Lnet/simonvt/numberpicker/NumberPicker$Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setFormatter(Lnet/simonvt/numberpicker/NumberPicker$Formatter;)V

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 531
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 532
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->setFormatter(Lnet/simonvt/numberpicker/NumberPicker$Formatter;)V

    :goto_0
    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 603
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 604
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 606
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 608
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 609
    :cond_0
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 611
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 612
    :cond_1
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 613
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 614
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 491
    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getBaseline()I
    .locals 1

    .line 486
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .line 403
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    .line 404
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 406
    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/timepicker/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 407
    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 409
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .line 470
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .line 463
    iget-boolean v0, p0, Lnet/simonvt/timepicker/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lnet/simonvt/timepicker/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 308
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 309
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 514
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 515
    const-class v0, Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 520
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 521
    const-class v0, Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 497
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 500
    iget-boolean v0, p0, Lnet/simonvt/timepicker/TimePicker;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    .line 505
    :goto_0
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 506
    iget-object v1, p0, Lnet/simonvt/timepicker/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 507
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/simonvt/timepicker/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    .line 508
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 507
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 382
    check-cast p1, Lnet/simonvt/timepicker/TimePicker$SavedState;

    .line 383
    invoke-virtual {p1}, Lnet/simonvt/timepicker/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 384
    invoke-virtual {p1}, Lnet/simonvt/timepicker/TimePicker$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 385
    invoke-virtual {p1}, Lnet/simonvt/timepicker/TimePicker$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 376
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 377
    new-instance v1, Lnet/simonvt/timepicker/TimePicker$SavedState;

    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lnet/simonvt/timepicker/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILnet/simonvt/timepicker/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 418
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 421
    :cond_0
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 423
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lnet/simonvt/timepicker/TimePicker;->mIsAm:Z

    .line 425
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 426
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 429
    iput-boolean v0, p0, Lnet/simonvt/timepicker/TimePicker;->mIsAm:Z

    .line 430
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 434
    :cond_2
    :goto_0
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->updateAmPmControl()V

    .line 436
    :cond_3
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 437
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->onTimeChanged()V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    .line 477
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 481
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->onTimeChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 284
    iget-boolean v0, p0, Lnet/simonvt/timepicker/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mMinuteSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 292
    :cond_1
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mHourSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmSpinner:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setEnabled(Z)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    :goto_0
    iput-boolean p1, p0, Lnet/simonvt/timepicker/TimePicker;->mIsEnabled:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    .line 447
    iget-boolean v0, p0, Lnet/simonvt/timepicker/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/simonvt/timepicker/TimePicker;->mIs24HourView:Z

    .line 452
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 453
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->updateHourControl()V

    .line 455
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 456
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method public setOnTimeChangedListener(Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker;->mOnTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    return-void
.end method
