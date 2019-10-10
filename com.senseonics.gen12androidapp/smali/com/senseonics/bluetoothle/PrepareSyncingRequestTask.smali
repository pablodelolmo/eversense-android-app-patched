.class public Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;
.super Landroid/os/AsyncTask;
.source "PrepareSyncingRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private countOfRecordsToSync:I

.field private final databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private syncModel:Lcom/senseonics/model/SyncModel;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/db/DatabaseManager;ILcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/model/SyncModel;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 37
    iput p2, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->countOfRecordsToSync:I

    .line 38
    iput-object p3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 40
    iput-object p4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 41
    iput-object p5, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 43
    iput-object p6, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private createSyncingGroups(IILcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;",
            ")",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gt p1, p2, :cond_4

    sub-int v1, p2, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-gt p1, p2, :cond_4

    add-int v3, p1, v1

    add-int/lit8 v4, v3, -0x1

    if-le v4, p2, :cond_1

    move v4, p2

    .line 217
    :cond_1
    sget-object v5, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_SENSOR_GLUCOSE:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    if-ne p3, v5, :cond_2

    .line 218
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data24BitsFromIntLSByteFirst(I)[I

    move-result-object v5

    .line 219
    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data24BitsFromIntLSByteFirst(I)[I

    move-result-object v6

    goto :goto_1

    .line 221
    :cond_2
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v5

    .line 222
    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v6

    :goto_1
    const/4 v7, 0x0

    .line 226
    sget-object v8, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$1;->$SwitchMap$com$senseonics$bluetoothle$PrepareSyncingRequestTask$SYNC_DATA_TYPE:[I

    invoke-virtual {p3}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_2

    .line 240
    :pswitch_0
    const-class v7, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BGM - Send range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int p1, v4, p1

    add-int/2addr p1, v2

    .line 241
    invoke-direct {p0, v5, v6, v4, p1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->getRequestReadBloodGlucoseDataInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    move-result-object v7

    goto :goto_2

    .line 234
    :pswitch_1
    const-class v7, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alert - Send range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int p1, v4, p1

    add-int/2addr p1, v2

    .line 236
    invoke-direct {p0, v5, v6, v4, p1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->getRequestReadSensorGlucoseAlertInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    move-result-object v7

    goto :goto_2

    .line 228
    :pswitch_2
    const-class v7, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Glucose - Send range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int p1, v4, p1

    add-int/2addr p1, v2

    .line 230
    invoke-direct {p0, v5, v6, v4, p1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->getRequestReadAllSensorGlucoseDataInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_3

    .line 246
    invoke-virtual {v7}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getData()[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 247
    const-class p1, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move p1, v3

    goto/16 :goto_0

    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createSyncingGroupsFrom(Lcom/senseonics/util/Range;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/util/Range;",
            "Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;",
            ")",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v1, Lcom/senseonics/util/Range;

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v2

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Range;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-direct {p0, v0, p2}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->createSyncingGroupsFromRanges(Ljava/util/List;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;

    move-result-object v0

    .line 181
    const-class v1, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " requests for range : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private createSyncingGroupsFromRanges(Ljava/util/List;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Range;",
            ">;",
            "Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;",
            ")",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Range;

    .line 191
    invoke-virtual {v1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v2

    invoke-virtual {v1}, Lcom/senseonics/util/Range;->getTo()I

    move-result v1

    invoke-direct {p0, v2, v1, p2}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->createSyncingGroups(IILcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getRequestReadAllSensorGlucoseDataInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;
    .locals 1

    .line 262
    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadAllSensorGlucoseDataInSpecifiedRange([I[I)[I

    move-result-object p1

    .line 264
    new-instance p2, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    const/16 v0, 0xf0

    invoke-direct {p2, v0, p1, p3, p4}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;-><init>(I[III)V

    return-object p2
.end method

.method private getRequestReadBloodGlucoseDataInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;
    .locals 1

    .line 280
    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadLogOfBloodGlucoseDataInSpecifiedRange([I[I)[I

    move-result-object p1

    .line 281
    new-instance p2, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    const/16 v0, 0xf2

    invoke-direct {p2, v0, p1, p3, p4}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;-><init>(I[III)V

    return-object p2
.end method

.method private getRequestReadSensorGlucoseAlertInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;
    .locals 1

    .line 271
    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSensorGlucoseAlertLogInSpecifiedRange([I[I)[I

    move-result-object p1

    .line 272
    new-instance p2, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    const/16 v0, 0xf1

    invoke-direct {p2, v0, p1, p3, p4}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;-><init>(I[III)V

    return-object p2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorGlucoseRecordRange()Lcom/senseonics/util/Range;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 51
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v3

    if-lt v3, v2, :cond_5

    .line 53
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v3

    iget v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->countOfRecordsToSync:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 54
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    if-ge v4, v3, :cond_0

    .line 55
    new-instance v4, Lcom/senseonics/util/Range;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v4, v3, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v4

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 60
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->resetSyncRecordNumbersIfNeeded()V

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 64
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedSensorRecord(I)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v4

    if-ne v3, v4, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 70
    :cond_3
    new-instance v3, Lcom/senseonics/util/Range;

    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v3

    .line 73
    :goto_0
    const-class v3, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** SENSOR whole range:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v0

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v3, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_SENSOR_GLUCOSE:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    invoke-direct {p0, v0, v3}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->createSyncingGroupsFrom(Lcom/senseonics/util/Range;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getAlertRecordRange()Lcom/senseonics/util/Range;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 78
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v3

    if-lt v3, v2, :cond_b

    .line 80
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v3

    sget v4, Lcom/senseonics/util/Utils;->NO_OF_ALARMS_TO_SYNC:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 81
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    if-ge v4, v3, :cond_6

    .line 82
    new-instance v4, Lcom/senseonics/util/Range;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v4, v3, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v4

    .line 86
    :cond_6
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v4

    if-le v3, v4, :cond_7

    .line 87
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->resetSyncRecordNumbersIfNeeded()V

    .line 90
    :cond_7
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 91
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedAlertRecord(I)V

    goto :goto_2

    .line 93
    :cond_8
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v4

    if-ne v3, v4, :cond_9

    move-object v0, v1

    goto :goto_2

    .line 97
    :cond_9
    new-instance v3, Lcom/senseonics/util/Range;

    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v3

    .line 100
    :goto_2
    const-class v3, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** ALERT whole range:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_a
    move-object v5, v0

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v3, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_ALERTS:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    invoke-direct {p0, v0, v3}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->createSyncingGroupsFrom(Lcom/senseonics/util/Range;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_b
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getBloodGlucoseRecordRange()Lcom/senseonics/util/Range;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 105
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v3

    if-lt v3, v2, :cond_11

    .line 107
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v3

    sget v4, Lcom/senseonics/util/Utils;->NO_OF_EVENTS_TO_SYNC:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 108
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    if-ge v4, v3, :cond_c

    .line 109
    new-instance v4, Lcom/senseonics/util/Range;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v4, v3, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v4

    .line 113
    :cond_c
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v4

    if-le v3, v4, :cond_d

    .line 114
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->resetSyncRecordNumbersIfNeeded()V

    .line 117
    :cond_d
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 118
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedBloodGlucoseRecord(I)V

    move-object v1, v0

    goto :goto_4

    .line 120
    :cond_e
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v4

    if-ne v3, v4, :cond_f

    goto :goto_4

    .line 124
    :cond_f
    new-instance v1, Lcom/senseonics/util/Range;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v1, v3, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    .line 127
    :goto_4
    const-class v0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** BGM whole range:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_10
    move-object v4, v1

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_BLOOD_GLUCOSE:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    invoke-direct {p0, v1, v0}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->createSyncingGroupsFrom(Lcom/senseonics/util/Range;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_11
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 132
    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDate()Ljava/util/Calendar;

    move-result-object v1

    .line 133
    invoke-static {}, Lcom/senseonics/util/Utils;->getEndDateFinished()Ljava/util/Calendar;

    move-result-object v3

    sget v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    sget v5, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    .line 132
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/senseonics/db/DatabaseManager;->getNotSyncedEventsBetween(Ljava/util/Calendar;Ljava/util/Calendar;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/events/EventPoint;

    .line 138
    invoke-virtual {v1, v2}, Lcom/senseonics/events/EventPoint;->setEventSynced(Z)V

    .line 139
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v3, v1}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    .line 141
    instance-of v3, v1, Lcom/senseonics/events/GlucoseEventPoint;

    if-eqz v3, :cond_13

    .line 142
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    check-cast v1, Lcom/senseonics/events/GlucoseEventPoint;

    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCommunicationProtocolVersion()F

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteGlucoseEvent(Lcom/senseonics/events/GlucoseEventPoint;F)V

    goto :goto_6

    .line 143
    :cond_13
    instance-of v3, v1, Lcom/senseonics/events/PatientEventPoint;

    if-eqz v3, :cond_12

    .line 144
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    check-cast v1, Lcom/senseonics/events/PatientEventPoint;

    invoke-virtual {v3, v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePatientEvent(Lcom/senseonics/events/PatientEventPoint;)V

    goto :goto_6

    .line 150
    :cond_14
    const-class v0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count of Sync Requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;)V"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 159
    invoke-static {}, Lcom/senseonics/util/Utils;->getLocalTimeInMillisAdjustedToGMT()J

    move-result-wide v0

    .line 160
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "last_syncing_gmt_millis"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 163
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    .line 166
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSync(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {p1, v0}, Lcom/senseonics/model/SyncModel;->addSyncingRequests(Ljava/util/List;)V

    :goto_1
    return-void
.end method
