.class public final Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "MyCircleMemberManager$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/mycircle/home/MyCircleMemberManager;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/mycircle/home/MyCircleMemberManager;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AccountConstants;",
            ">;"
        }
    .end annotation
.end field

.field private messageHandler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/mycircle/model/MyCircleModel;",
            ">;"
        }
    .end annotation
.end field

.field private repository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/mycircle/home/MyCircleRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.mycircle.home.MyCircleMemberManager"

    const-string v1, "members/com.senseonics.mycircle.home.MyCircleMemberManager"

    .line 27
    const-class v2, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.util.AccountConstants"

    .line 37
    const-class v1, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.mycircle.home.MyCircleRepository"

    .line 38
    const-class v1, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->repository:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.mycircle.model.MyCircleModel"

    .line 39
    const-class v1, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->model:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.mycircle.home.RemovedPeerMessageHandler"

    .line 40
    const-class v1, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->messageHandler:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/mycircle/home/MyCircleMemberManager;
    .locals 5

    .line 61
    new-instance v0, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/AccountConstants;

    iget-object v2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/mycircle/home/MyCircleRepository;

    iget-object v3, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/mycircle/model/MyCircleModel;

    iget-object v4, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->messageHandler:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/senseonics/mycircle/home/MyCircleMemberManager;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/mycircle/home/MyCircleRepository;Lcom/senseonics/mycircle/model/MyCircleModel;Lcom/senseonics/mycircle/home/RemovedPeerMessageHandler;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->get()Lcom/senseonics/mycircle/home/MyCircleMemberManager;

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

    .line 49
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleMemberManager$$InjectAdapter;->messageHandler:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
