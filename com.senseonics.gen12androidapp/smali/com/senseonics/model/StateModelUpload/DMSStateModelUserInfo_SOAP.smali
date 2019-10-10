.class public Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;
.super Ljava/lang/Object;
.source "DMSStateModelUserInfo_SOAP.java"


# instance fields
.field private PWBinary:Ljava/lang/String;

.field private PWHash:Ljava/lang/String;

.field private UserID:Ljava/lang/String;

.field private Username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->UserID:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->PWHash:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->PWBinary:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->Username:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPWBinary()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->PWBinary:Ljava/lang/String;

    return-object v0
.end method

.method public getPWHash()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->PWHash:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->UserID:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->Username:Ljava/lang/String;

    return-object v0
.end method
