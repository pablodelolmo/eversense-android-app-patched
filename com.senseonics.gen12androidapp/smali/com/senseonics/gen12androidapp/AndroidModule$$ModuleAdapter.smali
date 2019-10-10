.class public final Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "AndroidModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideHandlerProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter<",
        "Lcom/senseonics/gen12androidapp/AndroidModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final INCLUDES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final INJECTS:[Ljava/lang/String;

.field private static final STATIC_INJECTIONS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "members/com.senseonics.gen12androidapp.SenseonicsApplication"

    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    .line 19
    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 22
    const-class v1, Lcom/senseonics/gen12androidapp/AndroidModule;

    sget-object v2, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    return-void
.end method


# virtual methods
.method public getBindings(Ldagger/internal/BindingsGroup;Lcom/senseonics/gen12androidapp/AndroidModule;)V
    .locals 2

    const-string v0, "android.content.Context"

    .line 31
    new-instance v1, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.senseonics.db.DatabaseManager"

    .line 32
    new-instance v1, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "android.content.SharedPreferences"

    .line 33
    new-instance v1, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "android.os.Handler"

    .line 34
    new-instance v1, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideHandlerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideHandlerProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "android.app.NotificationManager"

    .line 35
    new-instance v1, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "de.greenrobot.event.EventBus"

    .line 36
    new-instance v1, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.senseonics.bluetoothle.ApplicationForegroundState"

    .line 37
    new-instance v1, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    const-string v0, "com.senseonics.graph.GraphCache"

    .line 38
    new-instance v1, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    return-void
.end method

.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/senseonics/gen12androidapp/AndroidModule;

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lcom/senseonics/gen12androidapp/AndroidModule;)V

    return-void
.end method
