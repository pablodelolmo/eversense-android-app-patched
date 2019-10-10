.class public Lcom/senseonics/gen12androidapp/MealTimeDataHandler;
.super Ljava/lang/Object;
.source "MealTimeDataHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;,
        Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;
    }
.end annotation


# static fields
.field public static PASS_VALUE:Ljava/lang/String; = "Type"


# instance fields
.field private breakfastEndHour:I

.field private breakfastEndMinute:I

.field private breakfastStartHour:I

.field private breakfastStartMinute:I

.field private dinnerEndMinute:I

.field private dinnerEndtHour:I

.field private dinnerStartHour:I

.field private dinnerStartMinute:I

.field private lunchEndHour:I

.field private lunchEndMinute:I

.field private lunchStartHour:I

.field private lunchStartMinute:I

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private sleepEndHour:I

.field private sleepEndtMinute:I

.field private sleepStartHour:I

.field private sleepStartMinute:I

.field private snackEndHour:I

.field private snackEndMinute:I

.field private snackStartHour:I

.field private snackStartMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 86
    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastStartHour:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastStartMinute:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastEndHour:I

    iput v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastEndMinute:I

    iput v2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchStartHour:I

    iput v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchStartMinute:I

    const/16 v2, 0xe

    iput v2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchEndHour:I

    iput v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchEndMinute:I

    iput v2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackStartHour:I

    iput v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackStartMinute:I

    const/16 v2, 0x12

    iput v2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackEndHour:I

    iput v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackEndMinute:I

    iput v2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerStartHour:I

    iput v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerStartMinute:I

    const/16 v2, 0x16

    iput v2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerEndtHour:I

    iput v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerEndMinute:I

    iput v2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepStartHour:I

    iput v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepStartMinute:I

    iput v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepEndHour:I

    iput v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepEndtMinute:I

    .line 100
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 102
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "breakfastStartHour"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastStartHour:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastStartHour:I

    .line 103
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "breakfastStartMinute"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastStartMinute:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastStartMinute:I

    .line 104
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "breakfastEndHour"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastEndHour:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastEndHour:I

    .line 105
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "breakfastEndMinute"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastEndMinute:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastEndMinute:I

    .line 107
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "lunchStartHour"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchStartHour:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchStartHour:I

    .line 108
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "lunchStartMinute"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchStartMinute:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchStartMinute:I

    .line 109
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "lunchEndHour"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchEndHour:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchEndHour:I

    .line 110
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "lunchEndMinute"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchEndMinute:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchEndMinute:I

    .line 112
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "snackStartHour"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackStartHour:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackStartHour:I

    .line 113
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "snackStartMinute"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackStartMinute:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackStartMinute:I

    .line 114
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "snackEndHour"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackEndHour:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackEndHour:I

    .line 115
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "snackEndMinute"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackEndMinute:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackEndMinute:I

    .line 117
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "dinnerStartHour"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerStartHour:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerStartHour:I

    .line 118
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "dinnerStartMinute"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerStartMinute:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerStartMinute:I

    .line 119
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "dinnerEndtHour"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerEndtHour:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerEndtHour:I

    .line 120
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "dinnerEndMinute"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerEndMinute:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerEndMinute:I

    .line 122
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "sleepStartHour"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepStartHour:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepStartHour:I

    .line 123
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "sleepStartMinute"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepStartMinute:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepStartMinute:I

    .line 124
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "sleepEndHour"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepEndHour:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepEndHour:I

    .line 125
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "sleepEndtMinute"

    iget v1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepEndtMinute:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepEndtMinute:I

    return-void
.end method

