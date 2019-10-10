.class public Ljcifs/smb/SmbNamedPipe;
.super Ljcifs/smb/SmbFile;
.source "SmbNamedPipe.java"


# static fields
.field public static final PIPE_TYPE_CALL:I = 0x100

.field public static final PIPE_TYPE_DCE_TRANSACT:I = 0x600

.field public static final PIPE_TYPE_RDONLY:I = 0x1

.field public static final PIPE_TYPE_RDWR:I = 0x3

.field public static final PIPE_TYPE_TRANSACT:I = 0x200

.field public static final PIPE_TYPE_WRONLY:I = 0x2


# instance fields
.field pipeIn:Ljava/io/InputStream;

.field pipeOut:Ljava/io/OutputStream;

.field pipeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 135
    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    .line 136
    iput p1, p0, Ljcifs/smb/SmbNamedPipe;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 141
    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    .line 142
    iput p1, p0, Ljcifs/smb/SmbNamedPipe;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 147
    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    .line 148
    iput p1, p0, Ljcifs/smb/SmbNamedPipe;->type:I

    return-void
.end method


# virtual methods
.method public getNamedPipeInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 164
    iget v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    iget v1, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v2, -0xff01

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    invoke-direct {v0, p0, v1}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    goto :goto_1

    .line 166
    :cond_1
    :goto_0
    new-instance v0, Ljcifs/smb/TransactNamedPipeInputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/TransactNamedPipeInputStream;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    .line 172
    :cond_2
    :goto_1
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getNamedPipeOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 185
    iget v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    const/4 v1, 0x0

    iget v2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v3, -0xff01

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    invoke-direct {v0, p0, v1, v2}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    goto :goto_1

    .line 187
    :cond_1
    :goto_0
    new-instance v0, Ljcifs/smb/TransactNamedPipeOutputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/TransactNamedPipeOutputStream;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    .line 193
    :cond_2
    :goto_1
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    return-object v0
.end method
