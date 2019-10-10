.class public final Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BaseFragment$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/fragments/BaseFragment;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/fragments/BaseFragment;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/fragments/BaseFragment;",
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

.field private alertHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AlertHelper;",
            ">;"
        }
    .end annotation
.end field

.field private calibrationHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/CalibrationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private dialogUtils:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DialogUtils;",
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

.field private transmitterStateModel:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.fragments.BaseFragment"

    const-string v1, "members/com.senseonics.fragments.BaseFragment"

    .line 33
    const-class v2, Lcom/senseonics/fragments/BaseFragment;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.model.TransmitterStateModel"

    .line 43
    const-class v1, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DialogUtils"

    .line 44
    const-class v1, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AccountConstants"

    .line 45
    const-class v1, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TempProfileManager"

    .line 46
    const-class v1, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AlertHelper"

    .line 47
    const-class v1, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.CalibrationHelper"

    .line 48
    const-class v1, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/fragments/BaseFragment;
    .locals 1

    .line 71
    new-instance v0, Lcom/senseonics/fragments/BaseFragment;

    invoke-direct {v0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    .line 72
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/fragments/BaseFragment;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->get()Lcom/senseonics/fragments/BaseFragment;

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

    .line 57
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/fragments/BaseFragment;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/TransmitterStateModel;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 83
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 84
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AccountConstants;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 85
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 86
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AlertHelper;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->alertHelper:Lcom/senseonics/util/AlertHelper;

    .line 87
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/CalibrationHelper;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/fragments/BaseFragment;)V

    return-void
.end method
