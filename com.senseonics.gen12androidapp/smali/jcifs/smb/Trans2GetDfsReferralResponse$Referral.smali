.class Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;
.super Ljava/lang/Object;
.source "Trans2GetDfsReferralResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/Trans2GetDfsReferralResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Referral"
.end annotation


# instance fields
.field private altPath:Ljava/lang/String;

.field private altPathOffset:I

.field private flags:I

.field node:Ljava/lang/String;

.field private nodeOffset:I

.field path:Ljava/lang/String;

.field private pathOffset:I

.field private proximity:I

.field private serverType:I

.field private size:I

.field final synthetic this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

.field ttl:I

.field private version:I


# direct methods
.method constructor <init>(Ljcifs/smb/Trans2GetDfsReferralResponse;)V
    .locals 0

    .line 25
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method readWireFormat([BII)I
    .locals 6

    .line 43
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    .line 44
    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    if-eq v0, v2, :cond_0

    .line 45
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Version "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " referral not supported. Please report this to jcifs at samba dot org."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    add-int/lit8 v0, p2, 0x2

    .line 48
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    add-int/lit8 v0, v0, 0x2

    .line 50
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->serverType:I

    add-int/lit8 v0, v0, 0x2

    .line 52
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    iput v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->flags:I

    add-int/lit8 v0, v0, 0x2

    .line 54
    iget v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    const/4 v4, 0x0

    const v5, 0x8000

    if-ne v3, v1, :cond_3

    .line 55
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->proximity:I

    add-int/lit8 v0, v0, 0x2

    .line 57
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    add-int/lit8 v0, v0, 0x2

    .line 59
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    add-int/lit8 v0, v0, 0x2

    .line 61
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPathOffset:I

    add-int/lit8 v0, v0, 0x2

    .line 63
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    .line 66
    iget-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    add-int/2addr v1, p2

    iget-object v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget v3, v3, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags2:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1, p3, v3}, Ljcifs/smb/Trans2GetDfsReferralResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 67
    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    if-lez v0, :cond_5

    .line 68
    iget-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    add-int/2addr p2, v1

    iget-object v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget v1, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags2:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, p1, p2, p3, v2}, Ljcifs/smb/Trans2GetDfsReferralResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    goto :goto_3

    .line 69
    :cond_3
    iget p2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    if-ne p2, v2, :cond_5

    .line 70
    iget-object p2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget-object v1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    iget v1, v1, Ljcifs/smb/Trans2GetDfsReferralResponse;->flags2:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2, p1, v0, p3, v2}, Ljcifs/smb/Trans2GetDfsReferralResponse;->readString([BIIZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    .line 73
    :cond_5
    :goto_3
    iget p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Referral[version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",serverType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->serverType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",proximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->proximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",ttl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pathOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",altPathOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPathOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",nodeOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",altPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",node="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
