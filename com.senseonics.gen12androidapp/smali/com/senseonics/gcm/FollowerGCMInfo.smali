.class public Lcom/senseonics/gcm/FollowerGCMInfo;
.super Ljava/lang/Object;
.source "FollowerGCMInfo.java"


# instance fields
.field private deviceGCMRegCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceGCMRegCode"
    .end annotation
.end field

.field private deviceSerialNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DeviceSerialNumber"
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Status"
    .end annotation
.end field

.field private userID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserID"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->userID:Ljava/lang/Integer;

    .line 17
    iput-object p2, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->deviceSerialNumber:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->deviceGCMRegCode:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->status:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getDeviceGCMRegCode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->deviceGCMRegCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->deviceSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserID()Ljava/lang/Integer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/senseonics/gcm/FollowerGCMInfo;->userID:Ljava/lang/Integer;

    return-object v0
.end method
