.class public Lcom/senseonics/fragments/TempGlucoseProfileFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "TempGlucoseProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final Temp:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

.field private alarmHighLayout:Landroid/widget/RelativeLayout;

.field private alarmHighLeftTextView:Landroid/widget/TextView;

.field private alarmHighRightTextView:Landroid/widget/TextView;

.field private alarmLowLayout:Landroid/widget/RelativeLayout;

.field private alarmLowLeftTextView:Landroid/widget/TextView;

.field private alarmLowRightTextView:Landroid/widget/TextView;

.field private btnStartStop:Landroid/widget/TextView;

.field private countDownTimer:Ljava/util/Timer;

.field private dialog:Landroid/app/Dialog;

.field private durationLayout:Landroid/widget/RelativeLayout;

.field private durationLeftTextView:Landroid/widget/TextView;

.field private durationRightTextView:Landroid/widget/TextView;

.field private targetHighLayout:Landroid/widget/RelativeLayout;

.field private targetHighLeftTextView:Landroid/widget/TextView;

.field private targetHighRightTextView:Landroid/widget/TextView;

.field private targetLowLayout:Landroid/widget/RelativeLayout;

.field private targetLowLeftTextView:Landroid/widget/TextView;

.field private targetLowRightTextView:Landroid/widget/TextView;

.field protected thresholdsController:Lcom/senseonics/util/ThresholdsController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    const-string v0, "TempProfileManager_Fragment"

    .line 36
    iput-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->TAG:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    iput-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->Temp:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationRightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->updateViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/app/Dialog;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->values:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->values:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighRightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->Temp:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    return-object p0
.end method

