.class public Ljcifs/smb/SmbFile;
.super Ljava/net/URLConnection;
.source "SmbFile.java"

# interfaces
.implements Ljcifs/smb/SmbConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/SmbFile$WriterThread;
    }
.end annotation


# static fields
.field public static final ATTR_ARCHIVE:I = 0x20

.field static final ATTR_COMPRESSED:I = 0x800

.field public static final ATTR_DIRECTORY:I = 0x10

.field static final ATTR_GET_MASK:I = 0x7fff

.field public static final ATTR_HIDDEN:I = 0x2

.field static final ATTR_NORMAL:I = 0x80

.field public static final ATTR_READONLY:I = 0x1

.field static final ATTR_SET_MASK:I = 0x30a7

.field public static final ATTR_SYSTEM:I = 0x4

.field static final ATTR_TEMPORARY:I = 0x100

.field public static final ATTR_VOLUME:I = 0x8

.field static final DEFAULT_ATTR_EXPIRATION_PERIOD:I = 0x1388

.field public static final FILE_NO_SHARE:I = 0x0

.field public static final FILE_SHARE_DELETE:I = 0x4

.field public static final FILE_SHARE_READ:I = 0x1

.field public static final FILE_SHARE_WRITE:I = 0x2

.field static final HASH_DOT:I

.field static final HASH_DOT_DOT:I

.field static final O_APPEND:I = 0x4

.field static final O_CREAT:I = 0x10

.field static final O_EXCL:I = 0x20

.field static final O_RDONLY:I = 0x1

.field static final O_RDWR:I = 0x3

.field static final O_TRUNC:I = 0x40

.field static final O_WRONLY:I = 0x2

.field public static final TYPE_COMM:I = 0x40

.field public static final TYPE_FILESYSTEM:I = 0x1

.field public static final TYPE_NAMED_PIPE:I = 0x10

.field public static final TYPE_PRINTER:I = 0x20

.field public static final TYPE_SERVER:I = 0x4

.field public static final TYPE_SHARE:I = 0x8

.field public static final TYPE_WORKGROUP:I = 0x2

.field static attrExpirationPeriod:J

.field protected static dfs:Ljcifs/smb/Dfs;

.field static ignoreCopyToException:Z

.field static log:Ljcifs/util/LogStream;


# instance fields
.field addressIndex:I

