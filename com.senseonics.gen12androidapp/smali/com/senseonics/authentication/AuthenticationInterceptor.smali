.class public Lcom/senseonics/authentication/AuthenticationInterceptor;
.super Ljava/lang/Object;
.source "AuthenticationInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private repository:Lcom/senseonics/authentication/AuthenticationRepository;


# direct methods
.method public constructor <init>(Lcom/senseonics/authentication/AuthenticationRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/senseonics/authentication/AuthenticationInterceptor;->repository:Lcom/senseonics/authentication/AuthenticationRepository;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/senseonics/authentication/AuthenticationInterceptor;->repository:Lcom/senseonics/authentication/AuthenticationRepository;

    invoke-virtual {v1}, Lcom/senseonics/authentication/AuthenticationRepository;->getAuthHeader()Lcom/senseonics/authentication/AuthenticationRepository$Header;

    move-result-object v1

    .line 28
    iget-object v2, v1, Lcom/senseonics/authentication/AuthenticationRepository$Header;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/senseonics/authentication/AuthenticationRepository$Header;->value:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 30
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
