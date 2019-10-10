.class public Lcom/senseonics/gen12androidapp/rx/IoThreadScheduler;
.super Ljava/lang/Object;
.source "IoThreadScheduler.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/rx/Scheduler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScheduler()Lrx/Scheduler;
    .locals 1

    .line 9
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method
