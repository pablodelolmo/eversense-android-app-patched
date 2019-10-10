.class public final Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "UserProfilePresenter$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/account/UserProfilePresenter;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/account/UserProfilePresenter;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/account/UserProfilePresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private errorHandler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/view/CommonErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/account/UserAccountModel;",
            ">;"
        }
    .end annotation
.end field

.field private repository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/account/UserProfileRepository;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BasePresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.account.UserProfilePresenter"

    const-string v1, "members/com.senseonics.account.UserProfilePresenter"

    .line 31
    const-class v2, Lcom/senseonics/account/UserProfilePresenter;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "com.senseonics.account.UserProfileRepository"

    .line 41
    const-class v1, Lcom/senseonics/account/UserProfilePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.account.UserAccountModel"

    .line 42
    const-class v1, Lcom/senseonics/account/UserProfilePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.view.CommonErrorHandler"

    .line 43
    const-class v1, Lcom/senseonics/account/UserProfilePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.gen12androidapp.BasePresenter"

    .line 44
    const-class v3, Lcom/senseonics/account/UserProfilePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/account/UserProfilePresenter;
    .locals 4

    .line 65
    new-instance v0, Lcom/senseonics/account/UserProfilePresenter;

    iget-object v1, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/account/UserProfileRepository;

    iget-object v2, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/account/UserAccountModel;

    iget-object v3, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/view/CommonErrorHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/account/UserProfilePresenter;-><init>(Lcom/senseonics/account/UserProfileRepository;Lcom/senseonics/account/UserAccountModel;Lcom/senseonics/view/CommonErrorHandler;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/account/UserProfilePresenter;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->get()Lcom/senseonics/account/UserProfilePresenter;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
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

    .line 53
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/account/UserProfilePresenter;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/UserProfilePresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/account/UserProfilePresenter;)V

    return-void
.end method
