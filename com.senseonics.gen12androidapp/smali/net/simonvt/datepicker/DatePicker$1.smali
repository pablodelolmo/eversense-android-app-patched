.class Lnet/simonvt/datepicker/DatePicker$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lnet/simonvt/datepicker/DatePicker;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnet/simonvt/numberpicker/NumberPicker;II)V
    .locals 5

    .line 192
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v0}, Lnet/simonvt/datepicker/DatePicker;->access$000(Lnet/simonvt/datepicker/DatePicker;)V

    .line 193
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v0}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v1}, Lnet/simonvt/datepicker/DatePicker;->access$100(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 196
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v0}, Lnet/simonvt/datepicker/DatePicker;->access$300(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p1, v0, :cond_2

    .line 197
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    .line 198
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    if-ne p3, v4, :cond_0

    .line 200
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, p1, :cond_1

    .line 202
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v3, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {v0}, Lnet/simonvt/datepicker/DatePicker;->access$400(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const/16 p1, 0xb

    if-ne p2, p1, :cond_3

    if-nez p3, :cond_3

    .line 208
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-ne p3, p1, :cond_4

    .line 210
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 212
    :cond_4
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    sub-int/2addr p3, p2

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 214
    :cond_5
    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p2}, Lnet/simonvt/datepicker/DatePicker;->access$500(Lnet/simonvt/datepicker/DatePicker;)Lnet/simonvt/numberpicker/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_6

    .line 215
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 220
    :goto_0
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p2}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    .line 221
    invoke-static {p3}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    .line 222
    invoke-static {v0}, Lnet/simonvt/datepicker/DatePicker;->access$200(Lnet/simonvt/datepicker/DatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 220
    invoke-static {p1, p2, p3, v0}, Lnet/simonvt/datepicker/DatePicker;->access$600(Lnet/simonvt/datepicker/DatePicker;III)V

    .line 223
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$700(Lnet/simonvt/datepicker/DatePicker;)V

    .line 224
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$800(Lnet/simonvt/datepicker/DatePicker;)V

    .line 225
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePicker$1;->this$0:Lnet/simonvt/datepicker/DatePicker;

    invoke-static {p1}, Lnet/simonvt/datepicker/DatePicker;->access$900(Lnet/simonvt/datepicker/DatePicker;)V

    return-void

    .line 217
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
