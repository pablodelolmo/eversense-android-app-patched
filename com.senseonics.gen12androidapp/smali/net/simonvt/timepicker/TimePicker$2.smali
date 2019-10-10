.class Lnet/simonvt/timepicker/TimePicker$2;
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

    .line 156
    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker$2;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 1

    .line 159
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$2;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$000(Lnet/simonvt/timepicker/TimePicker;)V

    .line 160
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$2;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {p1}, Lnet/simonvt/timepicker/TimePicker;->is24HourView()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    if-eq p3, p1, :cond_1

    :cond_0
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    .line 163
    :cond_1
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$2;->this$0:Lnet/simonvt/timepicker/TimePicker;

    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$2;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p2}, Lnet/simonvt/timepicker/TimePicker;->access$100(Lnet/simonvt/timepicker/TimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lnet/simonvt/timepicker/TimePicker;->access$102(Lnet/simonvt/timepicker/TimePicker;Z)Z

    .line 164
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$2;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$200(Lnet/simonvt/timepicker/TimePicker;)V

    .line 167
    :cond_2
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$2;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$300(Lnet/simonvt/timepicker/TimePicker;)V

    return-void
.end method
