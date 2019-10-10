.class public Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;
.super Ljava/lang/Object;
.source "WritePatientEventParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 25
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 26
    iput-object p3, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 2

    .line 41
    sget-object p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->patientEventPoints:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/events/EventPoint;

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/senseonics/events/EventPoint;->setEventSynced(Z)V

    .line 45
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/WritePatientEventParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    .line 46
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isWritePatientEventResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0x9a

    return v0
.end method
