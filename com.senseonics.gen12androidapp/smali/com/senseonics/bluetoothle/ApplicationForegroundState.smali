.class public Lcom/senseonics/bluetoothle/ApplicationForegroundState;
.super Ljava/lang/Object;
.source "ApplicationForegroundState.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static foregroundActivityCount:I


# instance fields
.field private lastActivityPaused:Landroid/app/Activity;

.field private lastActivityResumed:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isForeground()Z
    .locals 1

    .line 23
    sget v0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->foregroundActivityCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameActivityPausedResumed()Z
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->lastActivityResumed:Landroid/app/Activity;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->lastActivityPaused:Landroid/app/Activity;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 38
    sget v0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->foregroundActivityCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->foregroundActivityCount:I

    .line 39
    iput-object p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->lastActivityPaused:Landroid/app/Activity;

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 33
    sget v0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->foregroundActivityCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->foregroundActivityCount:I

    .line 34
    iput-object p1, p0, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->lastActivityResumed:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