.method public static getMealTimeString(Landroid/content/Context;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;)Ljava/lang/String;
    .locals 1

    .line 280
    sget-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, " "

    return-object p0

    :pswitch_0
    const p1, 0x7f0f0028

    .line 292
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f0f0231

    .line 290
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f0f00b5

    .line 288
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f0f0232

    .line 286
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f0f015e

    .line 284
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f0f003e

    .line 282
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTimeRangeString(Landroid/content/Context;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Z)Ljava/lang/String;
    .locals 3

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$TimeRange:[I

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string p0, " "

    return-object p0

    :pswitch_0
    const p1, 0x7f0f0028

    .line 66
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :pswitch_1
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->getFromHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 56
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/senseonics/util/Utils;->getHour24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 59
    invoke-static {}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->values()[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    move-result-object p2

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ordinal()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->getFromHour()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 60
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/senseonics/util/Utils;->getHour24HrFormat(Ljava/util/Calendar;Ljava/util/TimeZone;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBreakfastEndHour()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastEndHour:I

    return v0
.end method

.method public getBreakfastEndMinute()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastEndMinute:I

    return v0
.end method

.method public getBreakfastStartHour()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastStartHour:I

    return v0
.end method

.method public getBreakfastStartMinute()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastStartMinute:I

    return v0
.end method

.method public getDinnerEndHour()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerEndtHour:I

    return v0
.end method

.method public getDinnerEndMinute()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerEndMinute:I

    return v0
.end method

.method public getDinnerStartHour()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerStartHour:I

    return v0
.end method

.method public getDinnerStartMinute()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerStartMinute:I

    return v0
.end method

.method public getLunchEndHour()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchEndHour:I

    return v0
.end method

.method public getLunchEndMinute()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchEndMinute:I

    return v0
.end method

.method public getLunchStartHour()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchStartHour:I

    return v0
.end method

.method public getLunchStartMinute()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchStartMinute:I

    return v0
.end method

.method public getSleepEndHour()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepEndHour:I

    return v0
.end method

.method public getSleepEndtMinute()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepEndtMinute:I

    return v0
.end method

.method public getSleepStartHour()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepStartHour:I

    return v0
.end method

.method public getSleepStartMinute()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepStartMinute:I

    return v0
.end method

.method public getSnackEndHour()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackEndHour:I

    return v0
.end method

.method public getSnackEndMinute()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackEndMinute:I

    return v0
.end method

.method public getSnackStartHour()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackStartHour:I

    return v0
.end method

.method public getSnackStartMinute()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackStartMinute:I

    return v0
.end method

.method public setBreakfastEndTime(II)V
    .locals 2

    .line 217
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastEndHour:I

    .line 218
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastEndMinute:I

    .line 219
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "breakfastEndHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "breakfastEndMinute"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBreakfastStartTime(II)V
    .locals 2

    .line 209
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastStartHour:I

    .line 210
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->breakfastStartMinute:I

    .line 211
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "breakfastStartHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "breakfastStartMinute"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDinnerEndTime(II)V
    .locals 2

    .line 259
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerEndtHour:I

    .line 260
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerEndMinute:I

    .line 261
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dinnerEndtHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 262
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "dinnerEndMinute"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDinnerStartTime(II)V
    .locals 2

    .line 252
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerStartHour:I

    .line 253
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->dinnerStartMinute:I

    .line 254
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dinnerStartHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "dinnerStartMinute"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLunchEndTime(II)V
    .locals 2

    .line 231
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchEndHour:I

    .line 232
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchEndMinute:I

    .line 233
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lunchEndHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "lunchEndMinute"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLunchStartTime(II)V
    .locals 2

    .line 224
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchStartHour:I

    .line 225
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->lunchStartMinute:I

    .line 226
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lunchStartHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "lunchStartMinute"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSleepEndTime(II)V
    .locals 2

    .line 273
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepEndHour:I

    .line 274
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepEndtMinute:I

    .line 275
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sleepEndHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 276
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sleepEndtMinute"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSleepStartTime(II)V
    .locals 2

    .line 266
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepStartHour:I

    .line 267
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sleepStartMinute:I

    .line 268
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sleepStartHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "sleepStartMinute"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSnackEndTime(II)V
    .locals 2

    .line 245
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackEndHour:I

    .line 246
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackEndMinute:I

    .line 247
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "snackEndHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "snackEndMinute"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSnackStartTime(II)V
    .locals 2

    .line 238
    iput p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackStartHour:I

    .line 239
    iput p2, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->snackStartMinute:I

    .line 240
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "snackStartHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "snackStartMinute"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
