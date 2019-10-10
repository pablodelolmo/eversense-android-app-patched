.class public Lcom/senseonics/util/AccountConfigurations;
.super Ljava/lang/Object;
.source "AccountConfigurations.java"


# static fields
.field private static final PartNumber_CE_XL_en:Ljava/lang/String; = "FG-5301-01-300"

.field private static final PartNumber_CE_da:Ljava/lang/String; = "FG-5300-08-200"

.field private static final PartNumber_CE_de:Ljava/lang/String; = "FG-5300-04-200"

.field private static final PartNumber_CE_en:Ljava/lang/String; = "FG-5300-01-300"

.field private static final PartNumber_CE_es:Ljava/lang/String; = "FG-5300-06-200"

.field private static final PartNumber_CE_fr:Ljava/lang/String; = "FG-5300-09-200"

.field private static final PartNumber_CE_it:Ljava/lang/String; = "FG-5300-05-200"

.field private static final PartNumber_CE_nb:Ljava/lang/String; = "FG-5300-03-200"

.field private static final PartNumber_CE_nl:Ljava/lang/String; = "FG-5300-07-200"

.field private static final PartNumber_CE_sv:Ljava/lang/String; = "FG-5300-02-200"

.field private static final PartNumber_US_en:Ljava/lang/String; = "FG-5502-01-300"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalibrateLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    const v0, 0x7f0b0073

    return v0
.end method

.method static getCriticalFaultFetchLimit()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method static getCriticalFaultTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Utils$EVENT_TYPE;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 57
    new-array v0, v0, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDMS_Upload_Allow_Next_Operation_Seconds()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public static getDMS_Upload_Interval()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static getDocumentLanguageToDisplay()Ljava/lang/String;
    .locals 7

    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/senseonics/gen12androidapp/BuildConfig;->DOCUMENTS_LANGUAGES:[Ljava/lang/String;

    const-string v2, "en"

    .line 96
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static getEventLogLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    const v0, 0x7f0b0025

    return v0
.end method

.method public static getExerciseLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    const v0, 0x7f0b005d

    return v0
.end method

.method public static getGlucoseLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    const v0, 0x7f0b005f

    return v0
.end method

.method public static getGlucoseSettingLayout(Z)I
    .locals 0
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    if-eqz p0, :cond_0

    const p0, 0x7f0b0027

    return p0

    .line 157
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0b0026

    goto :goto_0

    :cond_1
    const p0, 0x7f0b0028

    :goto_0
    return p0
.end method

.method public static getHealthLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    const v0, 0x7f0b0061

    return v0
.end method

.method public static getInsulinLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    const v0, 0x7f0b0064

    return v0
.end method

.method public static getLoginActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 81
    const-class v0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    return-object v0
.end method

.method public static getMealLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    const v0, 0x7f0b0066

    return v0
.end method

.method public static getPartNumber(Z)Ljava/lang/String;
    .locals 4

    .line 106
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FG-5502-01-300"

    goto/16 :goto_1

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "FG-5301-01-300"

    goto/16 :goto_1

    .line 113
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FG-5300-01-300"

    const/4 v1, -0x1

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc7d

    if-eq v2, v3, :cond_9

    const/16 v3, 0xc81

    if-eq v2, v3, :cond_8

    const/16 v3, 0xcae

    if-eq v2, v3, :cond_7

    const/16 v3, 0xccc

    if-eq v2, v3, :cond_6

    const/16 v3, 0xd2b

    if-eq v2, v3, :cond_5

    const/16 v3, 0xdb4

    if-eq v2, v3, :cond_4

    const/16 v3, 0xdbe

    if-eq v2, v3, :cond_3

    const/16 v3, 0xe63

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "sv"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "nl"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v1, 0x7

    goto :goto_0

    :cond_4
    const-string v2, "nb"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const-string v2, "it"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v1, 0x6

    goto :goto_0

    :cond_6
    const-string v2, "fr"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v1, 0x5

    goto :goto_0

    :cond_7
    const-string v2, "es"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v1, 0x4

    goto :goto_0

    :cond_8
    const-string v2, "de"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v1, 0x2

    goto :goto_0

    :cond_9
    const-string v2, "da"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v1, 0x3

    :cond_a
    :goto_0
    packed-switch v1, :pswitch_data_0

    move-object p0, v0

    goto :goto_1

    :pswitch_0
    const-string p0, "FG-5300-07-200"

    goto :goto_1

    :pswitch_1
    const-string p0, "FG-5300-05-200"

    goto :goto_1

    :pswitch_2
    const-string p0, "FG-5300-09-200"

    goto :goto_1

    :pswitch_3
    const-string p0, "FG-5300-06-200"

    goto :goto_1

    :pswitch_4
    const-string p0, "FG-5300-08-200"

    goto :goto_1

    :pswitch_5
    const-string p0, "FG-5300-04-200"

    goto :goto_1

    :pswitch_6
    const-string p0, "FG-5300-02-200"

    goto :goto_1

    :pswitch_7
    const-string p0, "FG-5300-03-200"

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTempProfileLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 149
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0083

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0084

    :goto_0
    return v0
.end method

.method public static isLoginActivity(Landroid/content/Context;)Z
    .locals 0

    .line 76
    instance-of p0, p0, Lcom/senseonics/gen12androidapp/UserAccountLoginActivity;

    return p0
.end method

.method public static isUS()Z
    .locals 2

    const-string v0, "OUS"

    const-string v1, "US"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isVeryLowBatteryAlarmCritical()Z
    .locals 1

    .line 162
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUS()Z

    move-result v0

    return v0
.end method

.method public static setSwitchStyle(Landroid/widget/Switch;)V
    .locals 1

    const v0, 0x7f080175

    .line 219
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbResource(I)V

    const v0, 0x7f08017a

    .line 220
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackResource(I)V

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setShowText(Z)V

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setSwitchMinWidth(I)V

    const/16 v0, 0x2a

    .line 223
    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbTextPadding(I)V

    return-void
.end method

.method public static supportRollingCal(F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
