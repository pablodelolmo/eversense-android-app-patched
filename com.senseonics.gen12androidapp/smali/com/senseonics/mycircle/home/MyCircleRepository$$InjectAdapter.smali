.class public final Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "MyCircleRepository$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/mycircle/home/MyCircleRepository;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/mycircle/home/MyCircleRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private mainThreadScheduler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private service:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/api/MyCircleService;",
            ">;"
        }
    .end annotation
.end field

.field private userInfoSecureStorer:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/UserInfoSecureStorer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.mycircle.home.MyCircleRepository"

    const-string v1, "members/com.senseonics.mycircle.home.MyCircleRepository"

    .line 26
    const-class v2, Lcom/senseonics/mycircle/home/MyCircleRepository;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.gen12androidapp.rx.MainThreadScheduler"

    .line 36
    const-class v1, Lcom/senseonics/mycircle/home/MyCircleRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;->mainThreadScheduler:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.api.MyCircleService"

    .line 37
    const-class v1, Lcom/senseonics/mycircle/home/MyCircleRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;->service:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.UserInfoSecureStorer"

    .line 38
    const-class v1, Lcom/senseonics/mycircle/home/MyCircleRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;->userInfoSecureStorer:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/mycircle/home/MyCircleRepository;
    .locals 4

    .line 58
    new-instance v0, Lcom/senseonics/mycircle/home/MyCircleRepository;

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;->mainThreadScheduler:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;

    iget-object v2, p0, Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;->service:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/api/MyCircleService;

    iget-object v3, p0, Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;->userInfoSecureStorer:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/mycircle/home/MyCircleRepository;-><init>(Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;Lcom/senseonics/api/MyCircleService;Lcom/senseonics/util/UserInfoSecureStorer;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;->get()Lcom/senseonics/mycircle/home/MyCircleRepository;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 47
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;->mainThreadScheduler:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;->service:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleRepository$$InjectAdapter;->userInfoSecureStorer:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
