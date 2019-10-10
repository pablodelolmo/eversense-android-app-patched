.class public final Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "ServiceModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideIsForegroundProvidesAdapter;,
        Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;,
        Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideTransmitterContentProviderUriProvidesAdapter;,
        Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideBluetoothManagerProvidesAdapter;,
        Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectExpiryPeriodProvidesAdapter;,
        Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectIntervalFollowUpProvidesAdapter;,
        Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideScanPeriodMillisecondsProvidesAdapter;,
        Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter<",
        "Lcom/senseonics/bluetoothle/ServiceModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final INCLUDES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final INJECTS:[Ljava/lang/String;

.field private static final STATIC_INJECTIONS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "members/com.senseonics.bluetoothle.BluetoothService"

    const-string v1, "members/com.senseonics.graph.GraphCacheIntentService"

    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    .line 19
    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 22
    const-class v1, Lcom/senseonics/bluetoothle/ServiceModule;

    sget-object v2, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    return-void
.end method


# virtual methods
.method public getBindings(Ldagger/internal/BindingsGroup;Lcom/senseonics/bluetoothle/ServiceModule;)V
    .locals 2

    const-string v0, "android.content.ContentResolver"

    .line 31
    new-instance v1, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;-><init>(Lcom/senseonics/bluetoothle/ServiceModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@javax.inject.Named(value=SCAN_PERIOD_MILLISECONDS)/java.lang.Long"

    .line 32
    new-instance v1, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideScanPeriodMillisecondsProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideScanPeriodMillisecondsProvidesAdapter;-><init>(Lcom/senseonics/bluetoothle/ServiceModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@javax.inject.Named(value=DISCONNECT_INTERVAL_FOLLOWUP)/java.lang.Long"

    .line 33
    new-instance v1, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectIntervalFollowUpProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectIntervalFollowUpProvidesAdapter;-><init>(Lcom/senseonics/bluetoothle/ServiceModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@javax.inject.Named(value=DISCONNECT_EXPIRY_PERIOD)/java.lang.Long"

    .line 34
    new-instance v1, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectExpiryPeriodProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectExpiryPeriodProvidesAdapter;-><init>(Lcom/senseonics/bluetoothle/ServiceModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "android.bluetooth.BluetoothManager"

    .line 35
    new-instance v1, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideBluetoothManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideBluetoothManagerProvidesAdapter;-><init>(Lcom/senseonics/bluetoothle/ServiceModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@javax.inject.Named(value=transmitter)/android.net.Uri"

    .line 36
    new-instance v1, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideTransmitterContentProviderUriProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideTransmitterContentProviderUriProvidesAdapter;-><init>(Lcom/senseonics/bluetoothle/ServiceModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.BluetoothService"

    .line 37
    new-instance v1, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;-><init>(Lcom/senseonics/bluetoothle/ServiceModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "@javax.inject.Named(value=IS_FOREGROUND)/java.lang.Boolean"

    .line 38
    new-instance v1, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideIsForegroundProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideIsForegroundProvidesAdapter;-><init>(Lcom/senseonics/bluetoothle/ServiceModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    return-void
.end method

.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/senseonics/bluetoothle/ServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lcom/senseonics/bluetoothle/ServiceModule;)V

    return-void
.end method
