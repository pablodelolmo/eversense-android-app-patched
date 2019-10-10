.class Ljcifs/netbios/SessionRetargetResponsePacket;
.super Ljcifs/netbios/SessionServicePacket;
.source "SessionRetargetResponsePacket.java"


# instance fields
.field private retargetAddress:Ljcifs/netbios/NbtAddress;

.field private retargetPort:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    const/16 v0, 0x84

    .line 30
    iput v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->type:I

    const/4 v0, 0x6

    .line 31
    iput v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->length:I

    return-void
.end method


# virtual methods
.method readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->length:I

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->length:I

    if-eq p1, v0, :cond_0

    .line 42
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unexpected EOF reading netbios retarget session response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_0
    invoke-static {p2, p3}, Ljcifs/netbios/SessionRetargetResponsePacket;->readInt4([BI)I

    move-result p1

    add-int/lit8 p3, p3, 0x4

    .line 46
    new-instance v0, Ljcifs/netbios/NbtAddress;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    iput-object v0, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->retargetAddress:Ljcifs/netbios/NbtAddress;

    .line 47
    invoke-static {p2, p3}, Ljcifs/netbios/SessionRetargetResponsePacket;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->retargetPort:I

    .line 48
    iget p1, p0, Ljcifs/netbios/SessionRetargetResponsePacket;->length:I

    return p1
.end method

.method writeTrailerWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
