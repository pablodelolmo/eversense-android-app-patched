.class Lcom/senseonics/fragments/NotificationsFragment$4;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/NotificationsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/NotificationsFragment;

.field final synthetic val$dateManager:Lcom/senseonics/util/dialogs/DateDialogManager;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/NotificationsFragment;Lcom/senseonics/util/dialogs/DateDialogManager;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iput-object p2, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->val$dateManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 203
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->access$300(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->access$300(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->access$300(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object v1, v0, Lcom/senseonics/fragments/NotificationsFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object v3, v0, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object v4, v0, Lcom/senseonics/fragments/NotificationsFragment;->minDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object v5, v0, Lcom/senseonics/fragments/NotificationsFragment;->maxDate:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->val$dateManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createDatePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/fragments/NotificationsFragment;->access$302(Lcom/senseonics/fragments/NotificationsFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 208
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$4;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->access$300(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
