.class Lcom/senseonics/mycircle/home/MyCircleRepository$1;
.super Ljava/lang/Object;
.source "MyCircleRepository.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/home/MyCircleRepository;->getPeerListObservable(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/util/List<",
        "Lcom/senseonics/mycircle/model/PeerDto;",
        ">;",
        "Lrx/Observable<",
        "Lcom/senseonics/mycircle/model/PeerDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/home/MyCircleRepository;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/home/MyCircleRepository;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleRepository$1;->this$0:Lcom/senseonics/mycircle/home/MyCircleRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/home/MyCircleRepository$1;->call(Ljava/util/List;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/util/List;)Lrx/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/PeerDto;",
            ">;)",
            "Lrx/Observable<",
            "Lcom/senseonics/mycircle/model/PeerDto;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
