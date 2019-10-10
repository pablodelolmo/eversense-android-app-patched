.class public Lcom/senseonics/gen12androidapp/SoundSelectionActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "SoundSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private ringTone:Landroid/media/Ringtone;

.field private soundListView:Landroid/widget/ListView;

.field private soundType:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const-string v0, "SoundSettingSelect"

    .line 20
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->nullifyRingtone()V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)Landroid/media/Ringtone;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->ringTone:Landroid/media/Ringtone;

    return-object p0
.end method

.method static synthetic access$102(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->ringTone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic access$200(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundType:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    return-object p0
.end method

.method private nullifyRingtone()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->ringTone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->ringTone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->ringTone:Landroid/media/Ringtone;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 27
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0035

    .line 29
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->initializeLayout(I)Landroid/view/View;

    const p1, 0x7f09025b

    .line 31
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    .line 32
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 33
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {v2}, Lcom/senseonics/util/AlarmRingtoneManager;->getRingtoneList()Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x7f0b00d0

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "LowAlarmDay"

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "SoundSettingSelect"

    const-string v1, "Is Low Alarm Day"

    .line 38
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object p1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ALARM_SOUND_TYPE_LOW_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundType:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    goto :goto_0

    :cond_0
    const-string v1, "HighAlarmDay"

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SoundSettingSelect"

    const-string v1, "Is High Alarm Day"

    .line 42
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object p1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ALARM_SOUND_TYPE_HIGH_DAY:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundType:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    :cond_1
    :goto_0
    const-string p1, ""

    .line 47
    sget-object v1, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$2;->$SwitchMap$com$senseonics$gen12androidapp$SoundSelectionActivity$ALARM_SOUND_TYPE:[I

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundType:Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$ALARM_SOUND_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    const p1, 0x7f0f0234

    .line 53
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {v3}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayHighAlarmSound()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/senseonics/util/AlarmRingtoneManager;->getRingtoneIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :pswitch_1
    const p1, 0x7f0f0236

    .line 49
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {v3}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayLowAlarmSound()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/senseonics/util/AlarmRingtoneManager;->getRingtoneIndex(Ljava/lang/String;)I

    move-result v1

    :goto_1
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0, v2, p1, v3}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 60
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 62
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->soundListView:Landroid/widget/ListView;

    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity$1;-><init>(Lcom/senseonics/gen12androidapp/SoundSelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .line 102
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    .line 103
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSelectionActivity;->nullifyRingtone()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 97
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method
