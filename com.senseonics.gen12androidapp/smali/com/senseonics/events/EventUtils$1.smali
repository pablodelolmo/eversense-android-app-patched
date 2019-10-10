.class final Lcom/senseonics/events/EventUtils$1;
.super Ljava/lang/Object;
.source "EventUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/EventUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$picker:Lnet/simonvt/numberpicker/NumberPicker;

.field final synthetic val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;


# direct methods
.method constructor <init>(Lcom/senseonics/events/EventUtils$PickerManager;Lnet/simonvt/numberpicker/NumberPicker;Landroid/app/Dialog;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/senseonics/events/EventUtils$1;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    iput-object p2, p0, Lcom/senseonics/events/EventUtils$1;->val$picker:Lnet/simonvt/numberpicker/NumberPicker;

    iput-object p3, p0, Lcom/senseonics/events/EventUtils$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/senseonics/events/EventUtils$1;->val$pickerManager:Lcom/senseonics/events/EventUtils$PickerManager;

    iget-object v0, p0, Lcom/senseonics/events/EventUtils$1;->val$picker:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/senseonics/events/EventUtils$PickerManager;->selected(I)V

    .line 163
    iget-object p1, p0, Lcom/senseonics/events/EventUtils$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
