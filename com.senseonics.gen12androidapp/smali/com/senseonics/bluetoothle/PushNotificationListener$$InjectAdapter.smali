.class public final Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "PushNotificationListener$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/PushNotificationListener;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/bluetoothle/PushNotificationListener;",
        ">;"
    }
.end annotation


# instance fields
.field private alertHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AlertHelper;",
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

.field private context:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/Context;",
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

.field private dmsStateModelSyncManagerIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;",
            ">;"
        }
    .end annotation
.end field

.field private dmsStateModelSyncManagerSOAPIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;",
            ">;"
        }
    .end annotation
.end field

.field private dmsSyncManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSSyncManager;",
            ">;"
        }
    .end annotation
.end field

.field private dmsSyncManagerSOAPIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;",
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

.field private messageCoder:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/MessageCoder;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field

.field private myCircleMemberManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/mycircle/home/MyCircleMemberManager;",
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

.field private registrationIDRepository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gcm/RegistrationIDRepository;",
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

.field private syncModel:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/SyncModel;",
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

    const-string v0, "com.senseonics.bluetoothle.PushNotificationListener"

    const-string v1, "members/com.senseonics.bluetoothle.PushNotificationListener"

    .line 42
    const-class v2, Lcom/senseonics/bluetoothle/PushNotificationListener;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "android.content.Context"

    .line 52
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->context:Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 53
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ApplicationForegroundState"

    .line 54
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.NotificationUtility"

    .line 55
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.db.DatabaseManager"

    .line 56
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.TransmitterStateModel"

    .line 57
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->model:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.MessageCoder"

    .line 58
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    .line 59
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    const-string v0, "android.content.SharedPreferences"

    .line 60
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DialogUtils"

    .line 61
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DMSSyncManager_SOAP"

    .line 62
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManagerSOAPIn:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DMSSyncManager"

    .line 63
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DMSStateModelSyncManager_SOAP"

    .line 64
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerSOAPIn:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.DMSStateModelSyncManager"

    .line 65
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerIn:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.TempProfileManager"

    .line 66
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.model.SyncModel"

    .line 67
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gcm.RegistrationIDRepository"

    .line 68
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->registrationIDRepository:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.mycircle.home.MyCircleMemberManager"

    .line 69
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->myCircleMemberManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.util.AlertHelper"

    .line 70
    const-class v1, Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/PushNotificationListener;
    .locals 22

    move-object/from16 v0, p0

    .line 106
    new-instance v21, Lcom/senseonics/bluetoothle/PushNotificationListener;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lde/greenrobot/event/EventBus;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/senseonics/util/NotificationUtility;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/senseonics/db/DatabaseManager;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/senseonics/model/TransmitterStateModel;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/senseonics/gen12androidapp/MessageCoder;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/content/SharedPreferences;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManagerSOAPIn:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/senseonics/bluetoothle/DMSSyncManager;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerSOAPIn:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerIn:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/senseonics/bluetoothle/TempProfileManager;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/senseonics/model/SyncModel;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->registrationIDRepository:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/senseonics/gcm/RegistrationIDRepository;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->myCircleMemberManager:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    iget-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/senseonics/util/AlertHelper;

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v20}, Lcom/senseonics/bluetoothle/PushNotificationListener;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/gen12androidapp/MessageCoder;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/SharedPreferences;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;Lcom/senseonics/bluetoothle/DMSSyncManager;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/model/SyncModel;Lcom/senseonics/gcm/RegistrationIDRepository;Lcom/senseonics/mycircle/home/MyCircleMemberManager;Lcom/senseonics/util/AlertHelper;)V

    return-object v21
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/PushNotificationListener;

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

    .line 79
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->context:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->applicationForegroundState:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->model:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->messageCoder:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManagerSOAPIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsSyncManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerSOAPIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->dmsStateModelSyncManagerIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->registrationIDRepository:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->myCircleMemberManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object p2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
