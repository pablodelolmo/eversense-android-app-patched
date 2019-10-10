.class public Lcom/senseonics/gen12androidapp/BaseActivity;
.super Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/ServiceActivity;
.implements Lcom/senseonics/gen12androidapp/ActivityWithNavigationBar;


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private naviBarLayout:Landroid/widget/RelativeLayout;

.field protected naviBarLeftItemTextView:Landroid/widget/TextView;

.field protected naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

.field public naviBarRightItemTextView:Landroid/widget/TextView;

.field protected naviBarTitle:Landroid/widget/TextView;

.field private naviBarTitleImageView:Landroid/widget/ImageView;

.field private refreshButton:Landroid/widget/ImageButton;

.field protected statusBarDrawerButton:Landroid/widget/ImageView;

.field private statusBarLayout:Landroid/widget/LinearLayout;

.field private statusBarTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-nez p2, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitleImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitleImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-nez p3, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public getRefreshButton()Landroid/widget/ImageButton;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getService()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->getBluetoothServiceClient()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    return-object v0
.end method

.method public highPriorityRequestFinished()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0, p0}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public initializeLayout(I)Landroid/view/View;
    .locals 4

    const v0, 0x7f090071

    .line 139
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 141
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 144
    invoke-virtual {v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 145
    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method protected isThisActivityTop()Z
    .locals 6

    .line 187
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isThisActivityTop()Z

    const-string v0, "activity"

    .line 190
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 191
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    const-string v3, "topActivity -----"

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getTaskId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 196
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "top"

    const-string v2, "true"

    .line 200
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public makeIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    sget-object v1, Lcom/senseonics/util/Utils;->SENSOR_REPLACEMENT_INTENT_FILTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    sget-object v1, Lcom/senseonics/util/Utils;->BATTERY_LOW_INTENT_FILTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "senseonics.transmitter.info"

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcom/senseonics/util/Utils;->UNLINKED_SENSOR_SERIAL_NUMBER_ARRIVED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 336
    sget p3, Lcom/senseonics/util/Utils;->TAP_HEADER_BACK_RESULT:I

    if-ne p1, p3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 338
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 339
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    goto :goto_0

    .line 340
    :cond_0
    sget p1, Lcom/senseonics/util/Utils;->LOG_OUT_BACK_RESULT:I

    if-ne p2, p1, :cond_1

    .line 341
    invoke-static {p0}, Lcom/senseonics/util/AccountConfigurations;->isLoginActivity(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 342
    sget p1, Lcom/senseonics/util/Utils;->LOG_OUT_BACK_RESULT:I

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 343
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    goto :goto_0

    .line 345
    :cond_1
    sget p1, Lcom/senseonics/util/Utils;->PLACEMENT_BACK_RESULT:I

    if-ne p2, p1, :cond_2

    .line 346
    sget p1, Lcom/senseonics/util/Utils;->PLACEMENT_BACK_RESULT:I

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 347
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 62
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v1, "Activities"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "Name"

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    .line 65
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    const p1, 0x7f0b003e

    .line 68
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setContentView(I)V

    .line 71
    invoke-static {p0}, Lcom/senseonics/util/Utils;->setScreenWidthandHeight(Landroid/app/Activity;)V

    .line 73
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 77
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->overridePendingTransition(II)V

    .line 83
    new-instance v1, Lcom/senseonics/gen12androidapp/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/BaseActivity$1;-><init>(Lcom/senseonics/gen12androidapp/BaseActivity;)V

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->makeIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/senseonics/gen12androidapp/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v1, 0x7f090039

    .line 92
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    .line 93
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v1, 0x7f0900e9

    .line 95
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    .line 96
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const v2, 0x7f0800bb

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/senseonics/gen12androidapp/BaseActivity$2;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/BaseActivity$2;-><init>(Lcom/senseonics/gen12androidapp/BaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f09029c

    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarTextView:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 108
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v0, v0, [I

    const v2, 0x10102eb

    aput v2, v0, p1

    .line 111
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->statusBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f090175

    .line 121
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->layoutSyncBar:Landroid/widget/RelativeLayout;

    const p1, 0x7f0901d2

    .line 124
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0901ce

    .line 125
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitle:Landroid/widget/TextView;

    const p1, 0x7f0901cf

    .line 126
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarTitleImageView:Landroid/widget/ImageView;

    const p1, 0x7f0901cb

    .line 127
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarLeftItemTextView:Landroid/widget/TextView;

    const p1, 0x7f0901cd

    .line 128
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const p1, 0x7f09021c

    .line 129
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshButton:Landroid/widget/ImageButton;

    const p1, 0x7f0901cc

    .line 130
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarRightItemAddEventImageview:Landroid/widget/ImageView;

    .line 131
    sget p1, Lcom/senseonics/util/Utils;->screenHeight:I

    mul-int/lit8 p1, p1, 0x1b

    div-int/lit8 p1, p1, 0x64

    div-int/lit8 p1, p1, 0x4

    .line 133
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->naviBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 326
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/AlertOrAlarmEvent;)V
    .locals 0

    .line 260
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onEventMainThread(Lcom/senseonics/events/AlertOrAlarmEvent;)V

    .line 261
    invoke-virtual {p0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshNotifications(Landroid/app/Activity;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/CalibrationRequestEvent;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationRequestEvent;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationRequestEvent;->getNotificationId()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createCalibrateDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;I)V

    .line 246
    invoke-virtual {p0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshNotifications(Landroid/app/Activity;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/NotificationDialogEvent;)V
    .locals 2

    .line 265
    invoke-virtual {p1}, Lcom/senseonics/events/NotificationDialogEvent;->getTransmitterMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 266
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_0

    instance-of v1, p0, Lcom/senseonics/gen12androidapp/PlacementGuideActivity;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_1

    instance-of v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    if-eqz v1, :cond_1

    .line 270
    move-object p1, p0

    check-cast p1, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/NotificationDialogEvent;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->createNotificationDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 274
    :goto_0
    invoke-virtual {p0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshNotifications(Landroid/app/Activity;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/PlacementToHomeEvent;)V
    .locals 0

    .line 283
    sget p1, Lcom/senseonics/util/Utils;->PLACEMENT_BACK_RESULT:I

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 284
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/PredictiveRateAlertEvent;)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onEventMainThread(Lcom/senseonics/events/PredictiveRateAlertEvent;)V

    .line 256
    invoke-virtual {p0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshNotifications(Landroid/app/Activity;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/RateAlertEvent;)V
    .locals 0

    .line 250
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onEventMainThread(Lcom/senseonics/events/RateAlertEvent;)V

    .line 251
    invoke-virtual {p0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->refreshNotifications(Landroid/app/Activity;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/StatusHeaderTapEvent;)V
    .locals 0

    const/4 p1, -0x1

    .line 278
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 279
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/TempProfileTurnedOffEvent;)V
    .locals 1

    .line 300
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->fireTempProfileTurnedOffPopup(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onBackPressed()V

    .line 241
    :goto_0
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->overridePendingTransition(II)V

    .line 229
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 214
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->onResume()V

    .line 216
    invoke-static {p0}, Lcom/senseonics/util/AccountConfigurations;->isLoginActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfEulaAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DMS(BaseActivity)"

    const-string v1, "onResume NOT log in"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget v0, Lcom/senseonics/util/Utils;->LOG_OUT_BACK_RESULT:I

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->setResult(I)V

    .line 220
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;
    .locals 1

    .line 305
    new-instance v0, Lcom/senseonics/gen12androidapp/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/BaseActivity$3;-><init>(Lcom/senseonics/gen12androidapp/BaseActivity;)V

    return-object v0
.end method

.method public refreshNotifications(Landroid/app/Activity;)V
    .locals 1

    .line 180
    instance-of v0, p1, Lcom/senseonics/gen12androidapp/NotificationsActivity;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lcom/senseonics/gen12androidapp/NotificationsActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/NotificationsActivity;->refresh()V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 331
    sget v0, Lcom/senseonics/util/Utils;->TAP_HEADER_BACK_RESULT:I

    invoke-virtual {p0, p1, v0}, Lcom/senseonics/gen12androidapp/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f06001e

    .line 354
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f060059

    .line 356
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
