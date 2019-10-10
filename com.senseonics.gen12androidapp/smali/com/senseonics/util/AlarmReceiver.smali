.class public Lcom/senseonics/util/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# instance fields
.field protected bus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 22
    iget-object p2, p0, Lcom/senseonics/util/AlarmReceiver;->bus:Lde/greenrobot/event/EventBus;

    if-nez p2, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {p1, p0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->inject(Ljava/lang/Object;)V

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/senseonics/util/AlarmReceiver;->bus:Lde/greenrobot/event/EventBus;

    new-instance p2, Lcom/senseonics/bluetoothle/AlarmFiredEvent;

    invoke-direct {p2}, Lcom/senseonics/bluetoothle/AlarmFiredEvent;-><init>()V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
