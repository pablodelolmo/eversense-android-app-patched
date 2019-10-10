.class Lnet/simonvt/timepicker/TimePicker$5;
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

    .line 242
    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker$5;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 0

    .line 245
    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$5;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p2}, Lnet/simonvt/timepicker/TimePicker;->access$000(Lnet/simonvt/timepicker/TimePicker;)V

    .line 246
    invoke-virtual {p1}, Lnet/simonvt/numberpicker/NumberPicker;->requestFocus()Z

    .line 247
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$5;->this$0:Lnet/simonvt/timepicker/TimePicker;

    iget-object p2, p0, Lnet/simonvt/timepicker/TimePicker$5;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p2}, Lnet/simonvt/timepicker/TimePicker;->access$100(Lnet/simonvt/timepicker/TimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lnet/simonvt/timepicker/TimePicker;->access$102(Lnet/simonvt/timepicker/TimePicker;Z)Z

    .line 248
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$5;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$200(Lnet/simonvt/timepicker/TimePicker;)V

    .line 249
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$5;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$300(Lnet/simonvt/timepicker/TimePicker;)V

    return-void
.end method
