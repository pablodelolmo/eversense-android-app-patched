.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;
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
    name = "ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Ljava/util/Map<",
        "[I",
        "Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;",
        ">;>;",
        "Ljavax/inject/Provider<",
        "Ljava/util/Map<",
        "[I",
        "Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;

.field private readWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "@javax.inject.Named(value=writetwobyteregisters)/java.util.Map<int[], com.senseonics.model.TwoByteMemoryMapParsedResponse>"

    const-string v1, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v2, "provideMapOfInArrayToWriteTwoByteMemoryMapParsedresponse"

    const/4 v3, 0x0

    .line 474
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 475
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 476
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.model.ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse"

    .line 486
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse"

    .line 487
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse"

    .line 488
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse"

    .line 489
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse"

    .line 490
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse"

    .line 491
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse"

    .line 492
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 462
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;

    iget-object v5, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v5}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v6}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;

    iget-object v7, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v7}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;

    invoke-virtual/range {v0 .. v7}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideMapOfInArrayToWriteTwoByteMemoryMapParsedresponse(Lcom/senseonics/model/ReadWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 501
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseTargetTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseTargetTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteLowGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteMorningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteEveningCalibrationTimeTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToWriteTwoByteMemoryMapParsedresponseProvidesAdapter;->readWriteDelayBLEDisconnectionTwoByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
