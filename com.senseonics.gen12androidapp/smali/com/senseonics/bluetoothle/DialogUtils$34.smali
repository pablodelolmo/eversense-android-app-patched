.class Lcom/senseonics/bluetoothle/DialogUtils$34;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$doublePickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

.field final synthetic val$picker:Lnet/simonvt/numberpicker/NumberPicker;

.field final synthetic val$picker2:Lnet/simonvt/numberpicker/NumberPicker;

.field final synthetic val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/events/EventUtils$PickerManager;Lnet/simonvt/numberpicker/NumberPicker;Lcom/senseonics/util/dialogs/DoublePickerManager;Lnet/simonvt/numberpicker/NumberPicker;Landroid/app/Dialog;)V
    .locals 0

    .line 1490
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$picker:Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p4, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$doublePickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    iput-object p5, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$picker2:Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p6, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1494
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    if-eqz p1, :cond_0

    .line 1495
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$picker:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/senseonics/events/EventUtils$PickerManager;->selected(I)V

    .line 1496
    :cond_0
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$doublePickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$picker2:Lnet/simonvt/numberpicker/NumberPicker;

    if-eqz p1, :cond_1

    .line 1497
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$doublePickerManager:Lcom/senseonics/util/dialogs/DoublePickerManager;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$picker:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$picker2:Lnet/simonvt/numberpicker/NumberPicker;

    .line 1498
    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v1

    .line 1497
    invoke-interface {p1, v0, v1}, Lcom/senseonics/util/dialogs/DoublePickerManager;->selected(II)V

    .line 1500
    :cond_1
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$34;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
