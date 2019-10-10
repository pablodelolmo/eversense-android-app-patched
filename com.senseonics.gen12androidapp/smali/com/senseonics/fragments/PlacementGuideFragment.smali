.class public Lcom/senseonics/fragments/PlacementGuideFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "PlacementGuideFragment.java"


# instance fields
.field private bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private imageView:Landroid/widget/ImageView;

.field private initialSetup:Z

.field private onCreateViewCalled:Z

.field private placementGuideProcessTimer:Ljava/util/Timer;

.field private signalText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->initialSetup:Z

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/PlacementGuideFragment;)Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/fragments/PlacementGuideFragment;)Ljava/util/Timer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/PlacementGuideFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->startTimer()V

    return-void
.end method

.method private setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->signalText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/senseonics/fragments/PlacementGuideFragment$4;->$SwitchMap$com$senseonics$model$SIGNAL_STRENGTH:[I

    invoke-virtual {p1}, Lcom/senseonics/model/SIGNAL_STRENGTH;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 242
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f080165

    .line 243
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->signalText:Landroid/widget/TextView;

    const v0, 0x7f0f018f

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f080166

    .line 237
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->signalText:Landroid/widget/TextView;

    const v0, 0x7f0f01bc

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f080167

    .line 231
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->signalText:Landroid/widget/TextView;

    const v0, 0x7f0f0286

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :pswitch_3
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f080164

    .line 225
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->signalText:Landroid/widget/TextView;

    const v0, 0x7f0f014f

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :pswitch_4
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f080163

    .line 219
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->signalText:Landroid/widget/TextView;

    const v0, 0x7f0f010b

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :pswitch_5
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f080162

    .line 213
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->signalText:Landroid/widget/TextView;

    const v0, 0x7f0f00f0

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupPlacementGuideProcess()V
    .locals 14

    .line 154
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    .line 155
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setPlacementModeInProgress(Z)V

    .line 157
    iget-object v2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    new-instance v3, Lcom/senseonics/fragments/PlacementGuideFragment$1;

    invoke-direct {v3, p0}, Lcom/senseonics/fragments/PlacementGuideFragment$1;-><init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    .line 164
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-wide/16 v4, 0x0

    .line 157
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 166
    iget-object v8, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    new-instance v9, Lcom/senseonics/fragments/PlacementGuideFragment$2;

    invoke-direct {v9, p0}, Lcom/senseonics/fragments/PlacementGuideFragment$2;-><init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    const-wide/16 v10, 0x0

    .line 166
    invoke-virtual/range {v8 .. v13}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 176
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    new-instance v1, Lcom/senseonics/fragments/PlacementGuideFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/PlacementGuideFragment$3;-><init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5a

    .line 204
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private startTimer()V
    .locals 9

    .line 111
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_5:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_10:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    if-ne v0, v1, :cond_1

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->initialSetup:Z

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    const v4, 0x7f0f01b9

    .line 127
    invoke-virtual {p0, v4}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0f01b8

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 128
    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInMinutes()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/senseonics/fragments/PlacementGuideFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->setupPlacementGuideProcess()V

    return-void
.end method

.method private stopSignalStrengthTimer()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->placementGuideProcessTimer:Ljava/util/Timer;

    .line 145
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postExitDiagnosticMode()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setPlacementModeInProgress(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/senseonics/fragments/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    check-cast p1, Lcom/senseonics/gen12androidapp/ServiceActivity;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/ServiceActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p3, 0x1

    .line 59
    iput-boolean p3, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->onCreateViewCalled:Z

    const v0, 0x7f0b007a

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090150

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->imageView:Landroid/widget/ImageView;

    const p2, 0x7f09024e

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->signalText:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "initial_setup"

    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 67
    iput-boolean p3, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->initialSetup:Z

    :cond_0
    return-object p1
.end method

.method public onEventMainThread(Lcom/senseonics/model/ModelChangedEvent;)V
    .locals 0

    .line 74
    invoke-virtual {p1}, Lcom/senseonics/model/ModelChangedEvent;->getModel()Lcom/senseonics/model/TransmitterStateModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->onCreateViewCalled:Z

    .line 98
    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->stopSignalStrengthTimer()V

    .line 99
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 100
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 81
    iget-boolean v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->onCreateViewCalled:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)V

    .line 84
    invoke-direct {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->startTimer()V

    .line 87
    invoke-virtual {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/senseonics/fragments/PlacementGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/DismissPlacementGuide;

    invoke-direct {v1}, Lcom/senseonics/events/DismissPlacementGuide;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnCreateViewCalled(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment;->onCreateViewCalled:Z

    return-void
.end method
