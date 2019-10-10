.class Lcom/senseonics/bluetoothle/DialogUtils$33;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;


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

.field final synthetic val$items2:Ljava/util/ArrayList;

.field final synthetic val$p:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/numberpicker/NumberPicker;Ljava/util/ArrayList;)V
    .locals 0

    .line 1468
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$items2:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 2

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p3, :cond_0

    .line 1473
    iget-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p3, p2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1474
    iget-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    new-array v0, p1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$items2:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    invoke-virtual {p3, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1475
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    if-ne p3, v0, :cond_1

    .line 1477
    iget-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p3, p2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1478
    iget-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$items2:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    invoke-virtual {p3, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1479
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    goto :goto_0

    .line 1481
    :cond_1
    iget-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$items2:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Item;

    invoke-virtual {v1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$items2:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/util/Item;

    invoke-virtual {p2}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-virtual {p3, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1482
    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$33;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p2, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    :goto_0
    return-void
.end method
