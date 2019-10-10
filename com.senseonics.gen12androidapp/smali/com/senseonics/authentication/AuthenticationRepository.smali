.class public Lcom/senseonics/authentication/AuthenticationRepository;
.super Ljava/lang/Object;
.source "AuthenticationRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/authentication/AuthenticationRepository$Header;
    }
.end annotation


# static fields
.field static final TOKEN_SHOULD_REFRESH_HOUR_LIMIT:I = 0x12


# instance fields
.field private loginService:Lcom/senseonics/api/UserLoginService;

.field private model:Lcom/senseonics/account/UserAccountModel;

.field private timeProvider:Lcom/senseonics/util/TimeProvider;


# direct methods
.method public constructor <init>(Lcom/senseonics/api/UserLoginService;Lcom/senseonics/util/TimeProvider;Lcom/senseonics/account/UserAccountModel;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/senseonics/authentication/AuthenticationRepository;->loginService:Lcom/senseonics/api/UserLoginService;

    .line 27
    iput-object p2, p0, Lcom/senseonics/authentication/AuthenticationRepository;->timeProvider:Lcom/senseonics/util/TimeProvider;

    .line 28
    iput-object p3, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    return-void
.end method

.method private declared-synchronized getAccessToken()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/senseonics/authentication/AuthenticationRepository;->timeProvider:Lcom/senseonics/util/TimeProvider;

    .line 37
    invoke-virtual {v1}, Lcom/senseonics/util/TimeProvider;->getCurrentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v3}, Lcom/senseonics/account/UserAccountModel;->getAccountAccessTokenTimeFromPreference()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    const-wide/16 v2, 0x12

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->isAccountLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->getAccountAccessTokenFromPreference()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 40
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/senseonics/authentication/AuthenticationRepository;->getAccessTokenUsingCredential()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0

    throw v0
.end method

.method private getAccessTokenUsingCredential()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->loginService:Lcom/senseonics/api/UserLoginService;

    const-string v1, "password"

    const-string v2, "eversenseMMAAndroid"

    const-string v3, "6ksPx#]~wQ3U"

    iget-object v4, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    .line 50
    invoke-virtual {v4}, Lcom/senseonics/account/UserAccountModel;->getUsername()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    .line 51
    invoke-virtual {v5}, Lcom/senseonics/account/UserAccountModel;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-interface/range {v0 .. v5}, Lcom/senseonics/api/UserLoginService;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lcom/senseonics/authentication/AuthenticationRepository;->getTokenFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTokenFromResponse(Lretrofit2/Response;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/senseonics/authentication/SenseonicsTokenDto;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit2/HttpException;
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/authentication/SenseonicsTokenDto;

    .line 58
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0, p1}, Lcom/senseonics/account/UserAccountModel;->saveUserInfo(Lcom/senseonics/authentication/SenseonicsTokenDto;)V

    .line 59
    invoke-virtual {p1}, Lcom/senseonics/authentication/SenseonicsTokenDto;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    new-instance v0, Lretrofit2/HttpException;

    invoke-direct {v0, p1}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw v0
.end method


# virtual methods
.method getAuthHeader()Lcom/senseonics/authentication/AuthenticationRepository$Header;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/senseonics/authentication/AuthenticationRepository$Header;

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/senseonics/authentication/AuthenticationRepository;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/senseonics/authentication/AuthenticationRepository$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
