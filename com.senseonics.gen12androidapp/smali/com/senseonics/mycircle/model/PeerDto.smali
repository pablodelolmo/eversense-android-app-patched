.class public Lcom/senseonics/mycircle/model/PeerDto;
.super Ljava/lang/Object;
.source "PeerDto.java"


# instance fields
.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FollowerEmail"
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FirstName"
    .end annotation
.end field

.field private followerUserId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FollowerUserId"
    .end annotation
.end field

.field private invitedDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InvitationDate"
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LastName"
    .end annotation
.end field

.field private nickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReferenceName"
    .end annotation
.end field

.field private profileImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ProfileImage"
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/senseonics/mycircle/model/PeerDto;->firstName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/senseonics/mycircle/model/PeerDto;->lastName:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/senseonics/mycircle/model/PeerDto;->nickname:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/senseonics/mycircle/model/PeerDto;->invitedDate:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/senseonics/mycircle/model/PeerDto;->email:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/senseonics/mycircle/model/PeerDto;->status:Ljava/lang/Integer;

    .line 30
    iput-object p7, p0, Lcom/senseonics/mycircle/model/PeerDto;->profileImage:Ljava/lang/String;

    .line 31
    iput-object p8, p0, Lcom/senseonics/mycircle/model/PeerDto;->followerUserId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/senseonics/mycircle/model/PeerDto;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/senseonics/mycircle/model/PeerDto;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowerUserId()Ljava/lang/Integer;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/senseonics/mycircle/model/PeerDto;->followerUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInvitedDate()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/senseonics/mycircle/model/PeerDto;->invitedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/senseonics/mycircle/model/PeerDto;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/senseonics/mycircle/model/PeerDto;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImage()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/senseonics/mycircle/model/PeerDto;->profileImage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/senseonics/mycircle/model/PeerDto;->status:Ljava/lang/Integer;

    return-object v0
.end method
