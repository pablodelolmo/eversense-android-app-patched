.class public Lnet/simonvt/datepicker/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lnet/simonvt/datepicker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/datepicker/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lnet/simonvt/datepicker/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lnet/simonvt/datepicker/DatePicker;

.field private mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILnet/simonvt/datepicker/DatePickerDialog$OnDateSetListener;III)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 96
    iput-object p3, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mCallBack:Lnet/simonvt/datepicker/DatePickerDialog$OnDateSetListener;

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 100
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 101
    sget p2, Lnet/simonvt/datepicker/R$string;->date_time_done:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p0, p3, p2, p0}, Lnet/simonvt/datepicker/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    .line 102
    invoke-virtual {p0, p2}, Lnet/simonvt/datepicker/DatePickerDialog;->setIcon(I)V

    const-string p2, "layout_inflater"

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 106
    sget p2, Lnet/simonvt/datepicker/R$layout;->date_picker_dialog:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lnet/simonvt/datepicker/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 108
    sget p2, Lnet/simonvt/datepicker/R$id;->datePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/simonvt/datepicker/DatePicker;

    iput-object p1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    .line 109
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {p1, p4, p5, p6, p0}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    .line 110
    invoke-direct {p0, p4, p5, p6}, Lnet/simonvt/datepicker/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/simonvt/datepicker/DatePickerDialog$OnDateSetListener;III)V
    .locals 8

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    sget v0, Lnet/simonvt/datepicker/R$style;->Theme_Dialog_Alert:I

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

    invoke-direct/range {v1 .. v7}, Lnet/simonvt/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;ILnet/simonvt/datepicker/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .line 144
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mCallBack:Lnet/simonvt/datepicker/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Lnet/simonvt/datepicker/DatePicker;->clearFocus()V

    .line 146
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mCallBack:Lnet/simonvt/datepicker/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    iget-object v2, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v2}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    .line 147
    invoke-virtual {v3}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v4}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 146
    invoke-interface {v0, v1, v2, v3, v4}, Lnet/simonvt/datepicker/DatePickerDialog$OnDateSetListener;->onDateSet(Lnet/simonvt/datepicker/DatePicker;III)V

    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 2

    .line 152
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0}, Lnet/simonvt/datepicker/DatePicker;->getCalendarViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 154
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 155
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 156
    invoke-virtual {p0}, Lnet/simonvt/datepicker/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 157
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const v0, 0x18016

    .line 156
    invoke-static {p1, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Lnet/simonvt/datepicker/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    iput-boolean v1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mTitleNeedsUpdate:Z

    goto :goto_0

    .line 166
    :cond_0
    iget-boolean p1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mTitleNeedsUpdate:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 168
    sget p1, Lnet/simonvt/datepicker/R$string;->date_picker_dialog_title:I

    invoke-virtual {p0, p1}, Lnet/simonvt/datepicker/DatePickerDialog;->setTitle(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getDatePicker()Lnet/simonvt/datepicker/DatePicker;
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lnet/simonvt/datepicker/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method public onDateChanged(Lnet/simonvt/datepicker/DatePicker;III)V
    .locals 0

    .line 119
    iget-object p1, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {p1, p2, p3, p4, p0}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    .line 120
    invoke-direct {p0, p2, p3, p4}, Lnet/simonvt/datepicker/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 184
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    .line 186
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    .line 187
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 188
    iget-object v2, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v2, v0, v1, p1, p0}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 175
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "year"

    .line 176
    iget-object v2, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v2}, Lnet/simonvt/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    .line 177
    iget-object v2, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v2}, Lnet/simonvt/datepicker/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "day"

    .line 178
    iget-object v2, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v2}, Lnet/simonvt/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public updateDate(III)V
    .locals 1

    .line 140
    iget-object v0, p0, Lnet/simonvt/datepicker/DatePickerDialog;->mDatePicker:Lnet/simonvt/datepicker/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->updateDate(III)V

    return-void
.end method
