.class public Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;
.super Ljava/lang/Object;
.source "ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/SyncModel;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 23
    iput-object p2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 24
    iput-object p3, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 25
    iput-object p4, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 7

    const/4 v0, 0x1

    .line 40
    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 41
    aget v1, p1, v1

    const/4 v2, 0x4

    aget p1, p1, v2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    .line 43
    new-instance v1, Lcom/senseonics/util/Range;

    invoke-direct {v1, v0, p1}, Lcom/senseonics/util/Range;-><init>(II)V

    invoke-virtual {p2, v1}, Lcom/senseonics/model/TransmitterStateModel;->setBloodGlucoseRecordRange(Lcom/senseonics/util/Range;)V

    .line 44
    iget-object p1, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {p1}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {p1}, Lcom/senseonics/model/SyncModel;->clear()V

    .line 46
    new-instance p1, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;

    iget-object v1, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getMaxGlucoseRecordsToSync()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v4, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    iget-object v6, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;-><init>(Lcom/senseonics/db/DatabaseManager;ILcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/model/SyncModel;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/SharedPreferences;)V

    const/4 p2, 0x0

    .line 47
    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadFirstAndLastBloodGlucoseDataRecordNumbersResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0x97

    return v0
.end method
