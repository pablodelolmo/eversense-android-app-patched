.class public Lcom/senseonics/mycircle/model/UserProfileDto;
.super Ljava/lang/Object;
.source "UserProfileDto.java"


# instance fields
.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FirstName"
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LastName"
    .end annotation
.end field

.field private profileImageBase64:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProfileImage"
    .end annotation
.end field

.field private userId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserID"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/senseonics/mycircle/model/UserProfileDto;->userId:Ljava/lang/Integer;

    .line 23
    iput-object p2, p0, Lcom/senseonics/mycircle/model/UserProfileDto;->username:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/senseonics/mycircle/model/UserProfileDto;->firstName:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/senseonics/mycircle/model/UserProfileDto;->lastName:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/senseonics/mycircle/model/UserProfileDto;->profileImageBase64:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/senseonics/mycircle/model/UserProfileDto;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/senseonics/mycircle/model/UserProfileDto;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageBase64()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/senseonics/mycircle/model/UserProfileDto;->profileImageBase64:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/senseonics/mycircle/model/UserProfileDto;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/mycircle/model/UserProfileDto;->username:Ljava/lang/String;

    return-object v0
.end method
