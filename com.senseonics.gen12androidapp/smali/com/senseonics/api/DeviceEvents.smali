.class public Lcom/senseonics/api/DeviceEvents;
.super Ljava/lang/Object;
.source "DeviceEvents.java"


# instance fields
.field private alertBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alertBytes"
    .end annotation
.end field

.field private deviceID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceID"
    .end annotation
.end field

.field private deviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceName"
    .end annotation
.end field

.field private deviceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceType"
    .end annotation
.end field

.field private mgBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mgBytes"
    .end annotation
.end field

.field private offsetBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offsetBytes"
    .end annotation
.end field

.field private patientBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "patientBytes"
    .end annotation
.end field

.field private sgBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sgBytes"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/senseonics/api/DeviceEvents;->deviceType:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/senseonics/api/DeviceEvents;->deviceName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/senseonics/api/DeviceEvents;->deviceID:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/senseonics/api/DeviceEvents;->offsetBytes:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/senseonics/api/DeviceEvents;->sgBytes:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/senseonics/api/DeviceEvents;->mgBytes:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/senseonics/api/DeviceEvents;->patientBytes:Ljava/lang/String;

    .line 31
    iput-object p8, p0, Lcom/senseonics/api/DeviceEvents;->alertBytes:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlertBytes()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/senseonics/api/DeviceEvents;->alertBytes:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/senseonics/api/DeviceEvents;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/senseonics/api/DeviceEvents;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/senseonics/api/DeviceEvents;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getMgBytes()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/senseonics/api/DeviceEvents;->mgBytes:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetBytes()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/senseonics/api/DeviceEvents;->offsetBytes:Ljava/lang/String;

    return-object v0
.end method

.method public getPatientBytes()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/senseonics/api/DeviceEvents;->patientBytes:Ljava/lang/String;

    return-object v0
.end method

.method public getSgBytes()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/senseonics/api/DeviceEvents;->sgBytes:Ljava/lang/String;

    return-object v0
.end method
