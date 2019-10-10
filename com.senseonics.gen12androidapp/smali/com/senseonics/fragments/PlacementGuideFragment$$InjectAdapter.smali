.class public final Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "PlacementGuideFragment$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/fragments/PlacementGuideFragment;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/fragments/PlacementGuideFragment;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/fragments/PlacementGuideFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/fragments/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.fragments.PlacementGuideFragment"

    const-string v1, "members/com.senseonics.fragments.PlacementGuideFragment"

    .line 30
    const-class v2, Lcom/senseonics/fragments/PlacementGuideFragment;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "de.greenrobot.event.EventBus"

    .line 40
    const-class v1, Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "android.os.Handler"

    .line 41
    const-class v1, Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->handler:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.fragments.BaseFragment"

    .line 42
    const-class v3, Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/fragments/PlacementGuideFragment;
    .locals 1

    .line 62
    new-instance v0, Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-direct {v0}, Lcom/senseonics/fragments/PlacementGuideFragment;-><init>()V

    .line 63
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/fragments/PlacementGuideFragment;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->get()Lcom/senseonics/fragments/PlacementGuideFragment;

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

    .line 51
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/fragments/PlacementGuideFragment;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    iput-object v0, p1, Lcom/senseonics/fragments/PlacementGuideFragment;->eventBus:Lde/greenrobot/event/EventBus;

    .line 74
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p1, Lcom/senseonics/fragments/PlacementGuideFragment;->handler:Landroid/os/Handler;

    .line 75
    iget-object v0, p0, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/PlacementGuideFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/fragments/PlacementGuideFragment;)V

    return-void
.end method
