.class public final Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "UserLoginPresenter$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/authentication/UserLoginPresenter;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/authentication/UserLoginPresenter;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/authentication/UserLoginPresenter;",
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

    const-string v0, "com.senseonics.authentication.UserLoginPresenter"

    const-string v1, "members/com.senseonics.authentication.UserLoginPresenter"

    .line 31
    const-class v2, Lcom/senseonics/authentication/UserLoginPresenter;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "com.senseonics.account.UserProfileRepository"

    .line 41
    const-class v1, Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.view.CommonErrorHandler"

    .line 42
    const-class v1, Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.account.UserAccountModel"

    .line 43
    const-class v1, Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.gen12androidapp.BasePresenter"

    .line 44
    const-class v3, Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/authentication/UserLoginPresenter;
    .locals 4

    .line 65
    new-instance v0, Lcom/senseonics/authentication/UserLoginPresenter;

    iget-object v1, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/account/UserProfileRepository;

    iget-object v2, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/view/CommonErrorHandler;

    iget-object v3, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/account/UserAccountModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/senseonics/authentication/UserLoginPresenter;-><init>(Lcom/senseonics/account/UserProfileRepository;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/account/UserAccountModel;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/authentication/UserLoginPresenter;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->get()Lcom/senseonics/authentication/UserLoginPresenter;

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
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/authentication/UserLoginPresenter;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-virtual {p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/authentication/UserLoginPresenter;)V

    return-void
.end method
