.class Ljcifs/netbios/NodeStatusRequest;
.super Ljcifs/netbios/NameServicePacket;
.source "NodeStatusRequest.java"


# direct methods
.method constructor <init>(Ljcifs/netbios/Name;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    .line 24
    iput-object p1, p0, Ljcifs/netbios/NodeStatusRequest;->questionName:Ljcifs/netbios/Name;

    const/16 p1, 0x21

    .line 25
    iput p1, p0, Ljcifs/netbios/NodeStatusRequest;->questionType:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Ljcifs/netbios/NodeStatusRequest;->isRecurDesired:Z

    .line 27
    iput-boolean p1, p0, Ljcifs/netbios/NodeStatusRequest;->isBroadcast:Z

    return-void
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readRDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NodeStatusRequest["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBodyWireFormat([BI)I
    .locals 3

    .line 31
    iget-object v0, p0, Ljcifs/netbios/NodeStatusRequest;->questionName:Ljcifs/netbios/Name;

    iget v0, v0, Ljcifs/netbios/Name;->hexCode:I

    .line 32
    iget-object v1, p0, Ljcifs/netbios/NodeStatusRequest;->questionName:Ljcifs/netbios/Name;

    const/4 v2, 0x0

    iput v2, v1, Ljcifs/netbios/Name;->hexCode:I

    .line 33
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NodeStatusRequest;->writeQuestionSectionWireFormat([BI)I

    move-result p1

    .line 34
    iget-object p2, p0, Ljcifs/netbios/NodeStatusRequest;->questionName:Ljcifs/netbios/Name;

    iput v0, p2, Ljcifs/netbios/Name;->hexCode:I

    return p1
.end method

.method writeRDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
