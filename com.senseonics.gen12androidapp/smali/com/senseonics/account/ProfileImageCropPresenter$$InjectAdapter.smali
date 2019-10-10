.class public final Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ProfileImageCropPresenter$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/account/ProfileImageCropPresenter;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/account/ProfileImageCropPresenter;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/account/ProfileImageCropPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmapUtil:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/BitmapUtil;",
            ">;"
        }
    .end annotation
.end field

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

    const-string v0, "com.senseonics.account.ProfileImageCropPresenter"

    const-string v1, "members/com.senseonics.account.ProfileImageCropPresenter"

    .line 32
    const-class v2, Lcom/senseonics/account/ProfileImageCropPresenter;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "com.senseonics.account.UserProfileRepository"

    .line 42
    const-class v1, Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.account.UserAccountModel"

    .line 43
    const-class v1, Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.view.CommonErrorHandler"

    .line 44
    const-class v1, Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.BitmapUtil"

    .line 45
    const-class v1, Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->bitmapUtil:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.gen12androidapp.BasePresenter"

    .line 46
    const-class v3, Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/account/ProfileImageCropPresenter;
    .locals 5

    .line 68
    new-instance v0, Lcom/senseonics/account/ProfileImageCropPresenter;

    iget-object v1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/account/UserProfileRepository;

    iget-object v2, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/account/UserAccountModel;

    iget-object v3, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/view/CommonErrorHandler;

    iget-object v4, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->bitmapUtil:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/senseonics/util/BitmapUtil;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/senseonics/account/ProfileImageCropPresenter;-><init>(Lcom/senseonics/account/UserProfileRepository;Lcom/senseonics/account/UserAccountModel;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/util/BitmapUtil;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/account/ProfileImageCropPresenter;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->get()Lcom/senseonics/account/ProfileImageCropPresenter;

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
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->errorHandler:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->bitmapUtil:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/account/ProfileImageCropPresenter;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/account/ProfileImageCropPresenter;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/ProfileImageCropPresenter$$InjectAdapter;->injectMembers(Lcom/senseonics/account/ProfileImageCropPresenter;)V

    return-void
.end method
