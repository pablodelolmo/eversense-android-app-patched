.class public final Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "ServiceModule$$ModuleAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideContentResolverProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Landroid/content/ContentResolver;",
        ">;",
        "Ljavax/inject/Provider<",
        "Landroid/content/ContentResolver;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/senseonics/bluetoothle/ServiceModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/ServiceModule;)V
    .locals 4

    const-string v0, "android.content.ContentResolver"

    const-string v1, "com.senseonics.bluetoothle.ServiceModule"

    const-string v2, "provideContentResolver"

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;->module:Lcom/senseonics/bluetoothle/ServiceModule;

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "android.content.Context"

    .line 69
    const-class v1, Lcom/senseonics/bluetoothle/ServiceModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;->context:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Landroid/content/ContentResolver;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;->module:Lcom/senseonics/bluetoothle/ServiceModule;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;->context:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/ServiceModule;->provideContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;->get()Landroid/content/ContentResolver;

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

    .line 78
    iget-object p2, p0, Lcom/senseonics/bluetoothle/ServiceModule$$ModuleAdapter$ProvideContentResolverProvidesAdapter;->context:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
