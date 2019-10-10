.class Ljcifs/smb/TransactNamedPipeOutputStream;
.super Ljcifs/smb/SmbFileOutputStream;
.source "TransactNamedPipeOutputStream.java"


# instance fields
.field private dcePipe:Z

.field private path:Ljava/lang/String;

.field private pipe:Ljcifs/smb/SmbNamedPipe;

.field private tmp:[B


# direct methods
.method constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget v0, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v1, -0xff01

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    const/4 v0, 0x1

    .line 28
    new-array v2, v0, [B

    iput-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    .line 33
    iput-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 34
    iget v2, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 v3, 0x600

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->dcePipe:Z

    .line 35
    iget-object p1, p1, Ljcifs/smb/SmbNamedPipe;->unc:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

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

    .line 39
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->close()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 43
    iget-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/TransactNamedPipeOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/TransactNamedPipeOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 53
    :cond_0
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v0, v0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    new-instance v1, Ljcifs/smb/TransWaitNamedPipe;

    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v2}, Ljcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbNamedPipe;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 56
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    new-instance v1, Ljcifs/smb/TransCallNamedPipe;

    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p2, p3}, Ljcifs/smb/TransCallNamedPipe;-><init>(Ljava/lang/String;[BII)V

    new-instance p1, Ljcifs/smb/TransCallNamedPipeResponse;

    iget-object p2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-direct {p1, p2}, Ljcifs/smb/TransCallNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    invoke-virtual {v0, v1, p1}, Ljcifs/smb/SmbNamedPipe;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v0, v0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 60
    invoke-virtual {p0}, Ljcifs/smb/TransactNamedPipeOutputStream;->ensureOpen()V

    .line 61
    new-instance v0, Ljcifs/smb/TransTransactNamedPipe;

    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v1, v1, Ljcifs/smb/SmbNamedPipe;->fid:I

    invoke-direct {v0, v1, p1, p2, p3}, Ljcifs/smb/TransTransactNamedPipe;-><init>(I[BII)V

    .line 62
    iget-boolean p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->dcePipe:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x400

    .line 63
    iput p1, v0, Ljcifs/smb/TransTransactNamedPipe;->maxDataCount:I

    .line 65
    :cond_2
    iget-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    new-instance p2, Ljcifs/smb/TransTransactNamedPipeResponse;

    iget-object p3, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-direct {p2, p3}, Ljcifs/smb/TransTransactNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    invoke-virtual {p1, v0, p2}, Ljcifs/smb/SmbNamedPipe;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_3
    :goto_0
    return-void
.end method
