.class public Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;
.super Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;
.source "TransmitterStaleGlucoseVisibilityChecker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityChecker;-><init>(Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lde/greenrobot/event/EventBus;)V

    return-void
.end method


# virtual methods
.method protected getCheckTime()J
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->getShowStaleGlucoseVisibilityCheckTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getURL()Ljava/lang/String;
    .locals 1

    const-string v0, "https://www.eversensedms.com/MMAFlags/ShowStaleGlucoseAlert.txt"

    return-object v0
.end method

.method protected getVisibility()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->getShowStaleGlucoseAlert()Z

    move-result v0

    return v0
.end method

.method protected setCheckTime(J)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->setShowStaleGlucoseVisibilityCheckTime(J)V

    return-void
.end method

.method protected setVisibility(Z)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->setShowStaleGlucoseAlert(Z)V

    return-void
.end method

.method protected shouldCheck()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
