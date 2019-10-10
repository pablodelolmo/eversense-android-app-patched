.class public Lcom/senseonics/gen12androidapp/rx/MainThreadScheduler;
.super Ljava/lang/Object;
.source "MainThreadScheduler.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/rx/Scheduler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScheduler()Lrx/Scheduler;
    .locals 1

    .line 8
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method
