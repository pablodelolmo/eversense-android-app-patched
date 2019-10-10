.class Lcom/senseonics/bluetoothle/DialogUtils$25;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createDatePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$datePicker:Lnet/simonvt/datepicker/DatePicker;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lcom/senseonics/util/dialogs/DateDialogManager;Landroid/app/Dialog;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$25;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$25;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$25;->val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    iput-object p4, p0, Lcom/senseonics/bluetoothle/DialogUtils$25;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1091
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$25;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {p1}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result p1

    .line 1092
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$25;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v0

    .line 1093
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$25;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v1}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v1

    .line 1095
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1096
    invoke-virtual {v2, v1, v0, p1}, Ljava/util/Calendar;->set(III)V

    const/4 p1, 0x0

    const/16 v0, 0xb

    .line 1097
    invoke-virtual {v2, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xa

    .line 1098
    invoke-virtual {v2, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 1099
    invoke-virtual {v2, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 1100
    invoke-virtual {v2, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1102
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$25;->val$dialogManager:Lcom/senseonics/util/dialogs/DateDialogManager;

    invoke-interface {p1, v2}, Lcom/senseonics/util/dialogs/DateDialogManager;->onDateSelected(Ljava/util/Calendar;)V

    .line 1103
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$25;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
