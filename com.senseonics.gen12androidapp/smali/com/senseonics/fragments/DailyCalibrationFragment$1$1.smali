.class Lcom/senseonics/fragments/DailyCalibrationFragment$1$1;
.super Ljava/lang/Object;
.source "DailyCalibrationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/DailyCalibrationFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/fragments/DailyCalibrationFragment$1;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/DailyCalibrationFragment$1;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1$1;->this$1:Lcom/senseonics/fragments/DailyCalibrationFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1$1;->this$1:Lcom/senseonics/fragments/DailyCalibrationFragment$1;

    iget-object v0, v0, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    sget v1, Lcom/senseonics/util/Utils;->DAILY_CALIBRATION_SAVE_RESULT:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 103
    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$1$1;->this$1:Lcom/senseonics/fragments/DailyCalibrationFragment$1;

    iget-object v1, v1, Lcom/senseonics/fragments/DailyCalibrationFragment$1;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$700(Lcom/senseonics/fragments/DailyCalibrationFragment;)V

    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
