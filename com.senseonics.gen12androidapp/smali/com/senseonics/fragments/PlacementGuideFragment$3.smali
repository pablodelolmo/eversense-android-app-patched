.class Lcom/senseonics/fragments/PlacementGuideFragment$3;
.super Ljava/util/TimerTask;
.source "PlacementGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/PlacementGuideFragment;->setupPlacementGuideProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/PlacementGuideFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->access$100(Lcom/senseonics/fragments/PlacementGuideFragment;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/PlacementGuideFragment;->access$100(Lcom/senseonics/fragments/PlacementGuideFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 182
    :cond_0
    new-instance v0, Lcom/senseonics/fragments/PlacementGuideFragment$3$1;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/PlacementGuideFragment$3$1;-><init>(Lcom/senseonics/fragments/PlacementGuideFragment$3;)V

    .line 193
    iget-object v1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$3;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/PlacementGuideFragment;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/senseonics/fragments/PlacementGuideFragment$3$2;

    invoke-direct {v2, p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment$3$2;-><init>(Lcom/senseonics/fragments/PlacementGuideFragment$3;Lcom/senseonics/util/dialogs/NotificationDialogManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
