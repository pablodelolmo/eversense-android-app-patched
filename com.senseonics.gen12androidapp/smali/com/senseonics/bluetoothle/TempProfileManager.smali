.class public Lcom/senseonics/bluetoothle/TempProfileManager;
.super Ljava/lang/Object;
.source "TempProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;,
        Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;,
        Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final DURATION_MAX_HOUR:I = 0x24

.field public static final DURATION_MINUTE_OPTION_0:I = 0x0

.field public static final DURATION_MINUTE_OPTION_1:I = 0x1e

.field public static final DURATION_MIN_HOUR:I = 0x0

.field public static final TEMP_PROFILE_DURATION_DEFAULT_VALUE:I = 0x1e

.field public static final TEMP_PROFILE_EXPIRE_SECONDS:I = -0x1


# instance fields
.field private final NonTempGlucoseProfilePref:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TempGlucoseProfilePref:Ljava/lang/String;

.field private final TempProfileDurationPref:Ljava/lang/String;

.field private final TempProfileEnabledPref:Ljava/lang/String;

.field private final TempProfileHasPendingPopupPref:Ljava/lang/String;

.field private final TempProfileLastStartOnPref:Ljava/lang/String;

.field private final TempProfileUsedAtLeastOncePref:Ljava/lang/String;

.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private notificationUtility:Lcom/senseonics/util/NotificationUtility;

