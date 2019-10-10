.class public Lcom/senseonics/gen12androidapp/ActivityModule;
.super Ljava/lang/Object;
.source "ActivityModule.java"


# annotations
.annotation runtime Ldagger/Module;
    addsTo = Lcom/senseonics/gen12androidapp/ApplicationModule;
    injects = {
        Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;,
        Lcom/senseonics/fragments/StatisticsFragment;,
        Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;,
        Lcom/senseonics/fragments/StatisticsPieChartFragment;,
        Lcom/senseonics/fragments/StatisticsListFragment;,
        Lcom/senseonics/pairing/BluetoothPairingFragment;,
        Lcom/senseonics/gen12androidapp/MainActivity;,
        Lcom/senseonics/gen12androidapp/BaseMVPActivity;,
        Lcom/senseonics/authentication/UserLoginActivity;,
        Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;
    }
    library = true
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ActivityModule;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method provideBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 60
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method

.method provideIsFirstRun(Landroid/content/Context;)Z
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "IS_FIRST_RUN"
    .end annotation

    .line 44
    invoke-static {p1}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method provideRefreshButton(Landroid/app/Activity;)Landroid/widget/ImageButton;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "REFRESH_BUTTON"
    .end annotation

    const v0, 0x7f09021c

    .line 50
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    return-object p1
.end method

.method providesActivity()Landroid/app/Activity;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ActivityModule;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method providesBluetoothService(Landroid/app/Activity;)Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 55
    check-cast p1, Lcom/senseonics/gen12androidapp/ServiceActivity;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/ServiceActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object p1

    return-object p1
.end method
