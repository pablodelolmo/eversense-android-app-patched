.class public final Lokhttp3/mockwebserver/RecordedRequest;
.super Ljava/lang/Object;
.source "RecordedRequest.java"


# instance fields
.field private final body:Lokio/Buffer;

.field private final bodySize:J

.field private final chunkSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Lokhttp3/Headers;

.field private final method:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final requestLine:Ljava/lang/String;

.field private final requestUrl:Lokhttp3/HttpUrl;

.field private final sequenceNumber:I

.field private final tlsVersion:Lokhttp3/TlsVersion;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Headers;Ljava/util/List;JLokio/Buffer;ILjava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Headers;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J",
            "Lokio/Buffer;",
            "I",
            "Ljava/net/Socket;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lokhttp3/mockwebserver/RecordedRequest;->headers:Lokhttp3/Headers;

    .line 44
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->chunkSizes:Ljava/util/List;

    .line 45
    iput-wide p4, p0, Lokhttp3/mockwebserver/RecordedRequest;->bodySize:J

    .line 46
    iput-object p6, p0, Lokhttp3/mockwebserver/RecordedRequest;->body:Lokio/Buffer;

    .line 47
    iput p7, p0, Lokhttp3/mockwebserver/RecordedRequest;->sequenceNumber:I

    .line 48
    instance-of p2, p8, Ljavax/net/ssl/SSLSocket;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 49
    move-object p4, p8

    check-cast p4, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p4

    invoke-interface {p4}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p3

    .line 50
    :goto_0
    iput-object p4, p0, Lokhttp3/mockwebserver/RecordedRequest;->tlsVersion:Lokhttp3/TlsVersion;

    if-eqz p1, :cond_2

    const/16 p3, 0x20

    .line 53
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    add-int/lit8 p5, p4, 0x1

    .line 54
    invoke-virtual {p1, p3, p5}, Ljava/lang/String;->indexOf(II)I

    move-result p3

    const/4 p6, 0x0

    .line 55
    invoke-virtual {p1, p6, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lokhttp3/mockwebserver/RecordedRequest;->method:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, p5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p1, "https"

    goto :goto_1

    :cond_1
    const-string p1, "http"

    .line 59
    :goto_1
    invoke-virtual {p8}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-virtual {p8}, Ljava/net/Socket;->getLocalPort()I

    move-result p3

    const-string p4, "%s://%s:%s%s"

    const/4 p5, 0x4

    .line 61
    new-array p5, p5, [Ljava/lang/Object;

    aput-object p1, p5, p6

    const/4 p1, 0x1

    aput-object p2, p5, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, p1

    const/4 p1, 0x3

    iget-object p2, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    aput-object p2, p5, p1

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestUrl:Lokhttp3/HttpUrl;

    goto :goto_2

    .line 63
    :cond_2
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestUrl:Lokhttp3/HttpUrl;

    .line 64
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->method:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public getBody()Lokio/Buffer;
    .locals 1

    .line 113
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->body:Lokio/Buffer;

    return-object v0
.end method

.method public getBodySize()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->bodySize:J

    return-wide v0
.end method

.method public getChunkSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->chunkSizes:Ljava/util/List;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 87
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestLine()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Lokhttp3/HttpUrl;
    .locals 1

    .line 70
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestUrl:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 126
    iget v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->sequenceNumber:I

    return v0
.end method

.method public getTlsVersion()Lokhttp3/TlsVersion;
    .locals 1

    .line 131
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->tlsVersion:Lokhttp3/TlsVersion;

    return-object v0
.end method

.method public getUtf8Body()Ljava/lang/String;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lokhttp3/mockwebserver/RecordedRequest;->getBody()Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lokhttp3/mockwebserver/RecordedRequest;->requestLine:Ljava/lang/String;

    return-object v0
.end method
