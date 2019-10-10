.class Lcom/senseonics/bluetoothle/DialogUtils$27;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createDateTimePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$currentDate:Ljava/util/Calendar;

.field final synthetic val$datePicker:Lnet/simonvt/datepicker/DatePicker;

.field final synthetic val$isCalibrationPicker:Z

.field final synthetic val$timePicker:Lnet/simonvt/timepicker/TimePicker;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lnet/simonvt/timepicker/TimePicker;ZLjava/util/Calendar;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    iput-boolean p4, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$isCalibrationPicker:Z

    iput-object p5, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$currentDate:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lnet/simonvt/timepicker/TimePicker;II)V
    .locals 12

    .line 1154
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1155
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 1156
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v3

    .line 1157
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v2

    const/4 v0, 0x1

    .line 1159
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/4 v10, 0x2

    const/4 v11, 0x5

    if-ne v1, v2, :cond_3

    .line 1160
    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1161
    invoke-virtual {p1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1163
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1164
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1166
    iget-object v6, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    iget-object v7, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 1167
    invoke-static {v7}, Lcom/senseonics/bluetoothle/DialogUtils;->access$400(Lcom/senseonics/bluetoothle/DialogUtils;)Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/simonvt/timepicker/TimePicker;->setOnTimeChangedListener(Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;)V

    .line 1169
    invoke-virtual {p1, v11}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 1171
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    if-le p2, v1, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p2

    .line 1172
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    if-ne v1, p2, :cond_2

    .line 1176
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    if-le p3, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, p3

    .line 1177
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1180
    :cond_2
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {p1, p0}, Lnet/simonvt/timepicker/TimePicker;->setOnTimeChangedListener(Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;)V

    .line 1183
    :cond_3
    iget-boolean p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$isCalibrationPicker:Z

    if-ne p1, v0, :cond_4

    .line 1184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v7, 0x0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .line 1185
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 p2, 0xe

    const/4 p3, 0x0

    .line 1186
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    const-string p2, "timepicker"

    .line 1187
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ; "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$currentDate:Ljava/util/Calendar;

    .line 1188
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1187
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iget-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$currentDate:Ljava/util/Calendar;

    .line 1192
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sub-long/2addr p1, v1

    .line 1191
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 v1, 0x927c0

    cmp-long p1, p1, v1

    if-lez p1, :cond_4

    .line 1193
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$datePicker:Lnet/simonvt/datepicker/DatePicker;

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$currentDate:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$currentDate:Ljava/util/Calendar;

    .line 1194
    invoke-virtual {p3, v10}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$currentDate:Ljava/util/Calendar;

    .line 1195
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1193
    invoke-virtual {p1, p2, p3, v0, v1}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    .line 1197
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$currentDate:Ljava/util/Calendar;

    .line 1198
    invoke-virtual {p2, v9}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1199
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$timePicker:Lnet/simonvt/timepicker/TimePicker;

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$27;->val$currentDate:Ljava/util/Calendar;

    .line 1200
    invoke-virtual {p2, v8}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method
