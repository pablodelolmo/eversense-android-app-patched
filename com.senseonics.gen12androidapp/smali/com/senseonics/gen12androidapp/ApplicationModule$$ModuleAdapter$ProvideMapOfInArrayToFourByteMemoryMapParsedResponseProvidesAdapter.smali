.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;
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
    name = "ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Ljava/util/Map<",
        "[I",
        "Lcom/senseonics/model/FourByteMemoryMapParsedResponse;",
        ">;>;",
        "Ljavax/inject/Provider<",
        "Ljava/util/Map<",
        "[I",
        "Lcom/senseonics/model/FourByteMemoryMapParsedResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field private linkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/LinkedSensorIdAddressFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;

.field private readCommunicationProtocolVersionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readMEPSavedDriftMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadMEPSavedDriftMetricFourByteMemoryParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readMEPSavedLowRefMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readMEPSavedRefChannelMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readMEPSavedSpikeFourByteMemoryParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadMEPSavedSpikeFourByteMemoryParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readMEPSavedValueFourByteMemoryParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadMEPSavedValueFourByteMemoryParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterFirmwareVersionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterFirmwareVersionFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterModelNoFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private unLinkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "@javax.inject.Named(value=readfourbyteregisters)/java.util.Map<int[], com.senseonics.model.FourByteMemoryMapParsedResponse>"

    const-string v1, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v2, "provideMapOfInArrayToFourByteMemoryMapParsedResponse"

    const/4 v3, 0x0

    .line 546
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 547
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 548
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.model.LinkedSensorIdAddressFourByteMemoryMapParsedResponse"

    .line 558
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->linkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse"

    .line 559
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->unLinkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.TransmitterModelNoFourByteMemoryMapParsedResponse"

    .line 560
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterModelNoFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.TransmitterFirmwareVersionFourByteMemoryMapParsedResponse"

    .line 561
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse"

    .line 562
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadMEPSavedValueFourByteMemoryParsedResponse"

    .line 563
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedValueFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse"

    .line 564
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedRefChannelMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadMEPSavedDriftMetricFourByteMemoryParsedResponse"

    .line 565
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedDriftMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse"

    .line 566
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedLowRefMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadMEPSavedSpikeFourByteMemoryParsedResponse"

    .line 567
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedSpikeFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse"

    .line 568
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readCommunicationProtocolVersionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "[I",
            "Lcom/senseonics/model/FourByteMemoryMapParsedResponse;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->linkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/model/LinkedSensorIdAddressFourByteMemoryMapParsedResponse;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->unLinkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/model/UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterModelNoFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/model/TransmitterFirmwareVersionFourByteMemoryMapParsedResponse;

    iget-object v5, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v5}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/senseonics/model/TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse;

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedValueFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v6}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/model/ReadMEPSavedValueFourByteMemoryParsedResponse;

    iget-object v7, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedRefChannelMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v7}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/senseonics/model/ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse;

    iget-object v8, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedDriftMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v8}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/senseonics/model/ReadMEPSavedDriftMetricFourByteMemoryParsedResponse;

    iget-object v9, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedLowRefMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v9}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/senseonics/model/ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse;

    iget-object v10, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedSpikeFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v10}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/senseonics/model/ReadMEPSavedSpikeFourByteMemoryParsedResponse;

    iget-object v11, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readCommunicationProtocolVersionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v11}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/senseonics/model/ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse;

    invoke-virtual/range {v0 .. v11}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideMapOfInArrayToFourByteMemoryMapParsedResponse(Lcom/senseonics/model/LinkedSensorIdAddressFourByteMemoryMapParsedResponse;Lcom/senseonics/model/UnLinkedSensorIdAddressFourByteMemoryMapParsedResponse;Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;Lcom/senseonics/model/TransmitterFirmwareVersionFourByteMemoryMapParsedResponse;Lcom/senseonics/model/TransmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse;Lcom/senseonics/model/ReadMEPSavedValueFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedRefChannelMetricFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedDriftMetricFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedLowRefMetricFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadMEPSavedSpikeFourByteMemoryParsedResponse;Lcom/senseonics/model/ReadCommunicationProtocolVersionFourByteMemoryMapParsedResponse;)Ljava/util/Map;

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

    .line 577
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->linkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->unLinkedSensorIdAddressFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterModelNoFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->transmitterFirmwareVersionExtensionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedValueFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedRefChannelMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedDriftMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedLowRefMetricFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readMEPSavedSpikeFourByteMemoryParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideMapOfInArrayToFourByteMemoryMapParsedResponseProvidesAdapter;->readCommunicationProtocolVersionFourByteMemoryMapParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
