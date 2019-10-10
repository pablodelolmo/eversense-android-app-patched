.class public final Lokhttp3/mockwebserver/PushPromise;
.super Ljava/lang/Object;
.source "PushPromise.java"


# instance fields
.field private final headers:Lokhttp3/Headers;

.field private final method:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final response:Lokhttp3/mockwebserver/MockResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lokhttp3/mockwebserver/PushPromise;->method:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lokhttp3/mockwebserver/PushPromise;->path:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lokhttp3/mockwebserver/PushPromise;->headers:Lokhttp3/Headers;

    .line 31
    iput-object p4, p0, Lokhttp3/mockwebserver/PushPromise;->response:Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method


# virtual methods
.method public headers()Lokhttp3/Headers;
    .locals 1

    .line 43
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->method:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->path:Ljava/lang/String;

    return-object v0
.end method

.method public response()Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 47
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->response:Lokhttp3/mockwebserver/MockResponse;

    return-object v0
.end method
