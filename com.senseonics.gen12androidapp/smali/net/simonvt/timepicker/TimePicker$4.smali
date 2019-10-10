.class Lnet/simonvt/timepicker/TimePicker$4;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 227
    iput-object p1, p0, Lnet/simonvt/timepicker/TimePicker$4;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 230
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$4;->this$0:Lnet/simonvt/timepicker/TimePicker;

    iget-object v0, p0, Lnet/simonvt/timepicker/TimePicker$4;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {v0}, Lnet/simonvt/timepicker/TimePicker;->access$100(Lnet/simonvt/timepicker/TimePicker;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lnet/simonvt/timepicker/TimePicker;->access$102(Lnet/simonvt/timepicker/TimePicker;Z)Z

    .line 231
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$4;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$200(Lnet/simonvt/timepicker/TimePicker;)V

    .line 232
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePicker$4;->this$0:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Lnet/simonvt/timepicker/TimePicker;->access$300(Lnet/simonvt/timepicker/TimePicker;)V

    return-void
.end method
