.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideThresholdSetting_HighAlarm_AdditionalProvidesAdapter;
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
    name = "ProvideThresholdSetting_HighAlarm_AdditionalProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "com.senseonics.gen12androidapp.ThresholdSetting_HighAlarm_Additional"

    const-string v1, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v2, "provideThresholdSetting_HighAlarm_Additional"

    const/4 v3, 0x0

    .line 1577
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1578
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideThresholdSetting_HighAlarm_AdditionalProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 1579
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideThresholdSetting_HighAlarm_AdditionalProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideThresholdSetting_HighAlarm_AdditionalProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideThresholdSetting_HighAlarm_Additional()Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1572
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideThresholdSetting_HighAlarm_AdditionalProvidesAdapter;->get()Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    move-result-object v0

    return-object v0
.end method
