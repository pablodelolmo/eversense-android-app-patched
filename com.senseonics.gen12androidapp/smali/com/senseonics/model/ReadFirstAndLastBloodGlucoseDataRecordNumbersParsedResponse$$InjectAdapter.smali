.class public final Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothServiceCommandClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "com.senseonics.model.ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse"

    const-string v1, "members/com.senseonics.model.ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse"

    .line 27
    const-class v2, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    const-string v0, "com.senseonics.model.SyncModel"

    .line 37
    const-class v1, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.db.DatabaseManager"

    .line 38
    const-class v1, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    const-string v0, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    .line 39
    const-class v1, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    const-string v0, "android.content.SharedPreferences"

    .line 40
    const-class v1, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;
    .locals 5

    .line 61
    new-instance v0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

    iget-object v1, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/model/SyncModel;

    iget-object v2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/db/DatabaseManager;

    iget-object v3, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v4, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;-><init>(Lcom/senseonics/model/SyncModel;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse;

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

    .line 49
    iget-object p2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->syncModel:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->databaseManager:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p2, p0, Lcom/senseonics/model/ReadFirstAndLastBloodGlucoseDataRecordNumbersParsedResponse$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
