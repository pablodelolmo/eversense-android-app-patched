.class public Lcom/senseonics/util/LocaleChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleChangedReceiver.java"


# instance fields
.field protected notificationUtility:Lcom/senseonics/util/NotificationUtility;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/ObjectGraphApplication;

    invoke-interface {p1, p0}, Lcom/senseonics/gen12androidapp/ObjectGraphApplication;->inject(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/senseonics/util/LocaleChangedReceiver;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    invoke-virtual {p1}, Lcom/senseonics/util/NotificationUtility;->createChannels()V

    :cond_0
    return-void
.end method
