.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "ApplicationModule$$ModuleAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideMainThreadSchedulerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "com.senseonics.gen12androidapp.rx.MainThreadScheduler"

    const-string v1, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v2, "provideMainThreadScheduler"

    const/4 v3, 0x1

    .line 864
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 865
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    .line 866
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideMainThreadScheduler()Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 859
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMainThreadSchedulerProvidesAdapter;->get()Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    move-result-object v0

    return-object v0
.end method