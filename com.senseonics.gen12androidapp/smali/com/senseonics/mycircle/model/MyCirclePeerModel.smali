.class public Lcom/senseonics/mycircle/model/MyCirclePeerModel;
.super Ljava/lang/Object;
.source "MyCirclePeerModel.java"


# static fields
.field public static final STATUS_INVITED:I = 0x0

.field public static final STATUS_MEMBER:I = 0x1

.field public static final STATUS_REMOVED:I = 0x2

.field public static final STATUS_TEMP_OFF:I = 0x4


# instance fields
.field private final emailAddress:Ljava/lang/String;

.field private followerUserId:I

.field private final invitedDate:Ljava/lang/String;

.field private final memberName:Ljava/lang/String;

.field private final nickname:Ljava/lang/String;

.field private transient profileImage:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>(Lcom/senseonics/mycircle/model/PeerDto;Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    .line 30
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/PeerDto;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/PeerDto;->getInvitedDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->invitedDate:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/PeerDto;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/PeerDto;->getProfileImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->profileImage:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/PeerDto;->getFirstName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/PeerDto;->getLastName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/PeerDto;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/PeerDto;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f0f0193

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/PeerDto;->getStatus()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    .line 36
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/PeerDto;->getFollowerUserId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->followerUserId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    .line 23
    iput-object p1, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->invitedDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 97
    :cond_1
    check-cast p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    .line 99
    iget v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    iget v3, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    if-eq v2, v3, :cond_2

    return v1

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    iget-object v3, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 102
    :cond_4
    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 104
    :cond_6
    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 106
    :cond_8
    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->invitedDate:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->invitedDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->invitedDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->invitedDate:Ljava/lang/String;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 108
    :cond_a
    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->profileImage:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->profileImage:Ljava/lang/String;

    iget-object p1, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->profileImage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_b
    iget-object p1, p1, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->profileImage:Ljava/lang/String;

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_d
    :goto_5
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->isMember()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public getDisplayTextColor()I
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f060065

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->isMember()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f06004d

    goto :goto_0

    :cond_1
    const v0, 0x7f06001e

    :goto_0
    return v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowerUserId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->followerUserId:I

    return v0
.end method

.method public getInvitedDate()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->invitedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImage()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->isMember()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->profileImage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->memberName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->nickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->emailAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 116
    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->invitedDate:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->invitedDate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    iget-object v2, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->profileImage:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->profileImage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 118
    iget v1, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isMember()Z
    .locals 3

    .line 89
    iget v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSharing()Z
    .locals 2

    .line 60
    iget v0, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setStatus(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->status:I

    return-void
.end method
