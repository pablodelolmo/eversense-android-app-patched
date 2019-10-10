.class public final Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideIsForegroundProvidesAdapter;
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
    name = "ProvideIsForegroundProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljavax/inject/Provider<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/bluetoothle/ServiceModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/ServiceModule;)V
    .locals 4

    const-string v0, "@javax.inject.Named(value=IS_FOREGROUND)/java.lang.Boolean"

    const-string v1, "com.senseonics.bluetoothle.ServiceModule"

    const-string v2, "provideIsForeground"

    const/4 v3, 0x0

    .line 288
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 289
    iput-object p1, p0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideIsForegroundProvidesAdapter;->module:Lcom/senseonics/bluetoothle/ServiceModule;

    const/4 p1, 0x1

    .line 290
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideIsForegroundProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideIsForegroundProvidesAdapter;->module:Lcom/senseonics/bluetoothle/ServiceModule;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/ServiceModule;->provideIsForeground()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideIsForegroundProvidesAdapter;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
