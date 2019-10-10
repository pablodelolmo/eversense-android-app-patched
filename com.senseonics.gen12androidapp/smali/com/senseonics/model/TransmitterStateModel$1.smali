.class Lcom/senseonics/model/TransmitterStateModel$1;
.super Ljava/lang/Object;
.source "TransmitterStateModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/model/TransmitterStateModel;->startCountDownTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/model/TransmitterStateModel;

.field final synthetic val$millisInFuture:J


# direct methods
.method constructor <init>(Lcom/senseonics/model/TransmitterStateModel;J)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel$1;->this$0:Lcom/senseonics/model/TransmitterStateModel;

    iput-wide p2, p0, Lcom/senseonics/model/TransmitterStateModel$1;->val$millisInFuture:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 620
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel$1;->this$0:Lcom/senseonics/model/TransmitterStateModel;

    invoke-static {v0}, Lcom/senseonics/model/TransmitterStateModel;->access$000(Lcom/senseonics/model/TransmitterStateModel;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel$1;->this$0:Lcom/senseonics/model/TransmitterStateModel;

    new-instance v7, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel$1;->this$0:Lcom/senseonics/model/TransmitterStateModel;

    invoke-static {v1}, Lcom/senseonics/model/TransmitterStateModel;->access$100(Lcom/senseonics/model/TransmitterStateModel;)Lde/greenrobot/event/EventBus;

    move-result-object v2

    iget-wide v3, p0, Lcom/senseonics/model/TransmitterStateModel$1;->val$millisInFuture:J

    const-wide/16 v5, 0x3e8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;-><init>(Lde/greenrobot/event/EventBus;JJ)V

    invoke-static {v0, v7}, Lcom/senseonics/model/TransmitterStateModel;->access$002(Lcom/senseonics/model/TransmitterStateModel;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel$1;->this$0:Lcom/senseonics/model/TransmitterStateModel;

    invoke-static {v0}, Lcom/senseonics/model/TransmitterStateModel;->access$000(Lcom/senseonics/model/TransmitterStateModel;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 624
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel$1;->this$0:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->access$002(Lcom/senseonics/model/TransmitterStateModel;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 625
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel$1;->this$0:Lcom/senseonics/model/TransmitterStateModel;

    new-instance v7, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel$1;->this$0:Lcom/senseonics/model/TransmitterStateModel;

    invoke-static {v1}, Lcom/senseonics/model/TransmitterStateModel;->access$100(Lcom/senseonics/model/TransmitterStateModel;)Lde/greenrobot/event/EventBus;

    move-result-object v2

    iget-wide v3, p0, Lcom/senseonics/model/TransmitterStateModel$1;->val$millisInFuture:J

    const-wide/16 v5, 0x3e8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/CustomCountDownTimer;-><init>(Lde/greenrobot/event/EventBus;JJ)V

    invoke-static {v0, v7}, Lcom/senseonics/model/TransmitterStateModel;->access$002(Lcom/senseonics/model/TransmitterStateModel;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 627
    :goto_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel$1;->this$0:Lcom/senseonics/model/TransmitterStateModel;

    invoke-static {v0}, Lcom/senseonics/model/TransmitterStateModel;->access$000(Lcom/senseonics/model/TransmitterStateModel;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