.method static synthetic access$700(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowRightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighRightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowRightTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private invalidateCountDownTimer()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->countDownTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->countDownTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->countDownTimer:Ljava/util/Timer;

    const-string v0, "TempProfileManager_Fragment"

    const-string v1, "------ invalidateCountDownTimer ------"

    .line 147
    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setupAlarmHighOnClickEvent()V
    .locals 3

    .line 442
    new-instance v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$8;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V

    .line 456
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/senseonics/fragments/TempGlucoseProfileFragment$9;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$9;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupAlarmLowOnClickEvent()V
    .locals 3

    .line 478
    new-instance v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$10;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$10;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V

    .line 492
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/senseonics/fragments/TempGlucoseProfileFragment$11;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$11;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupBtnStartStopOnClickEvent()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->btnStartStop:Landroid/widget/TextView;

    new-instance v1, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupDurationLayoutOnClickEvent()V
    .locals 8

    .line 316
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    const v1, 0x7f0f0123

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x24

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetweenWithSuffix(IIILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    new-instance v4, Lcom/senseonics/util/Item;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v6, 0x7f0f016b

    invoke-virtual {p0, v6}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v3, Lcom/senseonics/util/Item;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v2, Lcom/senseonics/fragments/TempGlucoseProfileFragment$2;

    invoke-direct {v2, p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$2;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V

    .line 341
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$3;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/util/dialogs/DoublePickerManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupTargetHighOnClickEvent()V
    .locals 3

    .line 364
    new-instance v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$4;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$4;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V

    .line 378
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$5;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupTargetLowOnClickEvent()V
    .locals 3

    .line 403
    new-instance v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$6;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$6;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V

    .line 417
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/senseonics/fragments/TempGlucoseProfileFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$7;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private stopTempProfileUpdateTable()V
    .locals 2

    const-string v0, "TempProfileManager_Fragment"

    const-string v1, "_____stopTempProfileUpdateTable_____"

    .line 138
    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->stopTempProfile()V

    .line 140
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->updateViews()V

    return-void
.end method

.method private updateViews()V
    .locals 9

    const/4 v0, 0x0

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 188
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 190
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 193
    iget-object v5, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->btnStartStop:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 194
    iget-object v5, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->btnStartStop:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const v6, 0x7f060065

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f060050

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 198
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 199
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06001e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 203
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 204
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 208
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 209
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 213
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 214
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 218
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 219
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 223
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060064

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 224
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 228
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 229
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 233
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 234
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 238
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 239
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 243
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 244
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowLeftTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 251
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->btnStartStop:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0f023f

    :goto_2
    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0f023a

    goto :goto_2

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileStatus()Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    move-result-object v1

    .line 256
    sget-object v3, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_ALREADY_DISABLED:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    if-eq v1, v3, :cond_4

    .line 257
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationRightTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v3}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileRemainingTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/senseonics/bluetoothle/TempProfileManager;->formatTempProfileTimeLeftGivenSeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_IN_PROGRESS:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    if-ne v1, v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->countDownTimer:Ljava/util/Timer;

    if-nez v0, :cond_5

    .line 262
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->countDownTimer:Ljava/util/Timer;

    .line 263
    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->countDownTimer:Ljava/util/Timer;

    new-instance v3, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4

    .line 265
    :cond_3
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    if-ne v1, v0, :cond_5

    .line 267
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBusPostTempOffEvent()V

    goto :goto_4

    .line 272
    :cond_4
    iget-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v3}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileDuration()I

    move-result v3

    .line 273
    iget-object v4, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0f024b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    div-int/lit8 v8, v3, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_5
    :goto_4
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_IN_PROGRESS:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    if-eq v1, v0, :cond_6

    .line 277
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->invalidateCountDownTimer()V

    .line 280
    :cond_6
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    sget-object v3, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v4, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {v2, v3, v4}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    sget-object v3, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v4, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {v2, v3, v4}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    sget-object v3, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v4, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {v2, v3, v4}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowRightTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    sget-object v3, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v4, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {v2, v3, v4}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 73
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getTempProfileLayout()I

    move-result p3

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager;->restoreAllGlucoseProfilesToStateValueIfNeeded()V

    const-string p2, "TempProfileManager_Fragment"

    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Non Temp: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->nonTempProfileToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "TempProfileManager_Fragment"

    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Temp: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->tempProfileToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "TempProfileManager_Fragment"

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duration: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileDuration()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f0900f6

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0900f7

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationLeftTextView:Landroid/widget/TextView;

    const p2, 0x7f0900f8

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->durationRightTextView:Landroid/widget/TextView;

    .line 85
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupDurationLayoutOnClickEvent()V

    const p2, 0x7f090293

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const p3, 0x7f09013c

    .line 88
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f09013b

    .line 89
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighLeftTextView:Landroid/widget/TextView;

    const v1, 0x7f090143

    .line 90
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetHighRightTextView:Landroid/widget/TextView;

    .line 91
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupTargetHighOnClickEvent()V

    const v2, 0x7f090190

    .line 93
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f09018f

    .line 94
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowLeftTextView:Landroid/widget/TextView;

    const v4, 0x7f090197

    .line 95
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->targetLowRightTextView:Landroid/widget/TextView;

    .line 96
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupTargetLowOnClickEvent()V

    const p2, 0x7f090030

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 99
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighLayout:Landroid/widget/RelativeLayout;

    .line 100
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighLeftTextView:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmHighRightTextView:Landroid/widget/TextView;

    .line 102
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupAlarmHighOnClickEvent()V

    .line 104
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowLayout:Landroid/widget/RelativeLayout;

    .line 105
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowLeftTextView:Landroid/widget/TextView;

    .line 106
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->alarmLowRightTextView:Landroid/widget/TextView;

    .line 107
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupAlarmLowOnClickEvent()V

    const p2, 0x7f090089

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->btnStartStop:Landroid/widget/TextView;

    .line 110
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->setupBtnStartStopOnClickEvent()V

    return-object p1
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->updateViews()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/TempProfileTurnedOffEvent;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->stopTempProfileUpdateTable()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 124
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->invalidateCountDownTimer()V

    .line 126
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 117
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 118
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->updateViews()V

    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Lcom/senseonics/events/EventUtils$PickerManager;",
            "I)V"
        }
    .end annotation

    .line 153
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialog:Landroid/app/Dialog;

    .line 158
    iget-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
