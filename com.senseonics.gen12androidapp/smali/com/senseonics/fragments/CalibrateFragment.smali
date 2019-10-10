.class public Lcom/senseonics/fragments/CalibrateFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "CalibrateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;,
        Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;
    }
.end annotation


# static fields
.field private static CALIBRATION_VIEW_REFRESH_INTERVAL:I = 0x1d4c0


# instance fields
.field private arrowTips:Landroid/widget/ImageView;

.field private currentDate:Ljava/util/Calendar;

.field private dialog:Landroid/app/Dialog;

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private glucoseLevel:I

.field private glucosePicker:Landroid/widget/RelativeLayout;

.field private glucoseTextView:Landroid/widget/TextView;

.field private glucoseValueSelected:Ljava/lang/Boolean;

.field private glucoseValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private glucoseValuesMg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private glucose_label:Landroid/widget/TextView;

.field private glucose_selection_label:Landroid/widget/TextView;

.field private manager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

.field private nextScheduleTextView:Landroid/widget/TextView;

.field private notesEditText:Landroid/widget/EditText;

.field private notesLabel:Landroid/widget/TextView;

.field private notesLayout:Landroid/widget/RelativeLayout;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sensorDaysSinceInsertionTextView:Landroid/widget/TextView;

.field private startDate:Ljava/util/Calendar;

.field private startingText:Ljava/lang/String;

.field private timePicker:Landroid/widget/RelativeLayout;

.field private timeTextView:Landroid/widget/TextView;

.field private timeValueSelected:Ljava/lang/Boolean;

.field private time_label:Landroid/widget/TextView;

.field private time_selection_label:Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;

.field private tipsIsShowing:Z

.field private tvReadyForCalibration:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    const-string v0, "-----"

    .line 84
    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/CalibrateFragment;->clearEditTextFocusAndHideKeyboard(Landroid/widget/EditText;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/app/Dialog;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/senseonics/fragments/CalibrateFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/senseonics/fragments/CalibrateFragment;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/senseonics/fragments/CalibrateFragment;I)I
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->getPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/senseonics/fragments/CalibrateFragment;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/senseonics/fragments/CalibrateFragment;Z)Z
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->arrowTips:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->fetchCalibrationStatus()V

    return-void
.end method

