.class public final Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;
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
    name = "ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lcom/senseonics/model/DefaultedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/senseonics/model/ParsedResponse;",
        ">;>;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/model/DefaultedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/senseonics/model/ParsedResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field private glucoseLevelParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/GlucoseLevelParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/senseonics/gen12androidapp/ApplicationModule;

.field private pingParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/PingParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readCurrentTransmitterDateAndTimeParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readFirstAndLastSensorGlucoseRecordNumbersParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseRecordNumbersParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readFourByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadFourByteSerialFlashRegisterParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readSensorGlucoseAlertAndStatusParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readSingleByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadSingleByteSerialFlashRegisterParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private readTwoByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/ReadTwoByteSerialFlashRegisterParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private sendBloodGlucoseDataResponseParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private sendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private syncingParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/SyncingParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private writePatientEventParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private writeSingleByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/WriteSingleByteSerialFlashRegisterParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private writeTwoByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/WriteTwoByteSerialFlashRegisterParsedResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ApplicationModule;)V
    .locals 4

    const-string v0, "com.senseonics.model.DefaultedHashMap<java.lang.Integer, com.senseonics.model.ParsedResponse>"

    const-string v1, "com.senseonics.gen12androidapp.ApplicationModule"

    const-string v2, "provideDefaultHashMapofIntegerToParsedResponse"

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.model.PingParsedResponse"

    .line 120
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->pingParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.GlucoseLevelParsedResponse"

    .line 121
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->glucoseLevelParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadSensorGlucoseAlertAndStatusParsedResponse"

    .line 122
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readSensorGlucoseAlertAndStatusParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadSingleByteSerialFlashRegisterParsedResponse"

    .line 123
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readSingleByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.WriteSingleByteSerialFlashRegisterParsedResponse"

    .line 124
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->writeSingleByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadTwoByteSerialFlashRegisterParsedResponse"

    .line 125
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readTwoByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.WriteTwoByteSerialFlashRegisterParsedResponse"

    .line 126
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->writeTwoByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadFourByteSerialFlashRegisterParsedResponse"

    .line 127
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFourByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.WritePatientEventParsedResponse"

    .line 128
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->writePatientEventParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.SyncingParsedResponse"

    .line 129
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->syncingParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadFirstAndLastSensorGlucoseRecordNumbersParsedResponse"

    .line 130
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFirstAndLastSensorGlucoseRecordNumbersParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse"

    .line 131
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse"

    .line 132
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.ReadCurrentTransmitterDateAndTimeParsedResponse"

    .line 133
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readCurrentTransmitterDateAndTimeParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.SendBloodGlucoseDataResponseParsedResponse"

    .line 134
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->sendBloodGlucoseDataResponseParsedResponse:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse"

    .line 135
    const-class v1, Lcom/senseonics/gen12androidapp/ApplicationModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->sendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/model/DefaultedHashMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/senseonics/model/DefaultedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/senseonics/model/ParsedResponse;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 168
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ApplicationModule;

    iget-object v2, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->pingParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/model/PingParsedResponse;

    iget-object v3, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->glucoseLevelParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/model/GlucoseLevelParsedResponse;

    iget-object v4, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readSensorGlucoseAlertAndStatusParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;

    iget-object v5, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readSingleByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v5}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/senseonics/model/ReadSingleByteSerialFlashRegisterParsedResponse;

    iget-object v6, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->writeSingleByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v6}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/model/WriteSingleByteSerialFlashRegisterParsedResponse;

    iget-object v7, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readTwoByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v7}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/senseonics/model/ReadTwoByteSerialFlashRegisterParsedResponse;

    iget-object v8, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->writeTwoByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v8}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/senseonics/model/WriteTwoByteSerialFlashRegisterParsedResponse;

    iget-object v9, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFourByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v9}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/senseonics/model/ReadFourByteSerialFlashRegisterParsedResponse;

    iget-object v10, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->writePatientEventParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v10}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;

    iget-object v11, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->syncingParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v11}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/senseonics/model/SyncingParsedResponse;

    iget-object v12, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFirstAndLastSensorGlucoseRecordNumbersParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v12}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseRecordNumbersParsedResponse;

    iget-object v13, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v13}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;

    iget-object v14, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v14}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    iget-object v15, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readCurrentTransmitterDateAndTimeParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v15}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->sendBloodGlucoseDataResponseParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v15}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;

    iget-object v15, v0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->sendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse:Ldagger/internal/Binding;

    invoke-virtual {v15}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v17, v15

    check-cast v17, Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;

    move-object/from16 v15, v18

    invoke-virtual/range {v1 .. v17}, Lcom/senseonics/gen12androidapp/ApplicationModule;->provideDefaultHashMapofIntegerToParsedResponse(Lcom/senseonics/model/PingParsedResponse;Lcom/senseonics/model/GlucoseLevelParsedResponse;Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;Lcom/senseonics/model/ReadSingleByteSerialFlashRegisterParsedResponse;Lcom/senseonics/model/WriteSingleByteSerialFlashRegisterParsedResponse;Lcom/senseonics/model/ReadTwoByteSerialFlashRegisterParsedResponse;Lcom/senseonics/model/WriteTwoByteSerialFlashRegisterParsedResponse;Lcom/senseonics/model/ReadFourByteSerialFlashRegisterParsedResponse;Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;Lcom/senseonics/model/SyncingParsedResponse;Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseRecordNumbersParsedResponse;Lcom/senseonics/model/ReadFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse;Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;Lcom/senseonics/model/ReadCurrentTransmitterDateAndTimeParsedResponse;Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;)Lcom/senseonics/model/DefaultedHashMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->get()Lcom/senseonics/model/DefaultedHashMap;

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

    .line 144
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->pingParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->glucoseLevelParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readSensorGlucoseAlertAndStatusParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readSingleByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->writeSingleByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readTwoByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->writeTwoByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFourByteSerialFlashRegisterParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->writePatientEventParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->syncingParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFirstAndLastSensorGlucoseRecordNumbersParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFirstAndLastSensorGlucoseAlertRecordNumbersParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->readCurrentTransmitterDateAndTimeParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->sendBloodGlucoseDataResponseParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/ApplicationModule$$ModuleAdapter$ProvideDefaultHashMapofIntegerToParsedResponseProvidesAdapter;->sendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
