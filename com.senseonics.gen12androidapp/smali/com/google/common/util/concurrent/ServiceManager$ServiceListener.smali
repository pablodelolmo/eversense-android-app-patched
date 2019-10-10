.class final Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;
.super Lcom/google/common/util/concurrent/Service$Listener;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceListener"
.end annotation


# instance fields
.field final service:Lcom/google/common/util/concurrent/Service;

.field final state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

.field final watch:Lcom/google/common/base/Stopwatch;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "watch"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V
    .locals 1

    .line 601
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$Listener;-><init>()V

    .line 593
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createUnstarted()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    .line 602
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    .line 603
    iput-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 4

    .line 655
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$300()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has failed in the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 657
    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p2, p2, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 659
    :try_start_0
    sget-object p2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 660
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$500(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p1, p1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 665
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    return-void

    :catchall_0
    move-exception p1

    .line 664
    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p2, p2, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 665
    iget-object p2, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {p2}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw p1
.end method

.method finishedStarting(Z)V
    .locals 8
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v0

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 679
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    instance-of v1, v1, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v1, :cond_0

    .line 680
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Started {0} in {1} ms."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startupTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$600(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 683
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public running()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    const/4 v0, 0x1

    .line 615
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 618
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    return-void

    :catchall_0
    move-exception v0

    .line 617
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 618
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw v0
.end method

.method start()V
    .locals 1

    .line 688
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    .line 689
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->startAsync()Lcom/google/common/util/concurrent/Service;

    return-void
.end method

.method startTimer()V
    .locals 5

    .line 694
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v0

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 697
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    instance-of v1, v1, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v1, :cond_0

    .line 698
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Starting {0}."

    iget-object v4, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 701
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public starting()V
    .locals 0

    .line 609
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    return-void
.end method

.method startupTimeMillis()J
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    monitor-enter v0

    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->watch:Lcom/google/common/base/Stopwatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 708
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    .line 623
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 624
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p1, p1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    const/4 p1, 0x0

    .line 626
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p1, p1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 629
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 628
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 629
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 6

    .line 635
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    instance-of v0, v0, Lcom/google/common/util/concurrent/ServiceManager$NoOpService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 636
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->access$300()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Service {0} has terminated. Previous state was: {1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 641
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_1

    .line 644
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->startTimer()V

    .line 645
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->finishedStarting(Z)V

    .line 647
    :cond_1
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->service:Lcom/google/common/util/concurrent/Service;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$400(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lcom/google/common/util/concurrent/Service;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object p1, p1, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 650
    iget-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {p1}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    return-void

    :catchall_0
    move-exception p1

    .line 649
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 650
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$ServiceListener;->state:Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->access$200(Lcom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    throw p1
.end method
