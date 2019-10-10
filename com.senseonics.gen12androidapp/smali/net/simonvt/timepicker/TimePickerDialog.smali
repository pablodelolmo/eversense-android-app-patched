.class public Lnet/simonvt/timepicker/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/timepicker/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallback:Lnet/simonvt/timepicker/TimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lnet/simonvt/timepicker/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILnet/simonvt/timepicker/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 90
    iput-object p3, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mCallback:Lnet/simonvt/timepicker/TimePickerDialog$OnTimeSetListener;

    .line 91
    iput p4, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mInitialHourOfDay:I

    .line 92
    iput p5, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mInitialMinute:I

    .line 93
    iput-boolean p6, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mIs24HourView:Z

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePickerDialog;->setIcon(I)V

    .line 96
    sget p1, Lnet/simonvt/timepicker/R$string;->time_picker_dialog_title:I

    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePickerDialog;->setTitle(I)V

    .line 98
    invoke-virtual {p0}, Lnet/simonvt/timepicker/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 99
    sget p2, Lnet/simonvt/timepicker/R$string;->date_time_done:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p0, p3, p2, p0}, Lnet/simonvt/timepicker/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p2, "layout_inflater"

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 103
    sget p2, Lnet/simonvt/timepicker/R$layout;->time_picker_dialog:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lnet/simonvt/timepicker/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 105
    sget p2, Lnet/simonvt/timepicker/R$id;->timePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/simonvt/timepicker/TimePicker;

    iput-object p1, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    .line 108
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    iget-boolean p2, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mIs24HourView:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/simonvt/timepicker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 109
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    iget p2, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 110
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    iget p2, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mInitialMinute:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 111
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {p1, p0}, Lnet/simonvt/timepicker/TimePicker;->setOnTimeChangedListener(Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/simonvt/timepicker/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 8

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    sget v0, Lnet/simonvt/timepicker/R$style;->Theme_Dialog_Alert:I

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lnet/simonvt/timepicker/TimePickerDialog;-><init>(Landroid/content/Context;ILnet/simonvt/timepicker/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .line 128
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mCallback:Lnet/simonvt/timepicker/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {v0}, Lnet/simonvt/timepicker/TimePicker;->clearFocus()V

    .line 130
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mCallback:Lnet/simonvt/timepicker/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    iget-object v2, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {v2}, Lnet/simonvt/timepicker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    .line 131
    invoke-virtual {v3}, Lnet/simonvt/timepicker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    invoke-interface {v0, v1, v2, v3}, Lnet/simonvt/timepicker/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lnet/simonvt/timepicker/TimePicker;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 152
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    .line 154
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 155
    iget-object v2, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/timepicker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 156
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 157
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 143
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hour"

    .line 144
    iget-object v2, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {v2}, Lnet/simonvt/timepicker/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minute"

    .line 145
    iget-object v2, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {v2}, Lnet/simonvt/timepicker/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "is24hour"

    .line 146
    iget-object v2, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-virtual {v2}, Lnet/simonvt/timepicker/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lnet/simonvt/timepicker/TimePickerDialog;->tryNotifyTimeSet()V

    .line 138
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    return-void
.end method

.method public onTimeChanged(Lnet/simonvt/timepicker/TimePicker;II)V
    .locals 0

    return-void
.end method

.method public updateTime(II)V
    .locals 1

    .line 119
    iget-object v0, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 120
    iget-object p1, p0, Lnet/simonvt/timepicker/TimePickerDialog;->mTimePicker:Lnet/simonvt/timepicker/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method
