.class public final Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectExpiryPeriodProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "ServiceModule$$ModuleAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideDisconnectExpiryPeriodProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Ljava/lang/Long;",
        ">;",
        "Ljavax/inject/Provider<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/bluetoothle/ServiceModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/ServiceModule;)V
    .locals 4

    const-string v0, "@javax.inject.Named(value=DISCONNECT_EXPIRY_PERIOD)/java.lang.Long"

    const-string v1, "com.senseonics.bluetoothle.ServiceModule"

    const-string v2, "provideDisconnectExpiryPeriod"

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectExpiryPeriodProvidesAdapter;->module:Lcom/senseonics/bluetoothle/ServiceModule;

    const/4 p1, 0x1

    .line 159
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectExpiryPeriodProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectExpiryPeriodProvidesAdapter;->module:Lcom/senseonics/bluetoothle/ServiceModule;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/ServiceModule;->provideDisconnectExpiryPeriod()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideDisconnectExpiryPeriodProvidesAdapter;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
