.class public Ljcifs/netbios/NbtSocket;
.super Ljava/net/Socket;
.source "NbtSocket.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final DEFAULT_SO_TIMEOUT:I = 0x1388

.field private static final SSN_SRVC_PORT:I = 0x8b

.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private address:Ljcifs/netbios/NbtAddress;

.field private calledName:Ljcifs/netbios/Name;

.field private soTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/NbtAddress;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0, v1}, Ljcifs/netbios/NbtSocket;-><init>(Ljcifs/netbios/NbtAddress;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/NbtAddress;ILjava/net/InetAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 55
    invoke-direct/range {v0 .. v5}, Ljcifs/netbios/NbtSocket;-><init>(Ljcifs/netbios/NbtAddress;Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/NbtAddress;Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljcifs/netbios/NbtAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez p3, :cond_0

    const/16 p3, 0x8b

    :cond_0
    invoke-direct {p0, v0, p3, p4, p5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 61
    iput-object p1, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    if-nez p2, :cond_1

    .line 63
    iget-object p1, p1, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    iput-object p1, p0, Ljcifs/netbios/NbtSocket;->calledName:Ljcifs/netbios/Name;

    goto :goto_0

    .line 65
    :cond_1
    new-instance p1, Ljcifs/netbios/Name;

    const/16 p3, 0x20

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Ljcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Ljcifs/netbios/NbtSocket;->calledName:Ljcifs/netbios/Name;

    :goto_0
    const-string p1, "jcifs.netbios.soTimeout"

    const/16 p2, 0x1388

    .line 67
    invoke-static {p1, p2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Ljcifs/netbios/NbtSocket;->soTimeout:I

    .line 68
    invoke-direct {p0}, Ljcifs/netbios/NbtSocket;->connect()V

    return-void
.end method

.method private connect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    .line 95
    new-array v0, v0, [B

    .line 100
    :try_start_0
    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 101
    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 103
    new-instance v3, Ljcifs/netbios/SessionRequestPacket;

    iget-object v4, p0, Ljcifs/netbios/NbtSocket;->calledName:Ljcifs/netbios/Name;

    sget-object v5, Ljcifs/netbios/NbtAddress;->localhost:Ljcifs/netbios/NbtAddress;

    iget-object v5, v5, Ljcifs/netbios/NbtAddress;->hostName:Ljcifs/netbios/Name;

    invoke-direct {v3, v4, v5}, Ljcifs/netbios/SessionRequestPacket;-><init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V

    const/4 v4, 0x0

    .line 104
    invoke-virtual {v3, v0, v4}, Ljcifs/netbios/SessionServicePacket;->writeWireFormat([BI)I

    move-result v3

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    iget v2, p0, Ljcifs/netbios/NbtSocket;->soTimeout:I

    invoke-virtual {p0, v2}, Ljcifs/netbios/NbtSocket;->setSoTimeout(I)V

    .line 107
    invoke-static {v1, v0, v4}, Ljcifs/netbios/SessionServicePacket;->readPacketType(Ljava/io/InputStream;[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 125
    invoke-virtual {p0}, Ljcifs/netbios/NbtSocket;->close()V

    .line 126
    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v3, v4}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    .line 119
    :pswitch_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 120
    invoke-virtual {p0}, Ljcifs/netbios/NbtSocket;->close()V

    .line 121
    new-instance v1, Ljcifs/netbios/NbtException;

    invoke-direct {v1, v3, v0}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v1

    .line 115
    :pswitch_1
    sget-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-le v0, v3, :cond_0

    .line 116
    sget-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session established ok with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 123
    :cond_1
    new-instance v0, Ljcifs/netbios/NbtException;

    invoke-direct {v0, v3, v2}, Ljcifs/netbios/NbtException;-><init>(II)V

    throw v0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {p0}, Ljcifs/netbios/NbtSocket;->close()V

    .line 110
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    sget-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 131
    sget-object v0, Ljcifs/netbios/NbtSocket;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljcifs/netbios/SocketInputStream;

    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/netbios/SocketInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 84
    invoke-super {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 87
    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getNbtAddress()Ljcifs/netbios/NbtAddress;
    .locals 1

    .line 72
    iget-object v0, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljcifs/netbios/SocketOutputStream;

    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/netbios/SocketOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 81
    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NbtSocket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/netbios/NbtSocket;->address:Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
