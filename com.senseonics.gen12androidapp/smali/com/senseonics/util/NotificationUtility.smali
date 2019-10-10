.class public Lcom/senseonics/util/NotificationUtility;
.super Ljava/lang/Object;
.source "NotificationUtility.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

.field private connection_state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private notificationManager:Landroid/app/NotificationManager;

.field private previousIntent:Landroid/content/Intent;

.field private shouldPreventUserClearAll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/senseonics/util/AlarmRingtoneManager;Lde/greenrobot/event/EventBus;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/senseonics/util/NotificationUtility;->shouldPreventUserClearAll:Z

    .line 54
    iput-object p1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    .line 56
    iput-object p3, p0, Lcom/senseonics/util/NotificationUtility;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 57
    iput-object p4, p0, Lcom/senseonics/util/NotificationUtility;->eventBus:Lde/greenrobot/event/EventBus;

    .line 58
    iget-object p1, p0, Lcom/senseonics/util/NotificationUtility;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 59
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    iput-object p1, p0, Lcom/senseonics/util/NotificationUtility;->connection_state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 60
    invoke-virtual {p0}, Lcom/senseonics/util/NotificationUtility;->createChannels()V

    return-void
.end method

.method private addDefaultVibrateLight(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    const/4 v0, 0x6

    .line 156
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private addPriority(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1

    const/4 v0, 0x2

    .line 164
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method private getDefaultIntent()Landroid/content/Intent;
    .locals 3

    .line 253
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    const-class v2, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getForegroundServiceNotification(I)Landroid/app/Notification;
    .locals 4

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    invoke-direct {p0, v0}, Lcom/senseonics/util/NotificationUtility;->getPreviousIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    sget-object v3, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 173
    invoke-virtual {v3}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0800c4

    .line 174
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "Eversense CGM"

    .line 175
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    .line 176
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    .line 177
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 178
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private getForegroundServiceNotification_Connected()Landroid/app/Notification;
    .locals 1

    const v0, 0x7f0f0085

    .line 183
    invoke-direct {p0, v0}, Lcom/senseonics/util/NotificationUtility;->getForegroundServiceNotification(I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getForegroundServiceNotification_Disconnected()Landroid/app/Notification;
    .locals 1

    const v0, 0x7f0f0191

    .line 187
    invoke-direct {p0, v0}, Lcom/senseonics/util/NotificationUtility;->getForegroundServiceNotification(I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private getPreviousIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x400

    const/4 v2, 0x0

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 228
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 230
    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    iget-object p1, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 233
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 239
    iput-object p1, p0, Lcom/senseonics/util/NotificationUtility;->previousIntent:Landroid/content/Intent;

    .line 242
    :cond_3
    iget-object p1, p0, Lcom/senseonics/util/NotificationUtility;->previousIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 247
    invoke-direct {p0}, Lcom/senseonics/util/NotificationUtility;->getDefaultIntent()Landroid/content/Intent;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method private getRingtone(I)Landroid/media/Ringtone;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/senseonics/util/NotificationUtility;->getSoundUri(I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    return-object p1
.end method

.method private getSoundUri(I)Landroid/net/Uri;
    .locals 1

    .line 145
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 146
    iget-object p1, p0, Lcom/senseonics/util/NotificationUtility;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {v0}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayLowAlarmSound()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/util/AlarmRingtoneManager;->getUriforRingtone(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 148
    iget-object p1, p0, Lcom/senseonics/util/NotificationUtility;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {v0}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayHighAlarmSound()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/util/AlarmRingtoneManager;->getUriforRingtone(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 150
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private sendNotification(Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 108
    new-instance p1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    sget-object v1, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_ALERT:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 109
    invoke-virtual {v1}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 111
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Lcom/senseonics/util/NotificationUtility;->addDefaultVibrateLight(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/senseonics/util/NotificationUtility;->addPriority(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 117
    invoke-virtual {p1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    invoke-virtual {p1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 120
    iget-boolean p2, p0, Lcom/senseonics/util/NotificationUtility;->shouldPreventUserClearAll:Z

    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 122
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 123
    invoke-direct {p0, p2}, Lcom/senseonics/util/NotificationUtility;->getPreviousIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 124
    iget-object p3, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    const/4 p4, 0x0

    invoke-static {p3, p4, p2, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 127
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 130
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_0

    .line 131
    invoke-direct {p0, p6}, Lcom/senseonics/util/NotificationUtility;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0, p6}, Lcom/senseonics/util/NotificationUtility;->getSoundUri(I)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 136
    :goto_0
    iget-object p2, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p6, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public cancelAllNotification()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public cancelNotification(Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method createChannels()V
    .locals 6

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 265
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 266
    invoke-virtual {v1}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    iget-object v3, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    .line 267
    invoke-virtual {v2, v3}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 270
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 271
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 272
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 276
    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v3, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_ALERT:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    .line 277
    invoke-virtual {v3}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_ALERT:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    iget-object v5, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    .line 278
    invoke-virtual {v4, v5}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x1

    .line 281
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 282
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 283
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 285
    invoke-virtual {v2, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 287
    sget-object v1, Lcom/senseonics/util/NotificationChannels$CHANNEL;->CHANNEL_FOREGROUND_OLD:Lcom/senseonics/util/NotificationChannels$CHANNEL;

    invoke-virtual {v1}, Lcom/senseonics/util/NotificationChannels$CHANNEL;->getId()Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v3, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 290
    iget-object v3, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 293
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method public createMemberRemovedNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 74
    const-class v1, Lcom/senseonics/gen12androidapp/MainActivity;

    sget v6, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_MEMBER_REMOVED:I

    const v2, 0x7f0800c4

    const/high16 v5, 0x8000000

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/util/NotificationUtility;->sendNotification(Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public varargs createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V
    .locals 9

    .line 81
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v5, v1

    .line 86
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    goto :goto_0

    :cond_1
    move-object v6, v1

    .line 92
    :goto_0
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getWhiteIcon()I

    move-result v4

    .line 94
    const-class v3, Lcom/senseonics/gen12androidapp/MainActivity;

    const/high16 v7, 0x8000000

    .line 95
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v8

    move-object v2, p0

    .line 94
    invoke-direct/range {v2 .. v8}, Lcom/senseonics/util/NotificationUtility;->sendNotification(Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public createTempProfileTurnedOffNotification()V
    .locals 9

    .line 64
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    const v1, 0x7f0f0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->context:Landroid/content/Context;

    const v1, 0x7f0f024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 68
    const-class v3, Lcom/senseonics/gen12androidapp/MainActivity;

    sget v8, Lcom/senseonics/util/TransmitterMessageCode;->NOTIFICATION_ID_TEMP_PROFILE_TURNED_OFF:I

    const v4, 0x7f0800c4

    const/high16 v7, 0x8000000

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/senseonics/util/NotificationUtility;->sendNotification(Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public getForegroundServiceNotification()Landroid/app/Notification;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/senseonics/util/NotificationUtility;->connection_state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/senseonics/util/NotificationUtility;->getForegroundServiceNotification_Connected()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/util/NotificationUtility;->getForegroundServiceNotification_Disconnected()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 2

    .line 199
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 200
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq p1, v0, :cond_0

    .line 201
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    :cond_0
    const/4 v0, 0x0

    .line 205
    iget-object v1, p0, Lcom/senseonics/util/NotificationUtility;->connection_state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 208
    :cond_1
    iput-object p1, p0, Lcom/senseonics/util/NotificationUtility;->connection_state:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eqz v0, :cond_2

    .line 211
    iget-object p1, p0, Lcom/senseonics/util/NotificationUtility;->notificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x539

    invoke-virtual {p0}, Lcom/senseonics/util/NotificationUtility;->getForegroundServiceNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method
