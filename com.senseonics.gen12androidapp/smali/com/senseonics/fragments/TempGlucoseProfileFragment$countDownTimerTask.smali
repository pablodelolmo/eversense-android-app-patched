.class Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;
.super Ljava/util/TimerTask;
.source "TempGlucoseProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/TempGlucoseProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "countDownTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;


# direct methods
.method private constructor <init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;Lcom/senseonics/fragments/TempGlucoseProfileFragment$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileRemainingTime()J

    move-result-wide v0

    .line 165
    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 167
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBusPostTempOffEvent()V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-virtual {v2}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-virtual {v2}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask$1;-><init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;J)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
