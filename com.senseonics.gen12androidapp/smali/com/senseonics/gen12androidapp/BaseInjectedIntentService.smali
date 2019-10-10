.class public abstract Lcom/senseonics/gen12androidapp/BaseInjectedIntentService;
.super Landroid/app/IntentService;
.source "BaseInjectedIntentService.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getModules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v1, Lcom/senseonics/bluetoothle/ServiceModule;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/ServiceModule;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 19
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 20
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseInjectedIntentService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseInjectedIntentService;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->plus([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
