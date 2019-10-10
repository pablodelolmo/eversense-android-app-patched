.class public final Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "InvitePeerPresenter$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/mycircle/invite/InvitePeerPresenter;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/mycircle/invite/InvitePeerPresenter;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/mycircle/invite/InvitePeerPresenter;",
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
            "Lcom/senseonics/mycircle/model/MyCircleModel;",
            ">;"
        }
    .end annotation
.end field

.field private repository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/mycircle/invite/InvitePeerRepository;",
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

.field private validator:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/EmailValidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.mycircle.invite.InvitePeerPresenter"

    const-string v1, "members/com.senseonics.mycircle.invite.InvitePeerPresenter"

    .line 32
    const-class v2, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "com.senseonics.mycircle.invite.InvitePeerRepository"

    .line 42
    const-class v1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.EmailValidator"

    .line 43
    const-class v1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->validator:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.view.CommonErrorHandler"

    .line 44
    const-class v1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.mycircle.model.MyCircleModel"

    .line 45
    const-class v1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.gen12androidapp.BasePresenter"

    .line 46
    const-class v3, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/mycircle/invite/InvitePeerPresenter;
    .locals 5

    .line 68
    new-instance v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    iget-object v1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/mycircle/invite/InvitePeerRepository;

    iget-object v2, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->validator:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/EmailValidator;

    iget-object v3, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/view/CommonErrorHandler;

    iget-object v4, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/mycircle/model/MyCircleModel;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;-><init>(Lcom/senseonics/mycircle/invite/InvitePeerRepository;Lcom/senseonics/util/EmailValidator;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/mycircle/model/MyCircleModel;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->get()Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

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

    .line 55
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->validator:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V

    return-void
.end method
