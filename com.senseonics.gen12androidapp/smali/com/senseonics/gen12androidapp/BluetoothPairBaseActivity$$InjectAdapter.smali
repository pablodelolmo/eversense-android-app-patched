.class public final Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothPairBaseActivity$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;",
        ">;",
        "Ldagger/MembersInjector<",
        "Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;",
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

.field private alertHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AlertHelper;",
            ">;"
        }
    .end annotation
.end field

.field private appUpdateChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AppUpdateChecker;",
            ">;"
        }
    .end annotation
.end field

.field private applicationForegroundState:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/ApplicationForegroundState;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothServiceCommandClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
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

.field private databaseManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/db/DatabaseManager;",
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

.field private dmsStateModelSyncManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;",
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

.field private handler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private notificationUtility:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/NotificationUtility;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private stateModelUploadUtility:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/StateModelUploadUtility;",
            ">;"
        }
    .end annotation
.end field

.field private stateModelUploadUtilitySOAP:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/StateModelUploadUtility_SOAP;",
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

.field private syncModel:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/SyncModel;",
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

.field private userInfoSecureStorer:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/UserInfoSecureStorer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.gen12androidapp.BluetoothPairBaseActivity"

    const-string v1, "members/com.senseonics.gen12androidapp.BluetoothPairBaseActivity"

    .line 47
    const-class v2, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    const-string v0, "com.senseonics.db.DatabaseManager"

    .line 57
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    const-string v0, "android.os.Handler"

    .line 58
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->handler:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.TransmitterStateModel"

    .line 59
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 60
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DialogUtils"

    .line 61
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    .line 62
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.SyncModel"

    .line 63
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    const-string v0, "android.content.SharedPreferences"

    .line 64
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AccountConstants"

    .line 65
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.UserInfoSecureStorer"

    .line 66
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->userInfoSecureStorer:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ApplicationForegroundState"

    .line 67
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.NotificationUtility"

    .line 68
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.StateModelUploadUtility_SOAP"

    .line 69
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->stateModelUploadUtilitySOAP:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.StateModelUploadUtility"

    .line 70
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->stateModelUploadUtility:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AlarmRingtoneManager"

    .line 71
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->alarmRingtoneManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AppUpdateChecker"

    .line 72
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->appUpdateChecker:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DMSStateModelSyncManager"

    .line 73
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->dmsStateModelSyncManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.CalibrationHelper"

    .line 74
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AlertHelper"

    .line 75
    const-class v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    const-string v2, "members/com.senseonics.gen12androidapp.ObjectGraphActivity"

    .line 76
    const-class v3, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;
    .locals 1

    .line 113
    new-instance v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;-><init>()V

    .line 114
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

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

    .line 85
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->userInfoSecureStorer:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->stateModelUploadUtilitySOAP:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->stateModelUploadUtility:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->alarmRingtoneManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->appUpdateChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->dmsStateModelSyncManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/db/DatabaseManager;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 125
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->handler:Landroid/os/Handler;

    .line 126
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/TransmitterStateModel;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 127
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    .line 128
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 129
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 130
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/SyncModel;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 131
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 132
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AccountConstants;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 133
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->userInfoSecureStorer:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/UserInfoSecureStorer;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;

    .line 134
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 135
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/NotificationUtility;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    .line 136
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->stateModelUploadUtilitySOAP:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    .line 137
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->stateModelUploadUtility:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/StateModelUploadUtility;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    .line 138
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->alarmRingtoneManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AlarmRingtoneManager;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 139
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->appUpdateChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AppUpdateChecker;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->appUpdateChecker:Lcom/senseonics/util/AppUpdateChecker;

    .line 140
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->dmsStateModelSyncManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    .line 141
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/CalibrationHelper;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    .line 142
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AlertHelper;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->alertHelper:Lcom/senseonics/util/AlertHelper;

    .line 143
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method