.field private preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/util/PreferenceObjectSaverRetriver;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lde/greenrobot/event/EventBus;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-class v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v0, "prefNonTempGlucoseProfile"

    .line 54
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->NonTempGlucoseProfilePref:Ljava/lang/String;

    const-string v0, "prefTempGlucoseProfile"

    .line 55
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempGlucoseProfilePref:Ljava/lang/String;

    const-string v0, "prefTempProfileEnabled"

    .line 56
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempProfileEnabledPref:Ljava/lang/String;

    const-string v0, "prefTempProfileUsedAtLeastOnce"

    .line 57
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempProfileUsedAtLeastOncePref:Ljava/lang/String;

    const-string v0, "prefTempProfileDuration"

    .line 58
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempProfileDurationPref:Ljava/lang/String;

    const-string v0, "prefTempProfileLastStartOn"

    .line 59
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempProfileLastStartOnPref:Ljava/lang/String;

    const-string v0, "prefTempProfileHasPendingPopup"

    .line 60
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempProfileHasPendingPopupPref:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    .line 74
    iput-object p3, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 75
    iput-object p4, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 76
    iput-object p5, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    .line 77
    iput-object p6, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 78
    iput-object p7, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 79
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNonTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    if-nez p1, :cond_0

    .line 82
    new-instance p1, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    invoke-direct {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;-><init>()V

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setNonTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    if-nez p1, :cond_1

    .line 86
    new-instance p1, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    invoke-direct {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;-><init>()V

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileDuration()I

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x1e

    .line 90
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileDuration(I)V

    :cond_2
    return-void
.end method

.method private getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 180
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "\"Alarm Low\""

    goto :goto_0

    :pswitch_1
    const-string v0, "\"Alarm High\""

    goto :goto_0

    :pswitch_2
    const-string v0, "\"Target Low\""

    goto :goto_0

    :pswitch_3
    const-string v0, "\"Target High\""

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNonTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "prefNonTempGlucoseProfile"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->retrieveGlucoseProfileFromPreference(Ljava/lang/String;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    return-object v0
.end method

.method private getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;
    .locals 1

    .line 207
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 213
    :pswitch_0
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNonTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "prefTempGlucoseProfile"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->retrieveGlucoseProfileFromPreference(Ljava/lang/String;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    return-object v0
.end method

.method private getUsedAtLeastOnceForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Z
    .locals 2

    const/4 v0, 0x0

    .line 303
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 305
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 308
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE:[I

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->isUsedAtLeastOnce_AlarmLow()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 318
    :pswitch_1
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->isUsedAtLeastOnce_AlarmHigh()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 314
    :pswitch_2
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->isUsedAtLeastOnce_TargetLow()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 310
    :pswitch_3
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->isUsedAtLeastOnce_TargetHigh()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 330
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasValidThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Z
    .locals 0

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private postTempProfileTurnedOffEvent()V
    .locals 4

    .line 635
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****** postTempProfileTurnedOffEvent: not bounded?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-virtual {p0, v3}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileHasPendingPopup(Z)V

    .line 640
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    invoke-virtual {v0}, Lcom/senseonics/util/NotificationUtility;->createTempProfileTurnedOffNotification()V

    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBusPostTempOffEvent()V

    :goto_0
    return-void
.end method

.method private restoreOneGlucoseProfileToStateValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V
    .locals 2

    .line 440
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 443
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v0, "PANIC: getProfileByType returned NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 447
    :cond_0
    invoke-virtual {v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->hasInitialValues()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 450
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 451
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 452
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    :cond_1
    return-void
.end method

.method private setGlucoseProfileToStateValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V
    .locals 3

    .line 418
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 421
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v0, "PANIC: getProfileByType returned NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 427
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set NonTemp Condition II: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-direct {p0, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 430
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set NonTemp Condition II: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-direct {p0, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 433
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set NonTemp Condition II: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-direct {p0, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 436
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set NonTemp Condition II: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setNonTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "prefNonTempGlucoseProfile"

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->saveGlucoseProfileIntoPreference(Ljava/lang/String;Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    return-void
.end method

.method private setProfileByType(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V
    .locals 1

    .line 224
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_TYPE:[I

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 230
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setNonTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "prefTempGlucoseProfile"

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->saveGlucoseProfileIntoPreference(Ljava/lang/String;Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    return-void
.end method


# virtual methods
.method public eventBusPostTempOffEvent()V
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****** eventBusPostTempOffEvent: not bounded?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBus:Lde/greenrobot/event/EventBus;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/TempProfileTurnedOffEvent;

    invoke-direct {v1}, Lcom/senseonics/events/TempProfileTurnedOffEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public formatTempProfileTimeLeftGivenSeconds(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3c

    .line 612
    div-long/2addr p1, v0

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    move-wide p1, v2

    .line 618
    :cond_0
    rem-long v2, p1, v0

    long-to-int v2, v2

    .line 619
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 621
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f024d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const/4 p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTempProfileDuration()I
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileDuration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->getSettingsIntValueForKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempProfileDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getTempProfileEnabled()Ljava/lang/Boolean;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileEnabled"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTempProfileHasPendingPopup()Z
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileHasPendingPopup"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempProfileHasPendingPopup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getTempProfileLastStartOn()J
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileLastStartOn"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTempProfileLastStartOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getTempProfileRemainingTime()J
    .locals 10

    .line 540
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileStatus()Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    move-result-object v0

    .line 542
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_IN_PROGRESS:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileLastStartOn()J

    move-result-wide v6

    .line 544
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v6, 0x3e8

    .line 545
    div-long/2addr v8, v6

    .line 546
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileDuration()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v6, v1

    sub-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v6

    goto :goto_0

    .line 554
    :cond_1
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v2, v4

    .line 558
    :goto_0
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTempProfileRemainingTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method public getTempProfileStatus()Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;
    .locals 7

    .line 564
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_ALREADY_DISABLED:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    .line 566
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 567
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileLastStartOn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 570
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v1, "***** PANIC 1: no Last Enabled Time *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    goto :goto_0

    .line 574
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    .line 575
    div-long/2addr v4, v0

    .line 576
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> Temp Profile Enabled secondsDiff: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " <<"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileDuration()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    .line 580
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v1, "***** PANIC 2: invalid Last Enabled Time *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    goto :goto_0

    :cond_1
    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    .line 584
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_IN_PROGRESS:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    goto :goto_0

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v1, "***** PANIC 3: Expired *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    goto :goto_0

    .line 593
    :cond_3
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_ALREADY_DISABLED:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    :goto_0
    return-object v0
.end method

.method public getTempProfileUsedAtLeastOnce()Ljava/lang/Boolean;
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileUsedAtLeastOnce"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempProfileUsedAtLeastOnce:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I
    .locals 1

    .line 241
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 244
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE:[I

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 258
    :pswitch_0
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->getAlarmLow()I

    move-result p1

    goto :goto_1

    .line 254
    :pswitch_1
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->getAlarmHigh()I

    move-result p1

    goto :goto_1

    .line 250
    :pswitch_2
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->getTargetLow()I

    move-result p1

    goto :goto_1

    .line 246
    :pswitch_3
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->getTargetHigh()I

    move-result p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nonTempProfileToString()Ljava/lang/String;
    .locals 1

    .line 174
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNonTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModelChangedHighAlarmThresholdEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;->getNewValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;->getNewValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->updateGlucoseProfileUponTransmitterStateUpdatedForAttributeWithValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;I)V

    return-void
.end method

.method public onEvent(Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;)V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModelChangedHighTargetThresholdEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;->getNewValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;->getNewValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->updateGlucoseProfileUponTransmitterStateUpdatedForAttributeWithValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;I)V

    return-void
.end method

.method public onEvent(Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;)V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModelChangedLowAlarmThresholdEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;->getNewValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;->getNewValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->updateGlucoseProfileUponTransmitterStateUpdatedForAttributeWithValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;I)V

    return-void
.end method

.method public onEvent(Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;)V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModelChangedLowTargetThresholdEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;->getNewValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;->getNewValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->updateGlucoseProfileUponTransmitterStateUpdatedForAttributeWithValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;I)V

    return-void
.end method

.method public restoreAllGlucoseProfilesToStateValueIfNeeded()V
    .locals 1

    .line 457
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->restoreOneGlucoseProfileToStateValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 458
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->restoreOneGlucoseProfileToStateValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    return-void
.end method

.method public setTempProfileDuration(I)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempProfileDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileDuration"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setTempProfileEnabled(Ljava/lang/Boolean;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempProfileEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileEnabled"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setTempProfileHasPendingPopup(Z)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempProfileHasPendingPopup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileHasPendingPopup"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setTempProfileLastStartOn(J)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempProfileLastStartOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileLastStartOn"

    invoke-static {v0, v1, p1, p2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setTempProfileUsedAtLeastOnce(Ljava/lang/Boolean;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempProfileUsedAtLeastOnce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileUsedAtLeastOnce"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V
    .locals 2

    .line 270
    invoke-direct {p0, p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 273
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string p2, "PANIC: getProfileByType returned NULL"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_0
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE:[I

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setAlarmLow(I)V

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setAlarmHigh(I)V

    goto :goto_0

    .line 283
    :pswitch_2
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setTargetLow(I)V

    goto :goto_0

    .line 279
    :pswitch_3
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setTargetHigh(I)V

    .line 299
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->setProfileByType(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setUsedAtLeastOnceForAttributeForProfileType(ZLcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V
    .locals 2

    .line 334
    invoke-direct {p0, p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string p2, "PANIC: getProfileByType returned NULL"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 341
    :cond_0
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE:[I

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 355
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_AlarmLow(Z)V

    goto :goto_0

    .line 351
    :pswitch_1
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_AlarmHigh(Z)V

    goto :goto_0

    .line 347
    :pswitch_2
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_TargetLow(Z)V

    goto :goto_0

    .line 343
    :pswitch_3
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_TargetHigh(Z)V

    .line 363
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->setProfileByType(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTempProfile(IIII)V
    .locals 6

    .line 498
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileUsedAtLeastOnce()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileLastStartOn()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 502
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string p2, "PANIC: startTempProfile: already turned on"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 506
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileUsedAtLeastOnce(Ljava/lang/Boolean;)V

    .line 508
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileEnabled(Ljava/lang/Boolean;)V

    .line 509
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileLastStartOn(J)V

    .line 512
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeTargetThresholdLow(I)V

    .line 513
    invoke-virtual {p0, p2}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeTargetThresholdHigh(I)V

    .line 514
    invoke-virtual {p0, p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeAlarmThresholdLow(I)V

    .line 515
    invoke-virtual {p0, p4}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeAlarmThresholdHigh(I)V

    return-void
.end method

.method public stopTempProfile()V
    .locals 5

    .line 520
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileLastStartOn()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v1, "PANIC: stopTempProfile: already turned off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 527
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileEnabled(Ljava/lang/Boolean;)V

    .line 528
    invoke-virtual {p0, v1, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileLastStartOn(J)V

    .line 531
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeTargetThresholdLow(I)V

    .line 532
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeTargetThresholdHigh(I)V

    .line 533
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeAlarmThresholdLow(I)V

    .line 534
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeAlarmThresholdHigh(I)V

    return-void
.end method

.method public tempProfileToString()Ljava/lang/String;
    .locals 1

    .line 170
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public turnOffTempProfileIfNeeded()V
    .locals 5

    .line 600
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileRemainingTime()J

    move-result-wide v0

    .line 601
    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOffTempProfileIfNeeded seconds left: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v1, ">>>>>> turnOffTempProfileIfNeeded: turn off <<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->stopTempProfile()V

    .line 606
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->postTempProfileTurnedOffEvent()V

    :cond_0
    return-void
.end method

.method public updateGlucoseProfileUponTransmitterStateUpdatedForAttributeWithValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;I)V
    .locals 3

    .line 378
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set NonTemp Condition I: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-virtual {p0, p2, p1, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 384
    :cond_0
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-direct {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->hasValidThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Temp Condition A: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-virtual {p0, p2, p1, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    goto/16 :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 392
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 395
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PANIC: inconsistent value => disable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 396
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileEnabled(Ljava/lang/Boolean;)V

    const-wide/16 p1, 0x0

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileLastStartOn(J)V

    .line 398
    sget-object p1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setGlucoseProfileToStateValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 399
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->postTempProfileTurnedOffEvent()V

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Temp Condition B: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-virtual {p0, p2, p1, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileUsedAtLeastOnce()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 409
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-direct {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getUsedAtLeastOnceForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Temp Condition C: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-virtual {p0, p2, p1, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public writeAlarmThresholdHigh(I)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteHighGlucoseAlarmRequest(I)V

    return-void
.end method

.method public writeAlarmThresholdLow(I)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteLowGlucoseAlarmRequest(I)V

    return-void
.end method

.method public writeTargetThresholdHigh(I)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteHighGlucoseTarget(I)V

    return-void
.end method

.method public writeTargetThresholdLow(I)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteLowGlucoseTargetRequest(I)V

    return-void
.end method
