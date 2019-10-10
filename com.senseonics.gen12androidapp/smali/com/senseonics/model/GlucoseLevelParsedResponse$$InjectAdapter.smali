.class public final Lcom/senseonics/model/GlucoseLevelParsedResponse$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "GlucoseLevelParsedResponse$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/model/GlucoseLevelParsedResponse;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/model/GlucoseLevelParsedResponse;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.model.GlucoseLevelParsedResponse"

    const-string v1, "members/com.senseonics.model.GlucoseLevelParsedResponse"

    .line 25
    const-class v2, Lcom/senseonics/model/GlucoseLevelParsedResponse;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.db.DatabaseManager"

    .line 35
    const-class v1, Lcom/senseonics/model/GlucoseLevelParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/GlucoseLevelParsedResponse$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 36
    const-class v1, Lcom/senseonics/model/GlucoseLevelParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/model/GlucoseLevelParsedResponse$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/model/GlucoseLevelParsedResponse;
    .locals 3

    .line 55
    new-instance v0, Lcom/senseonics/model/GlucoseLevelParsedResponse;

    iget-object v1, p0, Lcom/senseonics/model/GlucoseLevelParsedResponse$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/db/DatabaseManager;

    iget-object v2, p0, Lcom/senseonics/model/GlucoseLevelParsedResponse$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, v1, v2}, Lcom/senseonics/model/GlucoseLevelParsedResponse;-><init>(Lcom/senseonics/db/DatabaseManager;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/model/GlucoseLevelParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/GlucoseLevelParsedResponse;

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

    .line 45
    iget-object p2, p0, Lcom/senseonics/model/GlucoseLevelParsedResponse$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p2, p0, Lcom/senseonics/model/GlucoseLevelParsedResponse$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
