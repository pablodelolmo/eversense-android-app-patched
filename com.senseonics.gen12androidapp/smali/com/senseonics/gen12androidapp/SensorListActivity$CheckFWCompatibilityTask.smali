.class public Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;
.super Landroid/os/AsyncTask;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckFWCompatibilityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private response:Ljava/lang/String;

.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 693
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 698
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkMMAandTXcompatibility()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 693
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 704
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Compatibility response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$700(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP1:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$802(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;)Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    .line 711
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->prepareLinkingLayout()V

    .line 712
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$900(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 713
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {v0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$302(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 716
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    goto :goto_0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 720
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$302(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 721
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    .line 724
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
