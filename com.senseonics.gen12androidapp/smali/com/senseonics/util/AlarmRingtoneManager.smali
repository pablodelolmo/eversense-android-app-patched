.class public Lcom/senseonics/util/AlarmRingtoneManager;
.super Ljava/lang/Object;
.source "AlarmRingtoneManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public final DEFAULT_INDEX:I

.field private final DayHighAlarmSoundPref:Ljava/lang/String;

.field private final DayLowAlarmSoundPref:Ljava/lang/String;

.field private final PACKAGE_NAME:Ljava/lang/String;

.field private RingtoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.resource://com.senseonics.gen12androidapp/"

    .line 19
    iput-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->DEFAULT_INDEX:I

    const-string v0, "SoundSettingMgr"

    .line 21
    iput-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->TAG:Ljava/lang/String;

    const-string v0, "prefDayLowAlarmSound"

    .line 22
    iput-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->DayLowAlarmSoundPref:Ljava/lang/String;

    const-string v0, "prefDayHighAlarmSound"

    .line 23
    iput-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->DayHighAlarmSoundPref:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/senseonics/util/AlarmRingtoneManager;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/senseonics/util/AlarmRingtoneManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 33
    invoke-direct {p0}, Lcom/senseonics/util/AlarmRingtoneManager;->initRingtoneList()V

    return-void
.end method

.method private getDefaultRingtone()Ljava/lang/String;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getResIdForRingtone(I)I
    .locals 2

    const/high16 v0, 0x7f0e0000

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const p1, 0x7f0e0001

    return p1

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const p1, 0x7f0e0002

    return p1

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const p1, 0x7f0e0003

    return p1

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    const p1, 0x7f0e0004

    return p1

    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    const p1, 0x7f0e0005

    return p1

    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    const p1, 0x7f0e0006

    return p1

    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    const p1, 0x7f0e0007

    return p1

    :cond_7
    const/16 v1, 0x9

    if-ne p1, v1, :cond_8

    const p1, 0x7f0e0008

    return p1

    :cond_8
    const/16 v1, 0xa

    if-ne p1, v1, :cond_9

    const p1, 0x7f0e0009

    return p1

    :cond_9
    const/16 v1, 0xb

    if-ne p1, v1, :cond_a

    const p1, 0x7f0e000a

    return p1

    :cond_a
    const/16 v1, 0xc

    if-ne p1, v1, :cond_b

    const p1, 0x7f0e000b

    return p1

    :cond_b
    const/16 v1, 0xd

    if-ne p1, v1, :cond_c

    const p1, 0x7f0e000c

    return p1

    :cond_c
    const/16 v1, 0xe

    if-ne p1, v1, :cond_d

    const p1, 0x7f0e000d

    return p1

    :cond_d
    const/16 v1, 0xf

    if-ne p1, v1, :cond_e

    const p1, 0x7f0e000e

    return p1

    :cond_e
    const/16 v1, 0x10

    if-ne p1, v1, :cond_f

    const p1, 0x7f0e000f

    return p1

    :cond_f
    const/16 v1, 0x11

    if-ne p1, v1, :cond_10

    const p1, 0x7f0e0010

    return p1

    :cond_10
    const/16 v1, 0x12

    if-ne p1, v1, :cond_11

    const p1, 0x7f0e0011

    return p1

    :cond_11
    const/16 v1, 0x13

    if-ne p1, v1, :cond_12

    const p1, 0x7f0e0012

    return p1

    :cond_12
    const/16 v1, 0x14

    if-ne p1, v1, :cond_13

    const p1, 0x7f0e0013

    return p1

    :cond_13
    const/16 v1, 0x15

    if-ne p1, v1, :cond_14

    const p1, 0x7f0e0014

    return p1

    :cond_14
    const/16 v1, 0x16

    if-ne p1, v1, :cond_15

    const p1, 0x7f0e0015

    return p1

    :cond_15
    const/16 v1, 0x17

    if-ne p1, v1, :cond_16

    const p1, 0x7f0e0016

    return p1

    :cond_16
    const/16 v1, 0x18

    if-ne p1, v1, :cond_17

    const p1, 0x7f0e0017

    return p1

    :cond_17
    const/16 v1, 0x19

    if-ne p1, v1, :cond_18

    const p1, 0x7f0e0018

    return p1

    :cond_18
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_19

    const p1, 0x7f0e0019

    return p1

    :cond_19
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_1a

    const p1, 0x7f0e001a

    return p1

    :cond_1a
    return v0
.end method

.method private getResIdForRingtone(Ljava/lang/String;)I
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/senseonics/util/AlarmRingtoneManager;->getRingtoneIndex(Ljava/lang/String;)I

    move-result p1

    .line 92
    invoke-direct {p0, p1}, Lcom/senseonics/util/AlarmRingtoneManager;->getResIdForRingtone(I)I

    move-result p1

    return p1
.end method

.method private initRingtoneList()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    .line 38
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Apex"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Beacon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Bulletin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "By The Seaside"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Chimes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Circuit"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Constellation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Cosmic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Crystals"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Hillside"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Illuminate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Night Owl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Opening"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Playtime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Presto"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Radar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Radiate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Ripples"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Sencha"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Signal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Silk"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Slow Rise"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Stargaze"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Summit"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Twinkle"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Uplift"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const-string v1, "Waves"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDayHighAlarmSound()Ljava/lang/String;
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->context:Landroid/content/Context;

    const-string v1, "prefDayHighAlarmSound"

    invoke-direct {p0}, Lcom/senseonics/util/AlarmRingtoneManager;->getDefaultRingtone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->getSettingsForStringWithDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundSettingMgr"

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeT Day High:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getDayLowAlarmSound()Ljava/lang/String;
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->context:Landroid/content/Context;

    const-string v1, "prefDayLowAlarmSound"

    invoke-direct {p0}, Lcom/senseonics/util/AlarmRingtoneManager;->getDefaultRingtone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->getSettingsForStringWithDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundSettingMgr"

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeT Day Low:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getRingtoneIndex(Ljava/lang/String;)I
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "SoundSettingMgr"

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeT index of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getRingtoneList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUriforRingtone(I)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 83
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://com.senseonics.gen12androidapp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/senseonics/util/AlarmRingtoneManager;->getResIdForRingtone(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getUriforRingtone(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 74
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://com.senseonics.gen12androidapp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/senseonics/util/AlarmRingtoneManager;->getResIdForRingtone(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public ringtoneAtIndex(I)Ljava/lang/String;
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->RingtoneList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "SoundSettingMgr"

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get ringtone at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public setAlarmSoundsToDefaults()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "prefDayLowAlarmSound"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/senseonics/util/AlarmRingtoneManager;->getDefaultRingtone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/util/AlarmRingtoneManager;->setDayLowAlarmSound(Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "prefDayHighAlarmSound"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/senseonics/util/AlarmRingtoneManager;->getDefaultRingtone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/util/AlarmRingtoneManager;->setDayHighAlarmSound(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setDayHighAlarmSound(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SoundSettingMgr"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeT Day High:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->context:Landroid/content/Context;

    const-string v1, "prefDayHighAlarmSound"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDayLowAlarmSound(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SoundSettingMgr"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeT Day Low:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/senseonics/util/AlarmRingtoneManager;->context:Landroid/content/Context;

    const-string v1, "prefDayLowAlarmSound"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
