.class Lcom/senseonics/api/RetryObservable$1;
.super Ljava/lang/Object;
.source "RetryObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/api/RetryObservable;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Throwable;",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/api/RetryObservable;


# direct methods
.method constructor <init>(Lcom/senseonics/api/RetryObservable;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/senseonics/api/RetryObservable$1;->this$0:Lcom/senseonics/api/RetryObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/api/RetryObservable$1;->call(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/lang/Throwable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation

    .line 26
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_1

    .line 27
    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    const/16 v1, 0x193

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/senseonics/api/RetryObservable$1;->this$0:Lcom/senseonics/api/RetryObservable;

    invoke-static {v0}, Lcom/senseonics/api/RetryObservable;->access$004(Lcom/senseonics/api/RetryObservable;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/senseonics/api/RetryObservable$1;->this$0:Lcom/senseonics/api/RetryObservable;

    invoke-static {p1}, Lcom/senseonics/api/RetryObservable;->access$100(Lcom/senseonics/api/RetryObservable;)Lcom/senseonics/util/UserInfoSecureStorer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/UserInfoSecureStorer;->clearAccessTokenTime()V

    const-wide/16 v0, 0x0

    .line 34
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lrx/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 38
    :cond_1
    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
