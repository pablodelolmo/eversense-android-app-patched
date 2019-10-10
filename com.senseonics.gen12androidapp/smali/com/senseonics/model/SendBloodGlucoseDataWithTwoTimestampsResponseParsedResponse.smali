.class public Lcom/senseonics/model/SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse;
.super Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;
.source "SendBloodGlucoseDataWithTwoTimestampsResponseParsedResponse.java"


# direct methods
.method public constructor <init>(Lcom/senseonics/model/CalibrationHelper;Lcom/senseonics/db/DatabaseManager;Lde/greenrobot/event/EventBus;Landroid/content/SharedPreferences;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;-><init>(Lcom/senseonics/model/CalibrationHelper;Lcom/senseonics/db/DatabaseManager;Lde/greenrobot/event/EventBus;Landroid/content/SharedPreferences;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->apply([ILcom/senseonics/model/TransmitterStateModel;)V

    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/senseonics/model/SendBloodGlucoseDataResponseParsedResponse;->check([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0xbc

    return v0
.end method
