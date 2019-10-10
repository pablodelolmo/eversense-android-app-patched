.class Lnet/simonvt/timepicker/TimePicker$3;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/timepicker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/timepicker/TimePicker;


# direct methods
.method constructor <init>(Lnet/simonvt/timepicker/TimePicker;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 1

    .line 191
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$000(Lnet/simonvt/timepicker/TimePicker;)V

    .line 192
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$400(Lnet/simonvt/timepicker/TimePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getMinValue()I

    move-result p1

    .line 193
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {v0}, Lnet/simonvt/timepicker/TimePicker;->access$400(Lnet/simonvt/timepicker/TimePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getMaxValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    if-ne p3, p1, :cond_1

    .line 195
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$500(Lnet/simonvt/timepicker/TimePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 196
    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {p2}, Lnet/simonvt/timepicker/TimePicker;->is24HourView()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    .line 197
    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    iget-object p3, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p3}, Lnet/simonvt/timepicker/TimePicker;->access$100(Lnet/simonvt/timepicker/TimePicker;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lnet/simonvt/timepicker/TimePicker;->access$102(Lnet/simonvt/timepicker/TimePicker;Z)Z

    .line 198
    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p2}, Lnet/simonvt/timepicker/TimePicker;->access$200(Lnet/simonvt/timepicker/TimePicker;)V

    .line 200
    :cond_0
    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p2}, Lnet/simonvt/timepicker/TimePicker;->access$500(Lnet/simonvt/timepicker/TimePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_3

    if-ne p3, v0, :cond_3

    .line 202
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$500(Lnet/simonvt/timepicker/TimePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object p1

    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 203
    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {p2}, Lnet/simonvt/timepicker/TimePicker;->is24HourView()Z

    move-result p2

    if-nez p2, :cond_2

    const/16 p2, 0xb

    if-ne p1, p2, :cond_2

    .line 205
    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    iget-object p3, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p3}, Lnet/simonvt/timepicker/TimePicker;->access$100(Lnet/simonvt/timepicker/TimePicker;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lnet/simonvt/timepicker/TimePicker;->access$102(Lnet/simonvt/timepicker/TimePicker;Z)Z

    .line 206
    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p2}, Lnet/simonvt/timepicker/TimePicker;->access$200(Lnet/simonvt/timepicker/TimePicker;)V

    .line 208
    :cond_2
    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p2}, Lnet/simonvt/timepicker/TimePicker;->access$500(Lnet/simonvt/timepicker/TimePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 210
    :cond_3
    :goto_0
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$3;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$300(Lnet/simonvt/timepicker/TimePicker;)V

    return-void
.end method
