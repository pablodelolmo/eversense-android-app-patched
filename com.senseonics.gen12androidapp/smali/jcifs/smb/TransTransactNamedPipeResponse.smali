.class Ljcifs/smb/TransTransactNamedPipeResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "TransTransactNamedPipeResponse.java"


# instance fields
.field private pipe:Ljcifs/smb/SmbNamedPipe;


# direct methods
.method constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 26
    iput-object p1, p0, Ljcifs/smb/TransTransactNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 2

    .line 45
    iget-object v0, p0, Ljcifs/smb/TransTransactNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget-object v0, v0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Ljcifs/smb/TransTransactNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget-object v0, v0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    check-cast v0, Ljcifs/smb/TransactNamedPipeInputStream;

    .line 47
    iget-object v1, v0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/TransactNamedPipeInputStream;->receive([BII)I

    .line 49
    iget-object p1, v0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 50
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return p3
.end method

.method readParametersWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransTransactNamedPipeResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method writeParametersWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
