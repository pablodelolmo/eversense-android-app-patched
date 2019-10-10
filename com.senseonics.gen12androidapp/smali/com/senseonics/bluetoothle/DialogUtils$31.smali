.class Lcom/senseonics/bluetoothle/DialogUtils$31;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createTimePickerDialog(Landroid/content/Context;IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$dialogManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

.field final synthetic val$timePicker:Lnet/simonvt/timepicker/TimePicker;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/timepicker/TimePicker;Lcom/senseonics/util/dialogs/TimeDialogManager;Landroid/app/Dialog;)V
    .locals 0

    .line 1291
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->val$dialogManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    iput-object p4, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1296
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {p1}, Lnet/simonvt/timepicker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    .line 1297
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {v0}, Lnet/simonvt/timepicker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    .line 1299
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->val$dialogManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    invoke-interface {v1, p1, v0}, Lcom/senseonics/util/dialogs/TimeDialogManager;->onTimeSelected(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1300
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
