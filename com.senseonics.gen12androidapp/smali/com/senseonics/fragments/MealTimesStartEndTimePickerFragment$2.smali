.class Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;
.super Ljava/lang/Object;
.source "MealTimesStartEndTimePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 73
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->access$000(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->access$000(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->access$000(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    iget-object v1, v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    .line 76
    invoke-static {v0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->access$300(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I

    move-result v3

    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {v0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->access$400(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I

    move-result v4

    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    .line 77
    invoke-virtual {v0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0f00da

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    iget-object v6, v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    .line 75
    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createTimePickerDialog(Landroid/content/Context;IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->access$002(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 79
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;->this$0:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->access$000(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