.method static synthetic access$1700(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeTextView()V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/CalibrateFragment;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    return p0
.end method

.method static synthetic access$202(Lcom/senseonics/fragments/CalibrateFragment;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/widget/EditText;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/fragments/CalibrateFragment;)Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->manager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/senseonics/fragments/CalibrateFragment;Ljava/util/Calendar;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeWithCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$600(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$802(Lcom/senseonics/fragments/CalibrateFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValueSelected:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/senseonics/fragments/CalibrateFragment;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->updateGlucoseTextWithString(Ljava/lang/String;)V

    return-void
.end method

.method private cancelRefreshTimer()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 862
    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private checkIfSubmitButtonNeedEnable()V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    if-eq v1, v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->enableSubmitButton()V

    goto :goto_0

    .line 610
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->disableSubmitButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearEditTextFocusAndHideKeyboard(Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .line 867
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 868
    invoke-direct {p0, p2}, Lcom/senseonics/fragments/CalibrateFragment;->hideKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method private disablePickersAndBottomLayout()V
    .locals 2

    .line 330
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->disableSubmitButton()V

    .line 333
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 334
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 335
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 337
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 338
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 339
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 342
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 346
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 349
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    .line 350
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method private disableSubmitButton()V
    .locals 4

    .line 287
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/MainActivity;

    const v2, 0x7f060065

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    .line 289
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 291
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne v0, v1, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    .line 296
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 298
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private enablePickersAndBottomLayout()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 307
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 308
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 310
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 311
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 312
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 315
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 319
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 322
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->startBlinkTextView(Landroid/widget/TextView;)V

    .line 323
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->startBlinkTextView(Landroid/widget/TextView;)V

    .line 326
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->checkIfSubmitButtonNeedEnable()V

    return-void
.end method

.method private enableSubmitButton()V
    .locals 4

    .line 269
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/MainActivity;

    const v2, 0x106000b

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    .line 271
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 273
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne v0, v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    .line 278
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 280
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private fetchCalibrationStatus()V
    .locals 6

    .line 921
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 924
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 925
    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$9;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/CalibrateFragment$9;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x6

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 932
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->postCalibrationRequests()V

    :cond_0
    return-void
.end method

.method private getPosition(I)I
    .locals 5

    .line 768
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    .line 769
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValuesMg:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, "GlucosePicker"

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glucose level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p1, p1

    .line 772
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 775
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 774
    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private hideKeyboard(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "input_method"

    .line 872
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 873
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 875
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initBottomLayout(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0902b3

    .line 782
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090062

    .line 784
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->arrowTips:Landroid/widget/ImageView;

    const v1, 0x7f0902b5

    .line 785
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0902b4

    .line 786
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f0f025d

    .line 787
    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    new-instance p1, Lcom/senseonics/fragments/CalibrateFragment$8;

    invoke-direct {p1, p0, v1}, Lcom/senseonics/fragments/CalibrateFragment$8;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initGlucosePicker(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090122

    .line 714
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    const v0, 0x7f090121

    .line 715
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    .line 717
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result p1

    .line 718
    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    if-lt p1, v0, :cond_0

    sget v0, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    if-gt p1, v0, :cond_0

    .line 720
    iput p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    goto :goto_0

    .line 722
    :cond_0
    sget p1, Lcom/senseonics/util/Utils;->GLUCOSE_DEFAULT_LEVEL:I

    iput p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    .line 725
    :goto_0
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValuesMg:Ljava/util/ArrayList;

    .line 727
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p1, v0, :cond_1

    .line 728
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    goto :goto_1

    .line 731
    :cond_1
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v0

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    int-to-float v1, v1

    .line 732
    invoke-static {v1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    .line 731
    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(FFF)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    .line 734
    :goto_1
    new-instance p1, Lcom/senseonics/fragments/CalibrateFragment$6;

    invoke-direct {p1, p0}, Lcom/senseonics/fragments/CalibrateFragment$6;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    const/4 v0, 0x0

    .line 747
    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->updateGlucoseTextWithString(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/fragments/CalibrateFragment$7;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTimePicker(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0902af

    .line 660
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902ae

    .line 661
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    .line 663
    new-instance p1, Lcom/senseonics/fragments/CalibrateFragment$4;

    invoke-direct {p1, p0}, Lcom/senseonics/fragments/CalibrateFragment$4;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    .line 671
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeTextView()V

    .line 673
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/fragments/CalibrateFragment$5;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/util/dialogs/DateDialogManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private postCalibrationRequests()V
    .locals 1

    .line 909
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetModelValues()V

    .line 911
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/ServiceActivity;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/ServiceActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postNextCalibrationDate()V

    .line 913
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postNextCalibrationTime()V

    .line 914
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postMinutesRemainingUntilCalibrationAllowed()V

    .line 915
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postMinutesBeforeNextCalibrationTime()V

    .line 916
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postMinutesAfterNextCalibrationTime()V

    .line 917
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadyForCalibration()V

    return-void
.end method

.method private printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 3

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 355
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 356
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 357
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    .line 358
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    .line 359
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    .line 360
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 354
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetModelValues()V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setNextScheduledCalibration(Ljava/util/Calendar;)V

    .line 902
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setMinutesBeforeNextCalibrationTime(I)V

    .line 903
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setMinutesAfterNextCalibrationTime(I)V

    .line 904
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setMinutesRemainingUntilCalibrationAllowed(I)V

    .line 905
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setReadyForCalibrationState(I)V

    return-void
.end method

.method private resetViewAndRefreshTimer()V
    .locals 7

    .line 847
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->cancelRefreshTimer()V

    .line 849
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetModelValues()V

    .line 850
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    .line 852
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    .line 853
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/fragments/CalibrateFragment$1;)V

    sget v0, Lcom/senseonics/fragments/CalibrateFragment;->CALIBRATION_VIEW_REFRESH_INTERVAL:I

    int-to-long v5, v0

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private setTextViewToBlackText(Landroid/widget/TextView;)V
    .locals 2

    .line 259
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTextViewToGrayText(Landroid/widget/TextView;)V
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060065

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3

    .line 211
    instance-of v0, p2, Landroid/widget/EditText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    if-eq p2, v0, :cond_0

    .line 212
    new-instance v0, Lcom/senseonics/fragments/CalibrateFragment$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/senseonics/fragments/CalibrateFragment$2;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 221
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    if-eq p2, v0, :cond_1

    const/4 v0, 0x0

    .line 222
    :goto_0
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 223
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 224
    invoke-direct {p0, p1, v1, p3}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupSubmitEvent()V
    .locals 3

    .line 232
    new-instance v0, Lcom/senseonics/fragments/CalibrateFragment$3;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/CalibrateFragment$3;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    .line 246
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    if-ne v1, v2, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/MainActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne v1, v2, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V
    .locals 4

    .line 972
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/CalibrationHelper;->getTitleForCalibrationUseFlag(I)Ljava/lang/String;

    move-result-object v0

    .line 973
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result p1

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, p1, p2, v2}, Lcom/senseonics/model/CalibrationHelper;->getTextForCalibrationUseFlag(IILcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object p1

    .line 974
    iget-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0, p1}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startBlinkTextView(Landroid/widget/TextView;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 617
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v1, 0x14

    .line 621
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 v1, 0x2

    .line 622
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v1, -0x1

    .line 623
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 625
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 627
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 628
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private stopBlinkTextView(Landroid/widget/TextView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 635
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method private suggestedUserAction()Ljava/lang/String;
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesRemainingUntilCalibrationAllowed()I

    move-result v0

    if-lez v0, :cond_0

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 491
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x5

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_2

    const v1, 0x7f0f01b4

    .line 500
    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%d"

    .line 501
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f0f028e

    .line 503
    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%d"

    .line 504
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private testCalAcceptRejectPopups()V
    .locals 3

    .line 954
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->UNKNOWN_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 955
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 956
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->OTHER_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 957
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_LED_DISCONNECT:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 958
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->AUTO_LINK_MODE_ACTIVE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 959
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 960
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 961
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 962
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INVALID_TIME:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 963
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_RAPID_CHANGE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 964
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_HIGH_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0x191

    invoke-direct {p0, v0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 965
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_LOW_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0x27

    invoke-direct {p0, v0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 966
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0x12c

    invoke-direct {p0, v0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 967
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 968
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    return-void
.end method

.method private updateGlucoseTextWithString(Ljava/lang/String;)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValueSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 707
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->checkIfSubmitButtonNeedEnable()V

    return-void
.end method

.method private updateTimeTextView()V
    .locals 4

    .line 640
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    .line 642
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 641
    invoke-static {v1, v2, v3}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->checkIfSubmitButtonNeedEnable()V

    return-void
.end method

.method private updateTimeWithCalendar(Ljava/util/Calendar;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    const/4 p1, 0x1

    .line 655
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    .line 656
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeTextView()V

    return-void
.end method


# virtual methods
.method public getTimer()Ljava/util/Timer;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 148
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getCalibrateLayout()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 150
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f100145

    invoke-direct {p2, p3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 151
    iget-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f080099

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->startDate:Ljava/util/Calendar;

    const/4 p2, 0x0

    .line 157
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValueSelected:Ljava/lang/Boolean;

    .line 158
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    .line 160
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->initTimePicker(Landroid/view/View;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->initGlucosePicker(Landroid/view/View;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->initBottomLayout(Landroid/view/View;)V

    const v0, 0x7f0901d6

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    const v0, 0x7f090240

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->sensorDaysSinceInsertionTextView:Landroid/widget/TextView;

    const v0, 0x7f0902b2

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_label:Landroid/widget/TextView;

    const v0, 0x7f090126

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_label:Landroid/widget/TextView;

    const v0, 0x7f0902ae

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_selection_label:Landroid/widget/TextView;

    const v0, 0x7f090121

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_selection_label:Landroid/widget/TextView;

    const v0, 0x7f0902d1

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v0, 0x7f0901de

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLabel:Landroid/widget/TextView;

    const v0, 0x7f0901df

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901dd

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    .line 185
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 186
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 192
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f09011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-direct {p0, p3, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    .line 193
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-class v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-ne p3, v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-direct {p0, p3, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-class v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne p3, v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-direct {p0, p3, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    .line 200
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->setupSubmitEvent()V

    .line 202
    iput-boolean p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    .line 204
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    return-object p1
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 836
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 837
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetViewAndRefreshTimer()V

    goto :goto_0

    .line 840
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->cancelRefreshTimer()V

    .line 841
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/CalibrationRequestEvent;)V
    .locals 0

    .line 832
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetViewAndRefreshTimer()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ReadyForCalibrationChangedEvent;)V
    .locals 0

    .line 828
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->clearEditTextFocusAndHideKeyboard(Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 821
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->hideProgressDialog()V

    .line 822
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->cancelRefreshTimer()V

    .line 823
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 824
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 808
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 810
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 813
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_0
    return-void
.end method

.method public refreshCalibrationState()V
    .locals 4

    .line 511
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 513
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->disablePickersAndBottomLayout()V

    .line 515
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    const v1, 0x7f06004d

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f0f00b6

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 521
    :cond_0
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getReadyForCalibrationState()Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const v2, 0x7f0f0280

    packed-switch v0, :pswitch_data_0

    .line 594
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 584
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v3, :cond_1

    .line 585
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f0f0291

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :goto_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 578
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f0f01f3

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 567
    :pswitch_2
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDuration()I

    move-result v0

    const v2, 0x7f0f028f

    .line 569
    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%d"

    .line 570
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 572
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 561
    :pswitch_3
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f0f0281

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 556
    :pswitch_4
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f0f018e

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 551
    :pswitch_5
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f0f0262

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 546
    :pswitch_6
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f0f00cb

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 541
    :pswitch_7
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f0f01e4

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :pswitch_8
    const v0, 0x7f0f0195

    .line 534
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->suggestedUserAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 523
    :pswitch_9
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v1, 0x7f0f0069

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f06003c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeWithCalendar(Ljava/util/Calendar;)V

    .line 530
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->enablePickersAndBottomLayout()V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshView()V
    .locals 0

    .line 893
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshCalibrationState()V

    .line 894
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateNextScheduledCalibration()V

    .line 895
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateSensorDaysSinceInsertion()V

    .line 897
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->hideProgressDialog()V

    return-void
.end method

.method public setManager(Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->manager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

    return-void
.end method

.method public setTimeValueSelected(Ljava/lang/Boolean;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    return-void
.end method

.method public setTipsIsShowing(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    return-void
.end method

.method public updateNextScheduledCalibration()V
    .locals 11

    const-string v0, "next_calibrate"

    .line 394
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getNextScheduledCalibration()Ljava/util/Calendar;

    move-result-object v1

    const v2, 0x7f0f0184

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 395
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 396
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Utils.nextScheduledCalibration1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 400
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getNextScheduledCalibration()Ljava/util/Calendar;

    move-result-object v3

    .line 401
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 400
    invoke-static {v3, v4}, Lcom/senseonics/util/Utils;->formatDate_TimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 404
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getNextScheduledCalibration()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 405
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextCalibration local:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 410
    invoke-static {v1, v4}, Lcom/senseonics/util/Utils;->formatDate_TimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {v1}, Lcom/senseonics/util/Utils;->copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 414
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 415
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v6

    int-to-long v6, v6

    sget-wide v8, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long v6, v6, v8

    sub-long/2addr v4, v6

    .line 414
    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 416
    invoke-static {v1}, Lcom/senseonics/util/Utils;->copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    .line 417
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 418
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v7

    int-to-long v7, v7

    sget-wide v9, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long v7, v7, v9

    add-long/2addr v5, v7

    .line 417
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minsBeforeNextCalibrationTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 421
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minsAfterNextCalibrationTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 423
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 422
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minRange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/senseonics/util/Utils;->formatDate_TimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxRange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/senseonics/util/Utils;->formatDate_TimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 428
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Utils.nextScheduledCalibration2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 434
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getNextScheduledCalibration()Ljava/util/Calendar;

    move-result-object v6

    .line 435
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 434
    invoke-static {v6, v7}, Lcom/senseonics/util/Utils;->formatDate_TimeZone(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 432
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 439
    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 440
    invoke-direct {p0, v0, v3}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 441
    invoke-direct {p0, v0, v4}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 442
    invoke-direct {p0, v0, v5}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    const v6, 0x7f0f0261

    .line 444
    invoke-virtual {p0, v6}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 447
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_0

    const/4 v7, 0x2

    .line 448
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_0

    const/4 v7, 0x5

    .line 449
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_0

    const-string v6, "TODAY"

    .line 450
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0f0260

    .line 451
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 454
    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v0

    if-nez v0, :cond_1

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0039

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f002a

    .line 462
    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/senseonics/util/Utils;->getTime24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    :goto_0
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getReadyForCalibrationState()Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v0

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    if-ne v0, v1, :cond_3

    .line 469
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    .line 470
    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    const v1, 0x7f0f019c

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    .line 478
    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public updateSensorDaysSinceInsertion()V
    .locals 5

    .line 365
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 372
    iget-object v4, p0, Lcom/senseonics/fragments/CalibrateFragment;->alertHelper:Lcom/senseonics/util/AlertHelper;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/senseonics/util/AlertHelper;->calculateDaysSinceInsertion(JJ)I

    move-result v0

    .line 374
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    if-le v0, v2, :cond_1

    const-string v1, ">180"

    goto :goto_0

    .line 383
    :cond_0
    sget-object v1, Lcom/senseonics/util/Utils;->unknownString:Ljava/lang/String;

    .line 386
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->sensorDaysSinceInsertionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
