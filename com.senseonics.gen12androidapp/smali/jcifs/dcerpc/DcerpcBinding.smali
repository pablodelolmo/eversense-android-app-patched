.class public Ljcifs/dcerpc/DcerpcBinding;
.super Ljava/lang/Object;
.source "DcerpcBinding.java"


# static fields
.field private static INTERFACES:Ljava/util/HashMap;


# instance fields
.field endpoint:Ljava/lang/String;

.field major:I

.field minor:I

.field options:Ljava/util/HashMap;

.field proto:Ljava/lang/String;

.field server:Ljava/lang/String;

.field uuid:Ljcifs/dcerpc/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    .line 33
    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "srvsvc"

    invoke-static {}, Ljcifs/dcerpc/msrpc/srvsvc;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "lsarpc"

    invoke-static {}, Ljcifs/dcerpc/msrpc/lsarpc;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "samr"

    invoke-static {}, Ljcifs/dcerpc/msrpc/samr;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "netdfs"

    invoke-static {}, Ljcifs/dcerpc/msrpc/netdfs;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 48
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    .line 53
    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->proto:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    return-void
.end method

.method public static addInterface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "endpoint"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    return-object p1

    .line 81
    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/dcerpc/DcerpcException;
        }
    .end annotation

    const-string v0, "endpoint"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 60
    iget-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    const-string p2, "\\pipe\\"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    sget-object p1, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    iget-object p2, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const/16 p2, 0x3a

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/16 v0, 0x2e

    add-int/lit8 v1, p2, 0x1

    .line 65
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 66
    new-instance v2, Ljcifs/dcerpc/UUID;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljcifs/dcerpc/UUID;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    .line 67
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ljcifs/dcerpc/DcerpcBinding;->major:I

    add-int/lit8 v0, v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/DcerpcBinding;->minor:I

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljcifs/dcerpc/DcerpcException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad endpoint: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 76
    :cond_2
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->proto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 92
    iget-object v3, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
