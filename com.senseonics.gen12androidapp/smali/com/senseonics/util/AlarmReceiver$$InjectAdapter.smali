.class public final Lcom/senseonics/util/AlarmReceiver$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "AlarmReceiver$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/util/AlarmReceiver;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/util/AlarmReceiver;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/util/AlarmReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field private bus:Ldagger/internal/Binding;
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

    const-string v0, "com.senseonics.util.AlarmReceiver"

    const-string v1, "members/com.senseonics.util.AlarmReceiver"

    .line 28
    const-class v2, Lcom/senseonics/util/AlarmReceiver;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "de.greenrobot.event.EventBus"

    .line 38
    const-class v1, Lcom/senseonics/util/AlarmReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/AlarmReceiver$$InjectAdapter;->bus:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/util/AlarmReceiver;
    .locals 1

    .line 56
    new-instance v0, Lcom/senseonics/util/AlarmReceiver;

    invoke-direct {v0}, Lcom/senseonics/util/AlarmReceiver;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/senseonics/util/AlarmReceiver$$InjectAdapter;->injectMembers(Lcom/senseonics/util/AlarmReceiver;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/util/AlarmReceiver$$InjectAdapter;->get()Lcom/senseonics/util/AlarmReceiver;

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
    iget-object p1, p0, Lcom/senseonics/util/AlarmReceiver$$InjectAdapter;->bus:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/util/AlarmReceiver;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/senseonics/util/AlarmReceiver$$InjectAdapter;->bus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    iput-object v0, p1, Lcom/senseonics/util/AlarmReceiver;->bus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/util/AlarmReceiver;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/AlarmReceiver$$InjectAdapter;->injectMembers(Lcom/senseonics/util/AlarmReceiver;)V

    return-void
.end method
