.class Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask$1;
.super Ljava/lang/Object;
.source "TempGlucoseProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;

.field final synthetic val$secLeft:J


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;J)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask$1;->this$1:Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;

    iput-wide p2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask$1;->val$secLeft:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "TempProfileManager_Fragment"

    const-string v1, "--- Countdown Timer tick ---"

    .line 176
    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask$1;->this$1:Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;

    iget-object v0, v0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->access$000(Lcom/senseonics/fragments/TempGlucoseProfileFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask$1;->this$1:Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;

    iget-object v1, v1, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask;->this$0:Lcom/senseonics/fragments/TempGlucoseProfileFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/TempGlucoseProfileFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-wide v2, p0, Lcom/senseonics/fragments/TempGlucoseProfileFragment$countDownTimerTask$1;->val$secLeft:J

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/bluetoothle/TempProfileManager;->formatTempProfileTimeLeftGivenSeconds(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
