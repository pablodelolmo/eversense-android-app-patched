.class public Ljcifs/netbios/SessionRequestPacket;
.super Ljcifs/netbios/SessionServicePacket;
.source "SessionRequestPacket.java"


# instance fields
.field private calledName:Ljcifs/netbios/Name;

.field private callingName:Ljcifs/netbios/Name;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    .line 29
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    .line 30
    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    const/16 v0, 0x81

    .line 33
    iput v0, p0, Ljcifs/netbios/SessionRequestPacket;->type:I

    .line 34
    iput-object p1, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    .line 35
    iput-object p2, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    return-void
.end method


# virtual methods
.method readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget v0, p0, Ljcifs/netbios/SessionRequestPacket;->length:I

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget v0, p0, Ljcifs/netbios/SessionRequestPacket;->length:I

    if-eq p1, v0, :cond_0

    .line 49
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid session request wire format"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_0
    iget-object p1, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    invoke-virtual {p1, p2, p3}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result p1

    add-int/2addr p1, p3

    .line 52
    iget-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p2, p1}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result p2

    add-int/2addr p1, p2

    sub-int/2addr p1, p3

    return p1
.end method

.method writeTrailerWireFormat([BI)I
    .locals 2

    .line 39
    iget-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 40
    iget-object v1, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    invoke-virtual {v1, p1, v0}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method
