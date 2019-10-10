.class public final Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "AndroidModule$$ModuleAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideGraphCacheProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lcom/senseonics/graph/GraphCache;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/graph/GraphCache;",
        ">;"
    }
.end annotation


# instance fields
.field private databaseManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/db/DatabaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/senseonics/gen12androidapp/AndroidModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V
    .locals 4

    const-string v0, "com.senseonics.graph.GraphCache"

    const-string v1, "com.senseonics.gen12androidapp.AndroidModule"

    const-string v2, "provideGraphCache"

    const/4 v3, 0x1

    .line 247
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    .line 249
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "de.greenrobot.event.EventBus"

    .line 259
    const-class v1, Lcom/senseonics/gen12androidapp/AndroidModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.db.DatabaseManager"

    .line 260
    const-class v1, Lcom/senseonics/gen12androidapp/AndroidModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;->databaseManager:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/graph/GraphCache;
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/EventBus;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/gen12androidapp/AndroidModule;->provideGraphCache(Lde/greenrobot/event/EventBus;Lcom/senseonics/db/DatabaseManager;)Lcom/senseonics/graph/GraphCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;->get()Lcom/senseonics/graph/GraphCache;

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

    .line 269
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
