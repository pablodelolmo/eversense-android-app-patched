.class public final Lokhttp3/mockwebserver/MockResponse;
.super Ljava/lang/Object;
.source "MockResponse.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final CHUNKED_BODY_HEADER:Ljava/lang/String; = "Transfer-encoding: chunked"


# instance fields
.field private body:Lokio/Buffer;

.field private bodyDelayAmount:J

.field private bodyDelayUnit:Ljava/util/concurrent/TimeUnit;

.field private headers:Lokhttp3/Headers$Builder;

.field private http2ErrorCode:I

.field private promises:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/mockwebserver/PushPromise;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Lokhttp3/internal/http2/Settings;

.field private socketPolicy:Lokhttp3/mockwebserver/SocketPolicy;

.field private status:Ljava/lang/String;

.field private throttleBytesPerPeriod:J

.field private throttlePeriodAmount:J

.field private throttlePeriodUnit:Ljava/util/concurrent/TimeUnit;

.field private webSocketListener:Lokhttp3/WebSocketListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    const-wide v0, 0x7fffffffffffffffL

    .line 36
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->throttleBytesPerPeriod:J

    const-wide/16 v0, 0x1

    .line 37
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodAmount:J

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodUnit:Ljava/util/concurrent/TimeUnit;

    .line 40
    sget-object v0, Lokhttp3/mockwebserver/SocketPolicy;->KEEP_OPEN:Lokhttp3/mockwebserver/SocketPolicy;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->socketPolicy:Lokhttp3/mockwebserver/SocketPolicy;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lokhttp3/mockwebserver/MockResponse;->http2ErrorCode:I

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayAmount:J

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayUnit:Ljava/util/concurrent/TimeUnit;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->promises:Ljava/util/List;

    const/16 v0, 0xc8

    .line 52
    invoke-virtual {p0, v0}, Lokhttp3/mockwebserver/MockResponse;->setResponseCode(I)Lokhttp3/mockwebserver/MockResponse;

    const-string v0, "Content-Length"

    const/4 v1, 0x0

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 112
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 121
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public addHeaderLenient(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    .line 131
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public clearHeaders()Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 103
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lokhttp3/mockwebserver/MockResponse;->clone()Lokhttp3/mockwebserver/MockResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokhttp3/mockwebserver/MockResponse;
    .locals 3

    .line 58
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/mockwebserver/MockResponse;

    .line 59
    iget-object v1, p0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->promises:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lokhttp3/mockwebserver/MockResponse;->promises:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 63
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getBody()Lokio/Buffer;
    .locals 1

    .line 157
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->body:Lokio/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->body:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBodyDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 253
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayAmount:J

    iget-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaders()Lokhttp3/Headers;
    .locals 1

    .line 95
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public getHttp2ErrorCode()I
    .locals 1

    .line 210
    iget v0, p0, Lokhttp3/mockwebserver/MockResponse;->http2ErrorCode:I

    return v0
.end method

.method public getPushPromises()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/mockwebserver/PushPromise;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->promises:Ljava/util/List;

    return-object v0
.end method

.method public getSettings()Lokhttp3/internal/http2/Settings;
    .locals 1

    .line 280
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->settings:Lokhttp3/internal/http2/Settings;

    return-object v0
.end method

.method public getSocketPolicy()Lokhttp3/mockwebserver/SocketPolicy;
    .locals 1

    .line 201
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->socketPolicy:Lokhttp3/mockwebserver/SocketPolicy;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getThrottleBytesPerPeriod()J
    .locals 2

    .line 235
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->throttleBytesPerPeriod:J

    return-wide v0
.end method

.method public getThrottlePeriod(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 239
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodAmount:J

    iget-object v2, p0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWebSocketListener()Lokhttp3/WebSocketListener;
    .locals 1

    .line 297
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->webSocketListener:Lokhttp3/WebSocketListener;

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 151
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 168
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/mockwebserver/MockResponse;->setBody(Lokio/Buffer;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lokio/Buffer;)Lokhttp3/mockwebserver/MockResponse;
    .locals 3

    const-string v0, "Content-Length"

    .line 161
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    .line 162
    invoke-virtual {p1}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->body:Lokio/Buffer;

    return-object p0
.end method

.method public setBodyDelay(JLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 247
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayAmount:J

    .line 248
    iput-object p3, p0, Lokhttp3/mockwebserver/MockResponse;->bodyDelayUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public setChunkedBody(Ljava/lang/String;I)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 197
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokhttp3/mockwebserver/MockResponse;->setChunkedBody(Lokio/Buffer;I)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1
.end method

.method public setChunkedBody(Lokio/Buffer;I)Lokhttp3/mockwebserver/MockResponse;
    .locals 5

    const-string v0, "Content-Length"

    .line 175
    invoke-virtual {p0, v0}, Lokhttp3/mockwebserver/MockResponse;->removeHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    .line 176
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    const-string v1, "Transfer-encoding: chunked"

    invoke-virtual {v0, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 178
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 179
    :goto_0
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    int-to-long v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 181
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    const-string v3, "\r\n"

    .line 182
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 183
    invoke-virtual {v0, p1, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    const-string v1, "\r\n"

    .line 184
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_0

    :cond_0
    const-string p1, "0\r\n\r\n"

    .line 186
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 188
    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->body:Lokio/Buffer;

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lokhttp3/mockwebserver/MockResponse;->removeHeader(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    .line 140
    invoke-virtual {p0, p1, p2}, Lokhttp3/mockwebserver/MockResponse;->addHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1
.end method

.method public setHeaders(Lokhttp3/Headers;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 145
    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->headers:Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public setHttp2ErrorCode(I)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 219
    iput p1, p0, Lokhttp3/mockwebserver/MockResponse;->http2ErrorCode:I

    return-object p0
.end method

.method public setResponseCode(I)Lokhttp3/mockwebserver/MockResponse;
    .locals 3

    const-string v0, "Mock Response"

    const/16 v1, 0xc8

    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    if-ge p1, v1, :cond_0

    const-string v0, "Informational"

    goto :goto_0

    :cond_0
    const/16 v2, 0x12c

    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    const-string v0, "OK"

    goto :goto_0

    :cond_1
    const/16 v1, 0x190

    if-lt p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    const-string v0, "Redirection"

    goto :goto_0

    :cond_2
    const/16 v2, 0x1f4

    if-lt p1, v1, :cond_3

    if-ge p1, v2, :cond_3

    const-string v0, "Client Error"

    goto :goto_0

    :cond_3
    if-lt p1, v2, :cond_4

    const/16 v1, 0x258

    if-ge p1, v1, :cond_4

    const-string v0, "Server Error"

    .line 85
    :cond_4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/mockwebserver/MockResponse;->setStatus(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    move-result-object p1

    return-object p1
.end method

.method public setSocketPolicy(Lokhttp3/mockwebserver/SocketPolicy;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 205
    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->socketPolicy:Lokhttp3/mockwebserver/SocketPolicy;

    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 89
    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    return-object p0
.end method

.method public throttleBody(JJLjava/util/concurrent/TimeUnit;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 228
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockResponse;->throttleBytesPerPeriod:J

    .line 229
    iput-wide p3, p0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodAmount:J

    .line 230
    iput-object p5, p0, Lokhttp3/mockwebserver/MockResponse;->throttlePeriodUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public withPush(Lokhttp3/mockwebserver/PushPromise;)Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 261
    iget-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->promises:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withSettings(Lokhttp3/internal/http2/Settings;)Lokhttp3/mockwebserver/MockResponse;
    .locals 0

    .line 275
    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->settings:Lokhttp3/internal/http2/Settings;

    return-object p0
.end method

.method public withWebSocketUpgrade(Lokhttp3/WebSocketListener;)Lokhttp3/mockwebserver/MockResponse;
    .locals 2

    const-string v0, "HTTP/1.1 101 Switching Protocols"

    .line 288
    invoke-virtual {p0, v0}, Lokhttp3/mockwebserver/MockResponse;->setStatus(Ljava/lang/String;)Lokhttp3/mockwebserver/MockResponse;

    const-string v0, "Connection"

    const-string v1, "Upgrade"

    .line 289
    invoke-virtual {p0, v0, v1}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    const-string v0, "Upgrade"

    const-string v1, "websocket"

    .line 290
    invoke-virtual {p0, v0, v1}, Lokhttp3/mockwebserver/MockResponse;->setHeader(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/mockwebserver/MockResponse;

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lokhttp3/mockwebserver/MockResponse;->body:Lokio/Buffer;

    .line 292
    iput-object p1, p0, Lokhttp3/mockwebserver/MockResponse;->webSocketListener:Lokhttp3/WebSocketListener;

    return-object p0
.end method
