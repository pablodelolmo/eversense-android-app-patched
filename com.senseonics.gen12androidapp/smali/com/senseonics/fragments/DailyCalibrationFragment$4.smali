.class Lcom/senseonics/fragments/DailyCalibrationFragment$4;
.super Ljava/lang/Object;
.source "DailyCalibrationFragment.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/TimeDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/DailyCalibrationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/DailyCalibrationFragment;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSelected(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v3}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$400(Lcom/senseonics/fragments/DailyCalibrationFragment;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$900(Lcom/senseonics/fragments/DailyCalibrationFragment;II)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$002(Lcom/senseonics/fragments/DailyCalibrationFragment;Z)Z

    .line 314
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$1000(Lcom/senseonics/fragments/DailyCalibrationFragment;)V

    .line 315
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$300(Lcom/senseonics/fragments/DailyCalibrationFragment;)Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$000(Lcom/senseonics/fragments/DailyCalibrationFragment;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;->settingsOk(Z)V

    .line 318
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$102(Lcom/senseonics/fragments/DailyCalibrationFragment;I)I

    .line 319
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$202(Lcom/senseonics/fragments/DailyCalibrationFragment;I)I

    .line 320
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$1100(Lcom/senseonics/fragments/DailyCalibrationFragment;II)V

    return-void
.end method
