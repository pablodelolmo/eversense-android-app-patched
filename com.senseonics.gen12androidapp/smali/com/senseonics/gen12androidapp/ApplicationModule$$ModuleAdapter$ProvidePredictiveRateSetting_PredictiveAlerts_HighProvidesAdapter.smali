.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_PredictiveAlerts_HighProvidesAdapter;
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
    name = "ProvidePredictiveRateSetting_PredictiveAlerts_HighProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "com.senseonics.gen12androidapp.PredictiveRateSetting_PredictiveAlerts_High"

    const-string v1, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v2, "providePredictiveRateSetting_PredictiveAlerts_High"

    const/4 v3, 0x0

    .line 1712
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1713
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_PredictiveAlerts_HighProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 1714
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_PredictiveAlerts_HighProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;
    .locals 1

    .line 1723
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_PredictiveAlerts_HighProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ApplicationModule;->providePredictiveRateSetting_PredictiveAlerts_High()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1707
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvidePredictiveRateSetting_PredictiveAlerts_HighProvidesAdapter;->get()Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    move-result-object v0

    return-object v0
.end method
