.class public Lcom/senseonics/bluetoothle/AlarmPendingIntentFactory;
.super Ljava/lang/Object;
.source "AlarmPendingIntentFactory.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAlarmPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/util/AlarmReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0xd36f

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method
