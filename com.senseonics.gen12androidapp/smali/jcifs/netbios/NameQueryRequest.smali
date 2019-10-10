.class Ljcifs/netbios/NameQueryRequest;
.super Ljcifs/netbios/NameServicePacket;
.source "NameQueryRequest.java"


# direct methods
.method constructor <init>(Ljcifs/netbios/Name;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    .line 24
    iput-object p1, p0, Ljcifs/netbios/NameQueryRequest;->questionName:Ljcifs/netbios/Name;

    const/16 p1, 0x20

    .line 25
    iput p1, p0, Ljcifs/netbios/NameQueryRequest;->questionType:I

    return-void
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameQueryRequest;->readQuestionSectionWireFormat([BI)I

    move-result p1

    return p1
.end method

.method readRDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameQueryRequest["

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
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameQueryRequest;->writeQuestionSectionWireFormat([BI)I

    move-result p1

    return p1
.end method

.method writeRDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
