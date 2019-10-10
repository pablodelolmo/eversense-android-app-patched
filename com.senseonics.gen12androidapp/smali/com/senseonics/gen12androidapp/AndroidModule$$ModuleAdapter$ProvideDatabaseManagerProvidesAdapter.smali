.class public final Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;
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
    name = "ProvideDatabaseManagerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lcom/senseonics/db/DatabaseManager;",
        ">;",
        "Ljavax/inject/Provider<",
        "Lcom/senseonics/db/DatabaseManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/AndroidModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V
    .locals 4

    const-string v0, "com.senseonics.db.DatabaseManager"

    const-string v1, "com.senseonics.gen12androidapp.AndroidModule"

    const-string v2, "provideDatabaseManager"

    const/4 v3, 0x1

    .line 80
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    .line 82
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/db/DatabaseManager;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/AndroidModule;->provideDatabaseManager()Lcom/senseonics/db/DatabaseManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;->get()Lcom/senseonics/db/DatabaseManager;

    move-result-object v0

    return-object v0
.end method
