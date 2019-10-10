.class public Ljcifs/dcerpc/DcerpcPipeHandle;
.super Ljcifs/dcerpc/DcerpcHandle;
.source "DcerpcPipeHandle.java"


# instance fields
.field in:Ljcifs/smb/SmbFileInputStream;

.field isStart:Z

.field out:Ljcifs/smb/SmbFileOutputStream;

.field pipe:Ljcifs/smb/SmbNamedPipe;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;,
            Ljcifs/dcerpc/DcerpcException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcHandle;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 33
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    .line 39
    invoke-static {p1}, Ljcifs/dcerpc/DcerpcHandle;->parseBinding(Ljava/lang/String;)Ljcifs/dcerpc/DcerpcBinding;

    move-result-object p1

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smb://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget-object v1, v1, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/IPC$/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    iget-object v1, v1, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 43
    iget-object v2, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    const-string v3, "server"

    invoke-virtual {v2, v3}, Ljcifs/dcerpc/DcerpcBinding;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&server="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_0
    iget-object v3, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    const-string v4, "address"

    invoke-virtual {v3, v4}, Ljcifs/dcerpc/DcerpcBinding;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&address="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    :cond_2
    new-instance v0, Ljcifs/smb/SmbNamedPipe;

    const v1, 0x19f0603

    invoke-direct {v0, p1, v1, p2}, Ljcifs/smb/SmbNamedPipe;-><init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->state:I

    .line 104
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    invoke-virtual {v0}, Ljcifs/smb/SmbFileOutputStream;->close()V

    :cond_0
    return-void
.end method

.method protected doReceiveFragment([BZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    array-length v0, p1

    iget v1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->max_recv:I

    if-ge v0, v1, :cond_0

    .line 79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_0
    iget-boolean v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 82
    iget-object p2, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    const/16 v0, 0x400

    invoke-virtual {p2, p1, v1, v0}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result p2

    goto :goto_0

    .line 84
    :cond_1
    iget-object p2, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    array-length v0, p1

    invoke-virtual {p2, p1, v1, v0}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    move-result p2

    .line 87
    :goto_0
    aget-byte v0, p1, v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    aget-byte v0, p1, v3

    if-eqz v0, :cond_2

    .line 88
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected DCERPC PDU header"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x3

    .line 90
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 92
    :cond_3
    iput-boolean v1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    const/16 v0, 0x8

    .line 94
    invoke-static {p1, v0}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v0

    .line 95
    iget v1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->max_recv:I

    if-le v0, v1, :cond_4

    .line 96
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected fragment length: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-ge p2, v0, :cond_5

    .line 99
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    sub-int v2, v0, p2

    invoke-virtual {v1, p1, p2, v2}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected doSendFragment([BIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    invoke-virtual {v0}, Ljcifs/smb/SmbFileOutputStream;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance p1, Ljava/io/IOException;

    const-string p2, "DCERPC pipe is no longer open"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getNamedPipeInputStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbFileInputStream;

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 67
    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getNamedPipeOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbFileOutputStream;

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    :cond_2
    if-eqz p4, :cond_3

    .line 70
    iget-object p4, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    const/4 v0, 0x1

    invoke-virtual {p4, p1, p2, p3, v0}, Ljcifs/smb/SmbFileOutputStream;->writeDirect([BIII)V

    return-void

    .line 73
    :cond_3
    iget-object p4, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Ljcifs/smb/SmbFileOutputStream;->write([BII)V

    return-void
.end method
