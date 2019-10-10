.class public final Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SplashActivity$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/SplashActivity;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/gen12androidapp/SplashActivity;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/gen12androidapp/SplashActivity;",
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

.field private alarmRingtoneManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AlarmRingtoneManager;",
            ">;"
        }
    .end annotation
.end field

.field private repository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/compatibility/DeviceCompatibilityRepository;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/ObjectGraphActivity;",
            ">;"
        }
    .end annotation
.end field

.field private tempProfileManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TempProfileManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.gen12androidapp.SplashActivity"

    const-string v1, "members/com.senseonics.gen12androidapp.SplashActivity"

    .line 32
    const-class v2, Lcom/senseonics/gen12androidapp/SplashActivity;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "com.senseonics.util.AccountConstants"

    .line 42
    const-class v1, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AlarmRingtoneManager"

    .line 43
    const-class v1, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->alarmRingtoneManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TempProfileManager"

    .line 44
    const-class v1, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.compatibility.DeviceCompatibilityRepository"

    .line 45
    const-class v1, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->repository:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.gen12androidapp.ObjectGraphActivity"

    .line 46
    const-class v3, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/SplashActivity;
    .locals 1

    .line 68
    new-instance v0, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/SplashActivity;-><init>()V

    .line 69
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SplashActivity;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/SplashActivity;

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

    .line 55
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->alarmRingtoneManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/SplashActivity;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AccountConstants;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SplashActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 80
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->alarmRingtoneManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AlarmRingtoneManager;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SplashActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 81
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SplashActivity;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 82
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/compatibility/DeviceCompatibilityRepository;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SplashActivity;->repository:Lcom/senseonics/compatibility/DeviceCompatibilityRepository;

    .line 83
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SplashActivity;)V

    return-void
.end method
