.class Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;
.super Ljava/util/TimerTask;
.source "CalibrateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/CalibrateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTimeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/CalibrateFragment;


# direct methods
.method private constructor <init>(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/fragments/CalibrateFragment$1;)V
    .locals 0

    .line 936
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;->this$0:Lcom/senseonics/fragments/CalibrateFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask$1;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask$1;-><init>(Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