.field addresses:[Ljcifs/UniAddress;

.field private attrExpiration:J

.field private attributes:I

.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field private blank_resp:Ljcifs/smb/SmbComBlankResponse;

.field private canon:Ljava/lang/String;

.field private createTime:J

.field private dfsReferral:Ljcifs/smb/DfsReferral;

.field fid:I

.field private isExists:Z

.field private lastModified:J

.field opened:Z

.field private share:Ljava/lang/String;

.field private shareAccess:I

.field private size:J

.field private sizeExpiration:J

.field tree:Ljcifs/smb/SmbTree;

.field tree_num:I

.field type:I

.field unc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "."

    .line 356
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Ljcifs/smb/SmbFile;->HASH_DOT:I

    const-string v0, ".."

    .line 357
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Ljcifs/smb/SmbFile;->HASH_DOT_DOT:I

    .line 359
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    :try_start_0
    const-string v0, "jcifs.Config"

    .line 366
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const-string v0, "jcifs.smb.client.attrExpirationPeriod"

    const-wide/16 v1, 0x1388

    .line 370
    invoke-static {v0, v1, v2}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    const-string v0, "jcifs.smb.client.ignoreCopyToException"

    const/4 v1, 0x1

    .line 371
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbFile;->ignoreCopyToException:Z

    .line 372
    new-instance v0, Ljcifs/smb/Dfs;

    invoke-direct {v0}, Ljcifs/smb/Dfs;-><init>()V

    sput-object v0, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 485
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    sget-object p1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    sget-object p1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    sget-object p1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p4, -0x8

    if-eqz p1, :cond_0

    .line 564
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 566
    :cond_0
    iput p4, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 500
    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/net/URL;

    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p3, -0x8

    if-eqz p1, :cond_0

    .line 520
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 522
    :cond_0
    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 603
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 1

    .line 614
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x7

    .line 421
    iput v0, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    .line 423
    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 428
    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-nez p2, :cond_0

    .line 615
    new-instance p2, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 617
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 466
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_0
    iget-object p1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 588
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_0
    iget-object p1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p3, -0x8

    if-eqz p1, :cond_1

    .line 592
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 594
    :cond_1
    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void
.end method

.method constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 622
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, p4, 0x10

    if-lez v3, :cond_1

    const-string v3, "/"

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    .line 627
    iget-object v0, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 630
    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 632
    iget-object v0, p1, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 634
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 635
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    .line 636
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 638
    :cond_3
    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string p1, "\\"

    .line 639
    iput-object p1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_2

    .line 640
    :cond_4
    iget-object v0, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x5c

    if-eqz v0, :cond_5

    .line 641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_2

    .line 643
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 648
    :goto_2
    iput p3, p0, Ljcifs/smb/SmbFile;->type:I

    .line 649
    iput p4, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 650
    iput-wide p5, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 651
    iput-wide p7, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 652
    iput-wide p9, p0, Ljcifs/smb/SmbFile;->size:J

    .line 653
    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide p3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide p1, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void
.end method

.method private blank_resp()Ljcifs/smb/SmbComBlankResponse;
    .locals 1

    .line 660
    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    .line 663
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    return-object v0
.end method

.method private processAces([Ljcifs/smb/ACE;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2857
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2861
    array-length p2, p1

    new-array p2, p2, [Ljcifs/smb/SID;

    const/4 v2, 0x0

    .line 2864
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 2865
    aget-object v3, p1, v2

    iget-object v3, v3, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    aput-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2868
    :cond_0
    :goto_1
    array-length p1, p2

    if-ge v1, p1, :cond_3

    .line 2869
    array-length p1, p2

    sub-int/2addr p1, v1

    const/16 v2, 0x40

    if-le p1, v2, :cond_1

    const/16 p1, 0x40

    .line 2872
    :cond_1
    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v2, p2, v1, p1}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V

    add-int/lit8 v1, v1, 0x40

    goto :goto_1

    .line 2875
    :cond_2
    :goto_2
    array-length p2, p1

    if-ge v1, p2, :cond_3

    .line 2876
    aget-object p2, p1, v1

    iget-object p2, p2, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    iput-object v0, p2, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 2877
    aget-object p2, p1, v1

    iget-object p2, p2, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v2, p2, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private queryFSInformation(I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2493
    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v0, p1}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    .line 2494
    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v1, p1}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2496
    iget p1, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 2497
    iget-object p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {p1}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->size:J

    .line 2498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 2501
    :cond_0
    iget-object p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {p1}, Ljcifs/smb/AllocInfo;->getFree()J

    move-result-wide v0

    return-wide v0
.end method

.method static queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 787
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 791
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 792
    aget-char v3, p0, v0

    const/16 v4, 0x26

    if-ne v3, v4, :cond_1

    if-le v1, v2, :cond_0

    .line 795
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 796
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 798
    new-instance p1, Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2

    move v1, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-le v1, v2, :cond_4

    .line 807
    new-instance v0, Ljava/lang/String;

    sub-int v3, v1, v2

    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 808
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 810
    new-instance p1, Ljava/lang/String;

    array-length v0, p0

    sub-int/2addr v0, v1

    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public canRead()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1456
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1459
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1474
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    return v1

    .line 1477
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1033
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->close(J)V

    return-void
.end method

.method close(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1016
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1017
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 1023
    :cond_0
    new-instance v0, Ljcifs/smb/SmbComClose;

    invoke-direct {v0, p1, p2, p3}, Ljcifs/smb/SmbComClose;-><init>(IJ)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void
.end method

.method close(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1026
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1029
    :cond_0
    iget v0, p0, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/SmbFile;->close(IJ)V

    const/4 p1, 0x0

    .line 1030
    iput-boolean p1, p0, Ljcifs/smb/SmbFile;->opened:Z

    return-void
.end method

.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 950
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 951
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    .line 954
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 959
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v1

    if-nez v1, :cond_2

    .line 960
    throw v0

    .line 961
    :cond_2
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 962
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 957
    throw v0
.end method

.method connect0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 880
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 886
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Failed to connect to server"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 884
    throw v0

    :catch_2
    move-exception v0

    .line 882
    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, "Failed to connect to server"

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public copyTo(Ljcifs/smb/SmbFile;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2293
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2297
    :cond_0
    new-instance v6, Ljcifs/smb/SmbComReadAndX;

    invoke-direct {v6}, Ljcifs/smb/SmbComReadAndX;-><init>()V

    .line 2298
    new-instance v7, Ljcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v7}, Ljcifs/smb/SmbComReadAndXResponse;-><init>()V

    .line 2300
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 2301
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->connect0()V

    const/4 v0, 0x0

    .line 2312
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2318
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v8, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2321
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Source and destination paths overlap."

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2326
    :catch_0
    :cond_1
    new-instance v8, Ljcifs/smb/SmbFile$WriterThread;

    invoke-direct {v8, p0}, Ljcifs/smb/SmbFile$WriterThread;-><init>(Ljcifs/smb/SmbFile;)V

    const/4 v0, 0x1

    .line 2327
    invoke-virtual {v8, v0}, Ljcifs/smb/SmbFile$WriterThread;->setDaemon(Z)V

    .line 2328
    invoke-virtual {v8}, Ljcifs/smb/SmbFile$WriterThread;->start()V

    .line 2334
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 2335
    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 2337
    iget v2, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget v3, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    if-ge v2, v3, :cond_2

    .line 2338
    iget v2, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v2, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    goto :goto_0

    .line 2340
    :cond_2
    iget v1, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iput v1, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    .line 2343
    :goto_0
    iget v1, v0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v1, v1, -0x46

    iget v0, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v0, v0, -0x46

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v0, 0x2

    .line 2344
    filled-new-array {v0, v4}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [[B

    move-object v1, p0

    move-object v2, p1

    move-object v5, v8

    .line 2347
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 2349
    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    return-void

    :catchall_0
    move-exception p1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    throw p1

    .line 2294
    :cond_3
    :goto_1
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups or servers"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v15, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 2146
    iget-wide v2, v1, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    if-gez v2, :cond_0

    const/16 v2, 0x11

    .line 2147
    iput v2, v1, Ljcifs/smb/SmbFile;->attributes:I

    .line 2148
    iput-wide v8, v1, Ljcifs/smb/SmbFile;->createTime:J

    .line 2149
    iput-wide v8, v1, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2150
    iput-boolean v6, v1, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2152
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x101

    invoke-virtual {v1, v2, v3}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v2

    .line 2154
    invoke-interface {v2}, Ljcifs/smb/Info;->getAttributes()I

    move-result v3

    iput v3, v1, Ljcifs/smb/SmbFile;->attributes:I

    .line 2155
    invoke-interface {v2}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v3

    iput-wide v3, v1, Ljcifs/smb/SmbFile;->createTime:J

    .line 2156
    invoke-interface {v2}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2161
    iput-boolean v10, v1, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2165
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2169
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v2

    .line 2170
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v10, :cond_1

    .line 2172
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->mkdir()V

    .line 2173
    iget v3, v1, Ljcifs/smb/SmbFile;->attributes:I

    iget-wide v4, v1, Ljcifs/smb/SmbFile;->createTime:J

    iget-wide v7, v1, Ljcifs/smb/SmbFile;->lastModified:J
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v13

    const/4 v9, 0x0

    move-wide v6, v7

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v9, 0x0

    :goto_0
    move-object v2, v0

    .line 2175
    invoke-virtual {v2}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v3

    const v4, -0x3fffffde    # -2.000008f

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v3

    const v4, -0x3fffffcb    # -2.0000126f

    if-eq v3, v4, :cond_2

    .line 2177
    throw v2

    :cond_1
    const/4 v9, 0x0

    :cond_2
    :goto_1
    const-string v2, "*"

    const/16 v3, 0x16

    const/4 v4, 0x0

    .line 2182
    invoke-virtual {v1, v2, v3, v4, v4}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v10

    .line 2184
    :goto_2
    :try_start_2
    array-length v2, v10

    if-ge v9, v2, :cond_c

    .line 2185
    new-instance v16, Ljcifs/smb/SmbFile;

    aget-object v2, v10, v9

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v2, v10, v9

    iget v5, v2, Ljcifs/smb/SmbFile;->type:I

    aget-object v2, v10, v9

    iget v6, v2, Ljcifs/smb/SmbFile;->attributes:I

    aget-object v2, v10, v9

    iget-wide v7, v2, Ljcifs/smb/SmbFile;->createTime:J

    aget-object v2, v10, v9

    iget-wide v2, v2, Ljcifs/smb/SmbFile;->lastModified:J

    move-wide/from16 v17, v2

    aget-object v2, v10, v9

    iget-wide v2, v2, Ljcifs/smb/SmbFile;->size:J

    move-wide/from16 v19, v2

    move-object/from16 v2, v16

    move-object v3, v13

    move/from16 v22, v9

    move-object/from16 v21, v10

    move-wide/from16 v9, v17

    move-wide/from16 v11, v19

    invoke-direct/range {v2 .. v12}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    .line 2192
    aget-object v2, v21, v22

    move-object/from16 v3, v16

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v15

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v9, v22, 0x1

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v10, v21

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 2197
    new-instance v3, Ljcifs/smb/SmbException;

    iget-object v4, v1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 2195
    new-instance v3, Ljcifs/smb/SmbException;

    iget-object v4, v1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    const/4 v11, 0x0

    const/16 v2, 0x80

    .line 2203
    :try_start_3
    invoke-virtual {v1, v10, v11, v2, v11}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v12, 0x102

    const/16 v6, 0x52

    .line 2205
    :try_start_4
    iget v2, v1, Ljcifs/smb/SmbFile;->attributes:I

    invoke-virtual {v13, v6, v12, v2, v11}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_4
    .catch Ljcifs/smb/SmbAuthException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljcifs/smb/SmbException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 2209
    :try_start_5
    iget v3, v13, Ljcifs/smb/SmbFile;->attributes:I

    and-int/2addr v3, v10

    if-eqz v3, :cond_9

    .line 2212
    iget v2, v13, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v3, v2, -0x2

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    move-object v2, v13

    const/16 v10, 0x52

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    .line 2213
    iget v2, v1, Ljcifs/smb/SmbFile;->attributes:I

    invoke-virtual {v13, v10, v12, v2, v11}, Ljcifs/smb/SmbFile;->open(IIII)V

    :goto_3
    move-wide v6, v8

    const/4 v10, 0x0

    .line 2224
    :goto_4
    iget v2, v1, Ljcifs/smb/SmbFile;->fid:I

    move/from16 v12, p3

    move-object/from16 v5, p5

    invoke-virtual {v5, v2, v6, v7, v12}, Ljcifs/smb/SmbComReadAndX;->setParam(IJI)V

    .line 2225
    aget-object v2, p2, v10

    move-object/from16 v4, p6

    invoke-virtual {v4, v2, v11}, Ljcifs/smb/SmbComReadAndXResponse;->setParam([BI)V

    .line 2226
    invoke-virtual {v1, v5, v4}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2228
    monitor-enter p4
    :try_end_5
    .catch Ljcifs/smb/SmbException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2229
    :try_start_6
    iget-object v2, v15, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-eqz v2, :cond_4

    .line 2230
    iget-object v2, v15, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    throw v2

    .line 2232
    :cond_4
    :goto_5
    iget-boolean v2, v15, Ljcifs/smb/SmbFile$WriterThread;->ready:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_5

    .line 2234
    :try_start_7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catch_5
    move-exception v0

    .line 2236
    :try_start_8
    new-instance v2, Ljcifs/smb/SmbException;

    iget-object v3, v13, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2239
    :cond_5
    iget-object v2, v15, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-eqz v2, :cond_6

    .line 2240
    iget-object v2, v15, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    throw v2

    .line 2242
    :cond_6
    iget v2, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz v2, :cond_7

    .line 2243
    monitor-exit p4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2252
    :try_start_9
    new-instance v2, Ljcifs/smb/Trans2SetFileInformation;

    iget v15, v13, Ljcifs/smb/SmbFile;->fid:I

    iget v3, v1, Ljcifs/smb/SmbFile;->attributes:I

    iget-wide v4, v1, Ljcifs/smb/SmbFile;->createTime:J

    iget-wide v6, v1, Ljcifs/smb/SmbFile;->lastModified:J

    move-object v14, v2

    move/from16 v16, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v14 .. v20}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    new-instance v3, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v3}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    invoke-virtual {v13, v2, v3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2255
    invoke-virtual {v13, v8, v9}, Ljcifs/smb/SmbFile;->close(J)V
    :try_end_9
    .catch Ljcifs/smb/SmbException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_7

    .line 2245
    :cond_7
    :try_start_a
    aget-object v3, p2, v10

    iget v2, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    move/from16 v16, v2

    move-object v2, v15

    move-object v8, v4

    move/from16 v4, v16

    move-object v5, v13

    move-wide/from16 v16, v6

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    .line 2246
    monitor-exit p4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v2, 0x1

    if-ne v10, v2, :cond_8

    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    const/4 v10, 0x1

    .line 2249
    :goto_6
    :try_start_b
    iget v2, v8, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I
    :try_end_b
    .catch Ljcifs/smb/SmbException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    int-to-long v2, v2

    add-long v6, v16, v2

    const-wide/16 v8, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 2246
    :try_start_c
    monitor-exit p4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v2

    .line 2217
    :cond_9
    throw v2
    :try_end_d
    .catch Ljcifs/smb/SmbException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 2258
    :try_start_e
    sget-boolean v3, Ljcifs/smb/SmbFile;->ignoreCopyToException:Z

    if-nez v3, :cond_a

    .line 2259
    new-instance v3, Ljcifs/smb/SmbException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to copy file from ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] to ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2261
    :cond_a
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_b

    .line 2262
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2264
    :cond_b
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    :cond_c
    return-void

    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    throw v2
.end method

.method public createNewFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2564
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2565
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x33

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 2567
    invoke-virtual {p0, v0, v2, v1, v2}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbFile;->close(IJ)V

    return-void
.end method

.method public createTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1561
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1562
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1563
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2363
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2364
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2365
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->delete(Ljava/lang/String;)V

    return-void
.end method

.method delete(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2368
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2369
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2372
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-lez v0, :cond_1

    const/16 v0, 0x11

    .line 2373
    iput v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 2374
    iput-wide v3, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 2375
    iput-wide v3, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2376
    iput-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2378
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x101

    invoke-virtual {p0, v0, v5}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    .line 2380
    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v5

    iput v5, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 2381
    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v5

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 2382
    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v5

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->lastModified:J

    .line 2384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2385
    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 2388
    :cond_1
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 2389
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->setReadWrite()V

    .line 2396
    :cond_2
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 2397
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 2399
    :cond_3
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    :try_start_0
    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v5, 0x0

    .line 2405
    invoke-virtual {p0, v0, v1, v5, v5}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    .line 2406
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_4

    .line 2407
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->delete()V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2414
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    const v2, -0x3ffffff1    # -2.0000036f

    if-eq v1, v2, :cond_4

    .line 2415
    throw v0

    .line 2419
    :cond_4
    new-instance v0, Ljcifs/smb/SmbComDeleteDirectory;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComDeleteDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_1

    .line 2421
    :cond_5
    new-instance v0, Ljcifs/smb/SmbComDelete;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2424
    :goto_1
    iput-wide v3, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void
.end method

.method doConnect()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    .line 894
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    goto :goto_0

    .line 897
    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v1

    .line 898
    iget-object v3, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v3}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v3

    iput-object v3, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 901
    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v3

    .line 902
    iget-object v4, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    sget-object v5, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v6, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v6, v6, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v7, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v5, v3, v6, v2, v7}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v4, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 903
    iget-object v4, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v4, v4, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    .line 904
    iget-object v4, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput v5, v4, Ljcifs/smb/SmbTree;->connectionState:I

    .line 908
    :cond_2
    :try_start_0
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v8, 0x3

    if-lt v4, v8, :cond_3

    .line 909
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doConnect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 911
    :cond_3
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v2, v2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 916
    iget-object v4, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 917
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    .line 918
    invoke-virtual {v0, v2, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 919
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v2, v2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_2

    .line 920
    :cond_4
    iget-object v4, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljcifs/smb/NtlmAuthenticator;->requestNtlmPasswordAuthentication(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 922
    iput-object v4, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 923
    iget-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    .line 924
    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 925
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v4, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v4, v4, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v8, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v3, v4, v2, v8}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    :cond_5
    iput-boolean v6, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 926
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v0, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v0, :cond_6

    .line 927
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput v5, v0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 929
    :cond_6
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v2, v2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :goto_2
    return-void

    .line 931
    :cond_7
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v7, :cond_8

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->hasNextAddress()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 932
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbAuthException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 933
    :cond_8
    throw v0
.end method

.method doDfsRootEnum()[Ljcifs/smb/FileEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ncacn_np:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[\\PIPE\\netdfs]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v0

    const/4 v1, 0x4

    .line 1845
    :try_start_0
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;-><init>(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 1847
    iget v3, v2, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->retval:I

    if-eqz v3, :cond_0

    .line 1848
    new-instance v3, Ljcifs/smb/SmbException;

    iget v2, v2, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->retval:I

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v3

    .line 1849
    :cond_0
    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->getEntries()[Ljcifs/smb/FileEntry;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    :try_start_1
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1854
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_1

    .line 1855
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    .line 1852
    :try_start_2
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1854
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_2

    .line 1855
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1856
    :cond_2
    :goto_1
    throw v2
.end method

.method doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    if-eqz p6, :cond_1

    .line 1724
    instance-of v0, p6, Ljcifs/smb/DosFileFilter;

    if-eqz v0, :cond_1

    .line 1725
    move-object p4, p6

    check-cast p4, Ljcifs/smb/DosFileFilter;

    .line 1726
    iget-object v0, p4, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1727
    iget-object p3, p4, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    .line 1728
    :cond_0
    iget p4, p4, Ljcifs/smb/DosFileFilter;->attributes:I

    :cond_1
    move-object v3, p3

    move v4, p4

    .line 1732
    :try_start_0
    iget-object p3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    .line 1733
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    goto :goto_0

    .line 1735
    :cond_2
    iget-object p3, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez p3, :cond_3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    .line 1736
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    goto :goto_1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    .line 1738
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    goto :goto_1

    :cond_4
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    .line 1734
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 1743
    new-instance p2, Ljcifs/smb/SmbException;

    iget-object p3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1741
    new-instance p2, Ljcifs/smb/SmbException;

    iget-object p3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    .line 1973
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v1

    .line 1974
    iget-object v2, v12, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    .line 1976
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v3, v2, :cond_0

    .line 1977
    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v12, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " directory must end with \'/\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1980
    :cond_0
    new-instance v2, Ljcifs/smb/Trans2FindFirst2;

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v2, v1, v3, v4}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1981
    new-instance v10, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct {v10}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    .line 1983
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v11, 0x3

    if-lt v1, v11, :cond_1

    .line 1984
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFindFirstNext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Ljcifs/smb/SmbComTransaction;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 1986
    :cond_1
    invoke-virtual {v12, v2, v10}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1988
    iget v8, v10, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    .line 1989
    new-instance v9, Ljcifs/smb/Trans2FindNext2;

    iget v1, v10, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    iget-object v2, v10, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    invoke-direct {v9, v8, v1, v2}, Ljcifs/smb/Trans2FindNext2;-><init>(IILjava/lang/String;)V

    const/4 v1, 0x2

    .line 1994
    iput-byte v1, v10, Ljcifs/smb/Trans2FindFirst2Response;->subCommand:B

    :goto_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1997
    :goto_1
    iget v1, v10, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    if-ge v6, v1, :cond_9

    .line 1998
    iget-object v1, v10, Ljcifs/smb/Trans2FindFirst2Response;->results:[Ljcifs/smb/FileEntry;

    aget-object v1, v1, v6

    .line 1999
    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2000
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v11, :cond_4

    .line 2001
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 2002
    sget v3, Ljcifs/smb/SmbFile;->HASH_DOT:I

    if-eq v2, v3, :cond_2

    sget v3, Ljcifs/smb/SmbFile;->HASH_DOT_DOT:I

    if-ne v2, v3, :cond_4

    :cond_2
    const-string v2, "."

    .line 2003
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".."

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_2
    move/from16 v16, v6

    move/from16 v25, v8

    move-object/from16 v26, v9

    move-object v14, v10

    const/16 v17, 0x3

    goto :goto_3

    :cond_4
    if-eqz v14, :cond_5

    .line 2007
    invoke-interface {v14, v12, v7}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 2010
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2011
    new-instance v5, Ljcifs/smb/SmbFile;

    const/4 v4, 0x1

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getAttributes()I

    move-result v16

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->createTime()J

    move-result-wide v17

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->lastModified()J

    move-result-wide v19

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->length()J

    move-result-wide v21

    move-object v1, v5

    move-object v2, v12

    move-object v3, v7

    move-object/from16 v23, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v24, v7

    move-wide/from16 v6, v17

    move/from16 v25, v8

    move-object/from16 v26, v9

    move-wide/from16 v8, v19

    move-object v14, v10

    const/16 v17, 0x3

    move-wide/from16 v10, v21

    invoke-direct/range {v1 .. v11}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    if-eqz v15, :cond_6

    move-object/from16 v1, v23

    .line 2013
    invoke-interface {v15, v1}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_6
    move-object/from16 v1, v23

    :cond_7
    if-eqz p2, :cond_8

    .line 2017
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object/from16 v1, v24

    .line 2019
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v16, 0x1

    move-object v10, v14

    move/from16 v8, v25

    move-object/from16 v9, v26

    const/4 v11, 0x3

    move-object/from16 v14, p5

    goto/16 :goto_1

    :cond_9
    move/from16 v25, v8

    move-object/from16 v26, v9

    move-object v14, v10

    const/16 v17, 0x3

    .line 2024
    iget-boolean v1, v14, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    if-nez v1, :cond_b

    iget v1, v14, Ljcifs/smb/Trans2FindFirst2Response;->numEntries:I

    if-nez v1, :cond_a

    goto :goto_4

    .line 2028
    :cond_a
    iget v1, v14, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    iget-object v3, v14, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    move-object/from16 v4, v26

    invoke-virtual {v4, v1, v3}, Ljcifs/smb/SmbComTransaction;->reset(ILjava/lang/String;)V

    .line 2029
    invoke-virtual {v14}, Ljcifs/smb/Trans2FindFirst2Response;->reset()V

    .line 2030
    invoke-virtual {v12, v4, v14}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    move-object v9, v4

    move-object v10, v14

    move/from16 v8, v25

    const/4 v11, 0x3

    move-object/from16 v14, p5

    goto/16 :goto_0

    .line 2034
    :cond_b
    :goto_4
    :try_start_0
    new-instance v1, Ljcifs/smb/SmbComFindClose2;

    move/from16 v2, v25

    invoke-direct {v1, v2}, Ljcifs/smb/SmbComFindClose2;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2036
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_c

    .line 2037
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_c
    :goto_5
    return-void
.end method

.method doMsrpcShareEnum()[Ljcifs/smb/FileEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1863
    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;-><init>(Ljava/lang/String;)V

    .line 1872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ncacn_np:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[\\PIPE\\srvsvc]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v1, v2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v1

    const/4 v2, 0x4

    .line 1877
    :try_start_0
    invoke-virtual {v1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 1878
    iget v3, v0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->retval:I

    if-eqz v3, :cond_0

    .line 1879
    new-instance v3, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->retval:I

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v3

    .line 1880
    :cond_0
    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->getEntries()[Ljcifs/smb/FileEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1883
    :try_start_1
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1885
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v2, :cond_1

    .line 1886
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 1883
    :try_start_2
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1885
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v2, :cond_2

    .line 1886
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1887
    :cond_2
    :goto_1
    throw v0
.end method

.method doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 1909
    iget-object v0, v11, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    :goto_0
    const/4 v9, 0x2

    if-nez v0, :cond_1

    .line 1914
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1915
    new-instance v0, Ljcifs/smb/NetServerEnum2;

    iget-object v1, v11, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v2}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    .line 1917
    new-instance v1, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v1}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    :goto_1
    move-object v10, v0

    move-object v7, v1

    goto :goto_2

    :cond_1
    if-ne v0, v9, :cond_c

    .line 1919
    new-instance v0, Ljcifs/smb/NetServerEnum2;

    iget-object v1, v11, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    .line 1920
    new-instance v1, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v1}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    goto :goto_1

    .line 1929
    :goto_2
    invoke-virtual {v11, v10, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1931
    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v1, 0xea

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-eq v0, v1, :cond_2

    .line 1933
    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, v7, Ljcifs/smb/SmbComTransactionResponse;->status:I

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    .line 1935
    :cond_2
    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-ne v0, v1, :cond_3

    const/16 v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    if-eqz v16, :cond_4

    .line 1937
    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    sub-int/2addr v0, v2

    :goto_4
    move v8, v0

    goto :goto_5

    :cond_4
    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    goto :goto_4

    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v8, :cond_9

    .line 1939
    iget-object v0, v7, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v0, v0, v5

    .line 1940
    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v13, :cond_5

    .line 1941
    invoke-interface {v13, v11, v6}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_7

    .line 1943
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 1945
    new-instance v4, Ljcifs/smb/SmbFile;

    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getType()I

    move-result v3

    const/16 v17, 0x11

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object v0, v4

    move-object v1, v11

    move-object v2, v6

    move-object v15, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move-object/from16 v24, v6

    move-wide/from16 v5, v18

    move-object/from16 v25, v7

    move/from16 v18, v8

    move-wide/from16 v7, v20

    move-object/from16 v26, v10

    const/4 v13, 0x2

    move-wide/from16 v9, v22

    invoke-direct/range {v0 .. v10}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    if-eqz v14, :cond_6

    .line 1947
    invoke-interface {v14, v15}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    if-eqz p2, :cond_7

    .line 1950
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    move-object/from16 v1, v24

    .line 1952
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    :goto_7
    move/from16 v17, v5

    move-object/from16 v25, v7

    move/from16 v18, v8

    move-object/from16 v26, v10

    const/4 v13, 0x2

    :goto_8
    add-int/lit8 v5, v17, 0x1

    move/from16 v8, v18

    move-object/from16 v7, v25

    move-object/from16 v10, v26

    const/4 v9, 0x2

    move-object/from16 v13, p5

    goto :goto_6

    :cond_9
    move-object/from16 v25, v7

    move-object/from16 v26, v10

    const/4 v13, 0x2

    .line 1956
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v1

    if-eq v1, v13, :cond_a

    goto :goto_9

    :cond_a
    const/16 v1, -0x29

    move-object/from16 v2, v26

    .line 1959
    iput-byte v1, v2, Ljcifs/smb/SmbComTransaction;->subCommand:B

    move-object/from16 v1, v25

    .line 1960
    move-object v7, v1

    check-cast v7, Ljcifs/smb/NetServerEnum2Response;

    iget-object v3, v7, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljcifs/smb/SmbComTransaction;->reset(ILjava/lang/String;)V

    .line 1961
    invoke-virtual {v1}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    if-nez v16, :cond_b

    :goto_9
    return-void

    :cond_b
    move-object v7, v1

    move-object v10, v2

    const/4 v9, 0x2

    move-object/from16 v13, p5

    goto/16 :goto_2

    .line 1922
    :cond_c
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested list operations is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method doNetShareEnum()[Ljcifs/smb/FileEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1891
    new-instance v0, Ljcifs/smb/NetShareEnum;

    invoke-direct {v0}, Ljcifs/smb/NetShareEnum;-><init>()V

    .line 1892
    new-instance v1, Ljcifs/smb/NetShareEnumResponse;

    invoke-direct {v1}, Ljcifs/smb/NetShareEnumResponse;-><init>()V

    .line 1894
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1896
    iget v0, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-eqz v0, :cond_0

    .line 1897
    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    .line 1899
    :cond_0
    iget-object v0, v1, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    return-object v0
.end method

.method doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    .line 1754
    iget-object v1, v12, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v2, v1, :cond_0

    .line 1762
    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v12, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " directory must end with \'/\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1763
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 1764
    new-instance v1, Ljcifs/smb/SmbException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The requested list operations is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1766
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1768
    sget-object v3, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v3, v4, v5}, Ljcifs/smb/Dfs;->isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1773
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doDfsRootEnum()[Ljcifs/smb/FileEntry;

    move-result-object v3

    const/4 v5, 0x0

    .line 1774
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 1775
    aget-object v6, v3, v5

    .line 1776
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1777
    invoke-virtual {v1, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1780
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-lt v5, v2, :cond_3

    .line 1781
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1785
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_7

    const/4 v2, 0x3

    .line 1788
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1790
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doMsrpcShareEnum()[Ljcifs/smb/FileEntry;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1792
    :try_start_3
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-lt v5, v2, :cond_4

    .line 1793
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v5}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1794
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doNetShareEnum()[Ljcifs/smb/FileEntry;

    move-result-object v5

    :goto_2
    const/4 v6, 0x0

    .line 1796
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_7

    .line 1797
    aget-object v7, v5, v6

    .line 1798
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1799
    invoke-virtual {v1, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 1803
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    if-lt v5, v2, :cond_6

    .line 1804
    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1807
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v2

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_9

    .line 1810
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1811
    instance-of v1, v3, Ljcifs/smb/SmbException;

    if-nez v1, :cond_8

    .line 1812
    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, v12, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1813
    :cond_8
    check-cast v3, Ljcifs/smb/SmbException;

    throw v3

    .line 1816
    :cond_9
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1817
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1818
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/FileEntry;

    .line 1819
    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v14, :cond_a

    .line 1820
    invoke-interface {v14, v12, v11}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_4

    .line 1822
    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 1824
    new-instance v8, Ljcifs/smb/SmbFile;

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getType()I

    move-result v4

    const/16 v5, 0x11

    const-wide/16 v6, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object v1, v8

    move-object v2, v12

    move-object v3, v11

    move-object/from16 v20, v8

    move-wide/from16 v8, v16

    move-object/from16 v16, v10

    move-object v12, v11

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v11}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    if-eqz v15, :cond_b

    move-object/from16 v1, v20

    .line 1826
    invoke-interface {v15, v1}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_5

    :cond_b
    move-object/from16 v1, v20

    :cond_c
    if-eqz p2, :cond_d

    .line 1829
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1831
    :cond_d
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    move-object/from16 v16, v10

    :goto_5
    move-object/from16 v10, v16

    move-object/from16 v12, p0

    goto :goto_4

    :cond_f
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 2749
    instance-of v0, p1, Ljcifs/smb/SmbFile;

    if-eqz v0, :cond_1

    .line 2750
    check-cast p1, Ljcifs/smb/SmbFile;

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2759
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2761
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2762
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2764
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2766
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2768
    :catch_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public exists()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1396
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1397
    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    return v0

    :cond_0
    const/16 v0, 0x11

    .line 1400
    iput v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    const-wide/16 v0, 0x0

    .line 1401
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 1402
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    const/4 v0, 0x0

    .line 1403
    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    .line 1406
    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 1407
    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1408
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1409
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    goto :goto_1

    .line 1411
    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    goto :goto_1

    .line 1413
    :cond_3
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v2, "IPC$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1417
    :cond_4
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x101

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    .line 1419
    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 1420
    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->createTime:J

    .line 1421
    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->lastModified:J

    goto :goto_1

    .line 1415
    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1427
    :goto_1
    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1431
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1438
    throw v0

    .line 1442
    :catch_1
    :goto_2
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 1444
    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x3ffffff1 -> :sswitch_0
        -0x3fffffcd -> :sswitch_0
        -0x3fffffcc -> :sswitch_0
        -0x3fffffc6 -> :sswitch_0
    .end sparse-switch
.end method

.method getAddress()Ljcifs/UniAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 821
    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    if-nez v0, :cond_0

    .line 822
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0

    .line 823
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    iget v1, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributes()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2628
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2631
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2632
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit16 v0, v0, 0x7fff

    return v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 2

    .line 1226
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1227
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smb://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "smb://"

    return-object v0
.end method

.method public getContentLength()I
    .locals 4

    .line 2806
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()J
    .locals 2

    .line 2819
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v0
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDfsPath()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1536
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 1537
    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-nez v1, :cond_0

    return-object v0

    .line 1540
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smb:/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    .line 1541
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1542
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDiskFreeSpace()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2472
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    :goto_0
    const/16 v0, 0x3ef

    .line 2475
    :try_start_0
    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    move-result-wide v2
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception v0

    .line 2477
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    const v3, -0x3fffffff    # -2.0000002f

    if-eq v2, v3, :cond_2

    const v3, -0x3ffffffd    # -2.0000007f

    if-eq v2, v3, :cond_2

    .line 2484
    throw v0

    .line 2482
    :cond_2
    invoke-direct {p0, v1}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getFirstAddress()Ljcifs/UniAddress;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 826
    iput v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    .line 828
    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 829
    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 830
    iget-object v3, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v5, "server"

    .line 833
    invoke-static {v3, v5}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 834
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 835
    new-array v1, v4, [Ljcifs/UniAddress;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 836
    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    invoke-static {v5}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v2

    aput-object v2, v1, v0

    .line 837
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v5, "address"

    .line 839
    invoke-static {v3, v5}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 840
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 841
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 842
    new-array v3, v4, [Ljcifs/UniAddress;

    iput-object v3, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 843
    iget-object v3, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    new-instance v4, Ljcifs/UniAddress;

    invoke-static {v1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v4, v1}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v0

    .line 844
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0

    .line 848
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :try_start_0
    const-string v1, "\u0001\u0002__MSBROWSE__\u0002"

    const/4 v2, 0x0

    .line 850
    invoke-static {v1, v4, v2}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v1

    .line 852
    new-array v2, v4, [Ljcifs/UniAddress;

    iput-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 853
    iget-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    invoke-virtual {v1}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v1

    aput-object v1, v2, v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 855
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    .line 856
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 857
    throw v0

    .line 859
    :cond_2
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    invoke-static {v0, v4}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_1

    .line 861
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 864
    :cond_4
    invoke-static {v1, v0}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_1

    .line 862
    :cond_5
    :goto_0
    invoke-static {v1, v4}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    .line 867
    :goto_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2844
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 2832
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v0
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 1068
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x2f

    if-le v0, v1, :cond_1

    .line 1070
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 1071
    :goto_0
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1075
    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1077
    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "smb://"

    return-object v0
.end method

.method getNextAddress()Ljcifs/UniAddress;
    .locals 3

    .line 871
    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 872
    iget-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    iget v1, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2853
    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 5

    .line 1095
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1098
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "smb://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1102
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1103
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 1104
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1106
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1109
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 1112
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    add-int/2addr v1, v3

    .line 1116
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "smb://"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1131
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    .line 1049
    iget-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    return-object v0
.end method

.method public getSecurity()[Ljcifs/smb/ACE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2975
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->getSecurity(Z)[Ljcifs/smb/ACE;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity(Z)[Ljcifs/smb/ACE;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2892
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x20000

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    .line 2898
    new-instance v1, Ljcifs/smb/NtTransQuerySecurityDesc;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Ljcifs/smb/NtTransQuerySecurityDesc;-><init>(II)V

    .line 2899
    new-instance v2, Ljcifs/smb/NtTransQuerySecurityDescResponse;

    invoke-direct {v2}, Ljcifs/smb/NtTransQuerySecurityDescResponse;-><init>()V

    const-wide/16 v3, 0x0

    .line 2902
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2904
    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 2907
    iget-object v0, v2, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    iget-object v0, v0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    if-eqz v0, :cond_0

    .line 2909
    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 2904
    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    throw p1
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    .line 1264
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v0
.end method

.method getServerWithDfs()Ljava/lang/String;
    .locals 1

    .line 1248
    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    return-object v0

    .line 1251
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShare()Ljava/lang/String;
    .locals 1

    .line 1244
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    return-object v0
.end method

.method public getShareSecurity(Z)[Ljcifs/smb/ACE;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2931
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    const/4 v0, 0x0

    .line 2936
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2937
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v0

    .line 2939
    new-instance v1, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v2, v2, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ncacn_np:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[\\PIPE\\srvsvc]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v0

    const/4 v2, 0x1

    .line 2943
    :try_start_0
    invoke-virtual {v0, v1}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 2944
    iget v3, v1, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->retval:I

    if-eqz v3, :cond_0

    .line 2945
    new-instance p1, Ljcifs/smb/SmbException;

    iget v1, v1, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->retval:I

    invoke-direct {p1, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p1

    .line 2946
    :cond_0
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->getSecurity()[Ljcifs/smb/ACE;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2948
    invoke-direct {p0, v1, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2951
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2953
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v2, :cond_2

    .line 2954
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    :goto_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 2951
    :try_start_2
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2953
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v2, :cond_3

    .line 2954
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 2955
    :cond_3
    :goto_1
    throw p1
.end method

.method public getType()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1277
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    if-nez v0, :cond_9

    .line 1278
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1279
    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    goto/16 :goto_1

    .line 1280
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1282
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1283
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v1, "IPC$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    .line 1284
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto/16 :goto_1

    .line 1285
    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v1, "LPT1:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    .line 1286
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_1

    .line 1287
    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x40

    .line 1288
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    .line 1290
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_1

    .line 1292
    :cond_4
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 1297
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljcifs/netbios/NbtAddress;

    if-eqz v2, :cond_7

    .line 1302
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v0

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_6

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_7

    .line 1304
    :cond_6
    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    .line 1305
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    return v0

    :cond_7
    const/4 v0, 0x4

    .line 1308
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1299
    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1293
    :cond_8
    :goto_0
    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    .line 1311
    :cond_9
    :goto_1
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    return v0
.end method

.method public getUncPath()Ljava/lang/String;
    .locals 4

    .line 1210
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1211
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x5c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUncPath0()Ljava/lang/String;
    .locals 12

    .line 1135
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1136
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1137
    array-length v1, v0

    new-array v1, v1, [C

    .line 1138
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x2f

    const/4 v9, 0x1

    if-ge v4, v2, :cond_8

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 1154
    :pswitch_0
    aget-char v7, v0, v4

    if-ne v7, v8, :cond_0

    goto :goto_2

    .line 1156
    :cond_0
    aget-char v7, v0, v4

    const/16 v10, 0x2e

    if-ne v7, v10, :cond_2

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_1

    aget-char v11, v0, v7

    if-ne v11, v8, :cond_2

    :cond_1
    :goto_1
    move v4, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_5

    .line 1160
    aget-char v11, v0, v4

    if-ne v11, v10, :cond_5

    aget-char v7, v0, v7

    if-ne v7, v10, :cond_5

    add-int/lit8 v7, v4, 0x2

    if-ge v7, v2, :cond_3

    aget-char v10, v0, v7

    if-ne v10, v8, :cond_5

    :cond_3
    if-ne v6, v9, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, -0x1

    if-le v6, v9, :cond_1

    add-int/lit8 v4, v6, -0x1

    .line 1168
    aget-char v4, v1, v4

    if-ne v4, v8, :cond_4

    goto :goto_1

    :cond_5
    const/4 v5, 0x2

    .line 1173
    :pswitch_1
    aget-char v7, v0, v4

    if-ne v7, v8, :cond_6

    const/4 v5, 0x1

    :cond_6
    add-int/lit8 v7, v6, 0x1

    .line 1176
    aget-char v8, v0, v4

    aput-char v8, v1, v6

    move v6, v7

    goto :goto_2

    .line 1147
    :pswitch_2
    aget-char v5, v0, v4

    if-eq v5, v8, :cond_7

    return-object v7

    :cond_7
    add-int/lit8 v5, v6, 0x1

    .line 1150
    aget-char v7, v0, v4

    aput-char v7, v1, v6

    move v6, v5

    const/4 v5, 0x1

    :goto_2
    add-int/2addr v4, v9

    goto :goto_0

    .line 1181
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    if-le v6, v9, :cond_c

    add-int/lit8 v6, v6, -0x1

    .line 1185
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_9

    .line 1187
    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v0, "\\"

    .line 1188
    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_4

    :cond_9
    if-ne v0, v6, :cond_a

    .line 1190
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v0, "\\"

    .line 1191
    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_4

    .line 1193
    :cond_a
    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    .line 1194
    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    aget-char v1, v1, v6

    if-ne v1, v8, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v6, v6, 0x1

    :goto_3
    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 1195
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/16 v1, 0x5c

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_4

    .line 1198
    :cond_c
    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v0, "\\"

    .line 1199
    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 1202
    :cond_d
    :goto_4
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method hasNextAddress()Z
    .locals 2

    .line 876
    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 2699
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->hashCode()I

    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2701
    :catch_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2703
    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 2704
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method isConnected()Z
    .locals 2

    .line 967
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v0, v0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectory()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1487
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 1490
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1491
    :cond_1
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFile()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1501
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 1504
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1505
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isHidden()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1517
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1519
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1520
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    .line 1525
    :cond_2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1526
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method isOpen()Z
    .locals 2

    .line 1011
    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ljcifs/smb/SmbFile;->tree_num:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v1, v1, Ljcifs/smb/SmbTree;->tree_num:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWorkgroup0()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1314
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    .line 1319
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1320
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljcifs/netbios/NbtAddress;

    if-eqz v3, :cond_2

    .line 1322
    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v0

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_2

    .line 1324
    :cond_1
    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    return v1

    :cond_2
    const/4 v0, 0x4

    .line 1328
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    :cond_3
    const/4 v0, 0x0

    return v0

    .line 1315
    :cond_4
    :goto_0
    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    return v1
.end method

.method public lastModified()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1578
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1579
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 1580
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2439
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2440
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    return-wide v0

    .line 2443
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2447
    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v0, v2}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    .line 2448
    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v1, v2}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 2450
    iget-object v0, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v0}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_0

    .line 2451
    :cond_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    .line 2452
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x102

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    .line 2454
    invoke-interface {v0}, Ljcifs/smb/Info;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 2456
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    .line 2458
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    .line 2459
    iget-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    const-string v0, "*"

    const/4 v1, 0x0

    const/16 v2, 0x16

    .line 1606
    invoke-virtual {p0, v0, v2, v1, v1}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1708
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1709
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 1710
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public list(Ljcifs/smb/SmbFilenameFilter;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    .line 1619
    invoke-virtual {p0, v0, v1, p1, v2}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public listFiles()[Ljcifs/smb/SmbFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    const-string v0, "*"

    const/4 v1, 0x0

    const/16 v2, 0x16

    .line 1648
    invoke-virtual {p0, v0, v2, v1, v1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;)[Ljcifs/smb/SmbFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x16

    .line 1681
    invoke-virtual {p0, p1, v1, v0, v0}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1714
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1715
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    .line 1716
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljcifs/smb/SmbFile;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljcifs/smb/SmbFile;

    return-object p1
.end method

.method public listFiles(Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    .line 1704
    invoke-virtual {p0, v0, v1, v2, p1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public listFiles(Ljcifs/smb/SmbFilenameFilter;)[Ljcifs/smb/SmbFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v2, 0x0

    .line 1693
    invoke-virtual {p0, v0, v1, p1, v2}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public mkdir()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2516
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    .line 2518
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2519
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2526
    :cond_0
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 2527
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkdir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 2529
    :cond_1
    new-instance v1, Ljcifs/smb/SmbComCreateDirectory;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbComCreateDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    const-wide/16 v0, 0x0

    .line 2531
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void
.end method

.method public mkdirs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2548
    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2552
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2553
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->mkdirs()V

    .line 2555
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->mkdir()V

    return-void

    :catch_0
    return-void
.end method

.method open(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1003
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1006
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbFile;->fid:I

    const/4 p1, 0x1

    .line 1007
    iput-boolean p1, p0, Ljcifs/smb/SmbFile;->opened:Z

    .line 1008
    iget-object p1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget p1, p1, Ljcifs/smb/SmbTree;->tree_num:I

    iput p1, p0, Ljcifs/smb/SmbFile;->tree_num:I

    return-void
.end method

.method open0(IIII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 972
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 974
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 975
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 981
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    new-instance v0, Ljcifs/smb/SmbComNTCreateAndXResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;-><init>()V

    .line 983
    new-instance v9, Ljcifs/smb/SmbComNTCreateAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v5, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    const/4 v8, 0x0

    move-object v1, v9

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Ljcifs/smb/SmbComNTCreateAndX;-><init>(Ljava/lang/String;IIIIILjcifs/smb/ServerMessageBlock;)V

    .line 984
    instance-of p1, p0, Ljcifs/smb/SmbNamedPipe;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 985
    iget p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    or-int/lit8 p1, p1, 0x16

    iput p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    .line 986
    iget p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 987
    iput-boolean p2, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    .line 989
    :cond_1
    invoke-virtual {p0, v9, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 990
    iget p1, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    .line 991
    iget p3, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    and-int/lit16 p3, p3, 0x7fff

    iput p3, p0, Ljcifs/smb/SmbFile;->attributes:I

    .line 992
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sget-wide v0, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr p3, v0

    iput-wide p3, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 993
    iput-boolean p2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    goto :goto_0

    .line 995
    :cond_2
    new-instance p3, Ljcifs/smb/SmbComOpenAndXResponse;

    invoke-direct {p3}, Ljcifs/smb/SmbComOpenAndXResponse;-><init>()V

    .line 996
    new-instance p4, Ljcifs/smb/SmbComOpenAndX;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p4, v0, p2, p1, v1}, Ljcifs/smb/SmbComOpenAndX;-><init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p0, p4, p3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 997
    iget p1, p3, Ljcifs/smb/SmbComOpenAndXResponse;->fid:I

    :goto_0
    return p1
.end method

.method protected pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/16 v0, 0x2f

    .line 2712
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2713
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 2714
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, v3

    .line 2715
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    const/16 v1, 0x2e

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 2718
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    return v7

    :cond_0
    if-le v0, v7, :cond_1

    add-int/lit8 v2, v5, 0x1

    .line 2720
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_1

    return v7

    :cond_1
    if-ne v6, v0, :cond_2

    const/4 v2, 0x1

    move-object v1, p1

    move-object v4, p2

    .line 2723
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    return v7
.end method

.method queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 1335
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 1337
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1338
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 1355
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse;

    invoke-direct {v0, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;-><init>(I)V

    .line 1363
    new-instance v1, Ljcifs/smb/Trans2QueryPathInformation;

    invoke-direct {v1, p1, p2}, Ljcifs/smb/Trans2QueryPathInformation;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 1365
    iget-object p1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    return-object p1

    .line 1372
    :cond_1
    new-instance p2, Ljcifs/smb/SmbComQueryInformationResponse;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    invoke-direct {p2, v0, v1}, Ljcifs/smb/SmbComQueryInformationResponse;-><init>(J)V

    .line 1375
    new-instance v0, Ljcifs/smb/SmbComQueryInformation;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComQueryInformation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-object p2
.end method

.method public renameTo(Ljcifs/smb/SmbFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2055
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2059
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2060
    invoke-virtual {p1, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 2062
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTree;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2063
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2066
    :cond_1
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 2067
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v0, 0x0

    .line 2069
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2070
    iput-wide v0, p1, Ljcifs/smb/SmbFile;->attrExpiration:J

    .line 2076
    new-instance v0, Ljcifs/smb/SmbComRename;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object p1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljcifs/smb/SmbComRename;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void

    .line 2056
    :cond_3
    :goto_0
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method resolveDfs(Ljcifs/smb/ServerMessageBlock;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 666
    instance-of v0, p1, Ljcifs/smb/SmbComClose;

    if-eqz v0, :cond_0

    return-void

    .line 669
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 671
    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v2, v2, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v2, v2, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v3, v3, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v4, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object v5, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v2, v3, v4, v5}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 680
    iget-byte v0, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v4, 0x25

    if-eq v0, v4, :cond_1

    const/16 v4, 0x32

    if-eq v0, v4, :cond_1

    const-string v0, "A:"

    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 683
    :cond_1
    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTransaction;

    iget-byte v0, v0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0x10

    if-eq v0, v4, :cond_2

    const-string v0, "A:"

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_1
    move-object v0, v1

    .line 700
    :cond_3
    :try_start_0
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_4

    .line 701
    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DFS redirect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 703
    :cond_4
    iget-object v5, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-static {v5}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v5

    .line 704
    iget-object v6, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-static {v5, v6}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v5

    .line 710
    invoke-virtual {v5}, Ljcifs/smb/SmbTransport;->connect()V

    .line 711
    iget-object v6, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v5, v6}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v5

    iget-object v6, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v5

    iput-object v5, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-eq v0, v1, :cond_6

    .line 713
    iget-object v5, v0, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 714
    iget-object v5, v0, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    iget-object v6, v0, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 721
    instance-of v6, v5, Ljcifs/smb/SmbException;

    if-eqz v6, :cond_5

    .line 722
    check-cast v5, Ljcifs/smb/SmbException;

    goto :goto_2

    .line 724
    :cond_5
    new-instance v6, Ljcifs/smb/SmbException;

    iget-object v7, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 728
    :goto_2
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    if-ne v0, v1, :cond_3

    move-object v3, v5

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 732
    throw v3

    .line 734
    :cond_7
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x3

    if-lt v1, v3, :cond_8

    .line 735
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 737
    :cond_8
    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 738
    iget v1, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    if-gez v1, :cond_9

    .line 739
    iput v2, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    goto :goto_4

    .line 740
    :cond_9
    iget v1, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_a

    .line 741
    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 743
    :cond_a
    :goto_4
    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v2, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 744
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "\\"

    .line 746
    :cond_b
    iget-object v2, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    :cond_c
    iput-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 750
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "\\"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    if-eqz p1, :cond_10

    .line 757
    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 758
    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    goto :goto_5

    .line 760
    :cond_e
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v1, v1, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v1, :cond_f

    instance-of v1, p1, Ljcifs/smb/NtTransQuerySecurityDesc;

    if-nez v1, :cond_f

    if-nez v0, :cond_f

    instance-of v0, p1, Ljcifs/smb/SmbComFindClose2;

    if-nez v0, :cond_f

    .line 764
    new-instance p1, Ljcifs/smb/SmbException;

    const v0, -0x3ffffddb    # -2.000131f

    invoke-direct {p1, v0, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw p1

    :cond_f
    if-eqz p1, :cond_10

    .line 767
    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    :cond_10
    :goto_5
    return-void
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 773
    :goto_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 775
    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, p1, p2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/DfsReferral; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 778
    iget-boolean v1, v0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    if-eqz v1, :cond_0

    .line 779
    throw v0

    .line 781
    :cond_0
    invoke-virtual {p1}, Ljcifs/smb/ServerMessageBlock;->reset()V

    goto :goto_0
.end method

.method public setAttributes(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2643
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2644
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    and-int/lit16 v2, p1, 0x30a7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    .line 2646
    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void
.end method

.method public setCreateTime(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2595
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2596
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 2599
    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void
.end method

.method public setLastModified(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2611
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2612
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    .line 2615
    invoke-virtual/range {v0 .. v5}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void
.end method

.method setPathInformation(IJJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    move-object v0, p0

    .line 2573
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 2574
    iget v1, v0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x40

    :goto_0
    const/16 v4, 0x100

    .line 2576
    invoke-virtual {v0, v2, v4, v1, v3}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v2

    .line 2578
    new-instance v3, Ljcifs/smb/Trans2SetFileInformation;

    or-int v7, p1, v1

    move-object v5, v3

    move v6, v2

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    new-instance v1, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v1}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    const-wide/16 v3, 0x0

    .line 2580
    invoke-virtual {v0, v2, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    .line 2582
    iput-wide v3, v0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void
.end method

.method public setReadOnly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2656
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    return-void
.end method

.method public setReadWrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 2666
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2794
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 2680
    iget-object v0, p0, Ljcifs/smb/SmbFile;->url:Ljava/net/URL;

    return-object v0
.end method
