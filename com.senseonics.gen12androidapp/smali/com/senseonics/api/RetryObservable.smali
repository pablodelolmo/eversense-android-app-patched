.class public Lcom/senseonics/api/RetryObservable;
.super Ljava/lang/Object;
.source "RetryObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Observable<",
        "+",
        "Ljava/lang/Throwable;",
        ">;",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final MAX_RETRY:I

.field private final RETRY_DELAY_SECONDS:I

.field private retryCount:I

.field private userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/UserInfoSecureStorer;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/senseonics/api/RetryObservable;->MAX_RETRY:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/senseonics/api/RetryObservable;->RETRY_DELAY_SECONDS:I

    .line 18
    iput-object p1, p0, Lcom/senseonics/api/RetryObservable;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    return-void
.end method

.method static synthetic access$004(Lcom/senseonics/api/RetryObservable;)I
    .locals 1

    .line 11
    iget v0, p0, Lcom/senseonics/api/RetryObservable;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/senseonics/api/RetryObservable;->retryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/senseonics/api/RetryObservable;)Lcom/senseonics/util/UserInfoSecureStorer;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/senseonics/api/RetryObservable;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lcom/senseonics/api/RetryObservable;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/senseonics/api/RetryObservable$1;

    invoke-direct {v0, p0}, Lcom/senseonics/api/RetryObservable$1;-><init>(Lcom/senseonics/api/RetryObservable;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
