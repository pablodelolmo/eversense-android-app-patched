.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;
.super Ljava/lang/Object;
.source "DMSStateModelSensorInfo.java"


# instance fields
.field private LinkedSensorID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LinkedSensorID"
    .end annotation
.end field

.field private MEP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SensorMEP"
    .end annotation
.end field

.field private MSP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SensorMSP"
    .end annotation
.end field

.field private SensorActive:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SnActive"
    .end annotation
.end field

.field private SensorID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SensorSerialNo"
    .end annotation
.end field

.field private SensorInsertionDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InsertionDateTime"
    .end annotation
.end field

.field private UnlinkedSensorID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UnlinkedSensorID"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->LinkedSensorID:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->MEP:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->MSP:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->SensorActive:Ljava/lang/Integer;

    .line 34
    iput-object p1, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->SensorID:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->SensorInsertionDate:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->UnlinkedSensorID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLinkedSensorID()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->LinkedSensorID:Ljava/lang/String;

    return-object v0
.end method

.method public getMEP()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->MEP:Ljava/lang/String;

    return-object v0
.end method

.method public getMSP()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->MSP:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorActive()Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->SensorActive:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSensorID()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->SensorID:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorInsertionDate()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->SensorInsertionDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUnlinkedSensorID()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->UnlinkedSensorID:Ljava/lang/String;

    return-object v0
.end method
