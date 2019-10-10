.class public final Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;
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
    name = "ProvideSharedPreferencesProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Landroid/content/SharedPreferences;",
        ">;",
        "Ljavax/inject/Provider<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/AndroidModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V
    .locals 4

    const-string v0, "android.content.SharedPreferences"

    const-string v1, "com.senseonics.gen12androidapp.AndroidModule"

    const-string v2, "provideSharedPreferences"

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    const/4 p1, 0x1

    .line 109
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/AndroidModule;->provideSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
