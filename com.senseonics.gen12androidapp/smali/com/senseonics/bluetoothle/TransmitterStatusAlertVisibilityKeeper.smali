.class public Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;
.super Ljava/lang/Object;
.source "TransmitterStatusAlertVisibilityKeeper.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final prefShowKeepAliveAlert:Ljava/lang/String;

.field private final prefShowKeepAliveVisibilityCheckTime:Ljava/lang/String;

.field private final prefShowStaleGlucoseAlert:Ljava/lang/String;

.field private final prefShowStaleGlucoseVisibilityCheckTime:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "showKeepAliveAlert"

    .line 10
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->prefShowKeepAliveAlert:Ljava/lang/String;

    const-string v0, "showKeepAliveVisibilityCheckTime"

    .line 11
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->prefShowKeepAliveVisibilityCheckTime:Ljava/lang/String;

    const-string v0, "showStaleGlucoseAlert"

    .line 13
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->prefShowStaleGlucoseAlert:Ljava/lang/String;

    const-string v0, "showStaleGlucoseVisibilityCheckTime"

    .line 14
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->prefShowStaleGlucoseVisibilityCheckTime:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method disableShowKeepAliveAlertOnce()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "showKeepAliveAlert.disableOnce"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showKeepAliveAlert.disableOnce"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    invoke-virtual {p0, v2}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->setShowKeepAliveAlert(Z)V

    :cond_0
    return-void
.end method

.method getShowKeepAliveAlert()Z
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "showKeepAliveAlert"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getShowKeepAliveVisibilityCheckTime()J
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "showKeepAliveVisibilityCheckTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getShowStaleGlucoseAlert()Z
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "showStaleGlucoseAlert"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getShowStaleGlucoseVisibilityCheckTime()J
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "showStaleGlucoseVisibilityCheckTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method setShowKeepAliveAlert(Z)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showKeepAliveAlert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method setShowKeepAliveVisibilityCheckTime(J)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showKeepAliveVisibilityCheckTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method setShowStaleGlucoseAlert(Z)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showStaleGlucoseAlert"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method setShowStaleGlucoseVisibilityCheckTime(J)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showStaleGlucoseVisibilityCheckTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
