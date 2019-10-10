.class Lcom/senseonics/fragments/DailyCalibrationFragment$2;
.super Ljava/lang/Object;
.source "DailyCalibrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/DailyCalibrationFragment;->updateViews()V
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

    .line 165
    iput-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 169
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$800(Lcom/senseonics/fragments/DailyCalibrationFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$800(Lcom/senseonics/fragments/DailyCalibrationFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$800(Lcom/senseonics/fragments/DailyCalibrationFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    iget-object v1, v0, Lcom/senseonics/fragments/DailyCalibrationFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    .line 172
    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$100(Lcom/senseonics/fragments/DailyCalibrationFragment;)I

    move-result v3

    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$200(Lcom/senseonics/fragments/DailyCalibrationFragment;)I

    move-result v4

    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    .line 173
    invoke-virtual {v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0f0177

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    iget-object v6, v0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    .line 171
    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createTimePickerDialog(Landroid/content/Context;IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$802(Lcom/senseonics/fragments/DailyCalibrationFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 175
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment$2;->this$0:Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->access$800(Lcom/senseonics/fragments/DailyCalibrationFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
