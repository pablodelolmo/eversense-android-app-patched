.class Lcom/senseonics/bluetoothle/DialogUtils$32;
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

.field final synthetic val$lastItem:I

.field final synthetic val$p:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;ILnet/simonvt/numberpicker/NumberPicker;Ljava/util/ArrayList;)V
    .locals 0

    .line 1440
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$32;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$32;->val$lastItem:I

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$32;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p4, p0, Lcom/senseonics/bluetoothle/DialogUtils$32;->val$items2:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 0

    .line 1445
    iget p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$32;->val$lastItem:I

    if-ne p3, p1, :cond_0

    .line 1446
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$32;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 1448
    :cond_0
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$32;->val$p:Lnet/simonvt/numberpicker/NumberPicker;

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$32;->val$items2:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    :goto_0
    return-void
.end method
