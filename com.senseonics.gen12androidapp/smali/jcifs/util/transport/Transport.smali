.class public abstract Ljcifs/util/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static id:I

.field static log:Ljcifs/util/LogStream;


# instance fields
.field name:Ljava/lang/String;

.field protected response_map:Ljava/util/HashMap;

.field state:I

.field te:Ljcifs/util/transport/TransportException;

.field thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ljcifs/util/transport/Transport;->id:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljcifs/util/transport/Transport;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    return-void
.end method

.method private loop()V
    .locals 4

    .line 94
    :goto_0
    iget-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->peekKey()Ljcifs/util/transport/Request;

    move-result-object v1

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Ljava/io/IOException;

    const-string v2, "end of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    iget-object v2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/util/transport/Response;

    if-nez v1, :cond_2

    .line 102
    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 103
    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    const-string v2, "Invalid key, skipping message"

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doSkip()V

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p0, v1}, Ljcifs/util/transport/Transport;->doRecv(Ljcifs/util/transport/Response;)V

    .line 107
    iput-boolean v0, v1, Ljcifs/util/transport/Response;->isReceived:Z

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 110
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "Read timed out"

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    xor-int/lit8 v2, v0, 0x1

    if-nez v0, :cond_4

    .line 118
    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_4

    .line 119
    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 122
    :cond_4
    :try_start_3
    invoke-virtual {p0, v2}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 124
    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static readn(Ljava/io/InputStream;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 29
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public declared-synchronized connect(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/util/transport/TransportException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 147
    :try_start_0
    iget v5, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v5, :cond_2

    packed-switch v5, :pswitch_data_0

    .line 156
    new-instance p1, Ljcifs/util/transport/TransportException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid state: "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 157
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 158
    throw p1

    .line 153
    :pswitch_0
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 154
    new-instance p1, Ljcifs/util/transport/TransportException;

    const-string p2, "Connection in error"

    iget-object v5, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    invoke-direct {p1, p2, v5}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :pswitch_1
    :try_start_1
    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz p1, :cond_1

    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq p1, v1, :cond_1

    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq p1, v0, :cond_1

    .line 193
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v2, :cond_0

    .line 194
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_0
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    monitor-exit p0

    return-void

    .line 161
    :cond_2
    :try_start_2
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 162
    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 163
    new-instance v5, Ljava/lang/Thread;

    iget-object v6, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-direct {v5, p0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v5, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 164
    iget-object v5, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v5, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 166
    iget-object v5, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    :try_start_3
    iget-object v6, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 168
    iget-object v6, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v6, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 170
    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    packed-switch p1, :pswitch_data_1

    .line 184
    monitor-exit v5

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object p1, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    if-eqz p1, :cond_3

    .line 177
    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    .line 178
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 179
    iget-object p1, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    throw p1

    .line 181
    :cond_3
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 182
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    :try_start_4
    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz p1, :cond_5

    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq p1, v1, :cond_5

    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq p1, v0, :cond_5

    .line 193
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v2, :cond_4

    .line 194
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_4
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_5
    monitor-exit p0

    return-void

    .line 172
    :pswitch_3
    :try_start_5
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 173
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 174
    new-instance p1, Ljcifs/util/transport/TransportException;

    const-string p2, "Connection timeout"

    invoke-direct {p1, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    :goto_0
    :try_start_6
    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz p1, :cond_7

    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq p1, v1, :cond_7

    iget p1, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq p1, v0, :cond_7

    .line 193
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v2, :cond_6

    .line 194
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_6
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 199
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 184
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 186
    :try_start_9
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 187
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 188
    new-instance p2, Ljcifs/util/transport/TransportException;

    invoke-direct {p2, p1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 192
    :goto_1
    :try_start_a
    iget p2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz p2, :cond_9

    iget p2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq p2, v1, :cond_9

    iget p2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq p2, v0, :cond_9

    .line 193
    sget-object p2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget p2, Ljcifs/util/LogStream;->level:I

    if-lt p2, v2, :cond_8

    .line 194
    sget-object p2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_8
    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    :cond_9
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    .line 146
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized disconnect(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_0
    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 222
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v2, :cond_0

    .line 223
    sget-object p1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 224
    :cond_0
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 225
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    .line 209
    :pswitch_1
    iget-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    :goto_0
    move-object p1, v3

    goto :goto_2

    .line 213
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doDisconnect(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    move-object p1, v3

    goto :goto_1

    :catch_0
    move-exception p1

    .line 218
    :goto_1
    :try_start_2
    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 219
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    :goto_2
    if-eqz p1, :cond_2

    .line 230
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :cond_2
    monitor-exit p0

    return-void

    .line 205
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 200
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract doConnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doDisconnect(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doRecv(Ljcifs/util/transport/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doSend(Ljcifs/util/transport/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doSkip()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract makeKey(Ljcifs/util/transport/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peekKey()Ljcifs/util/transport/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public run()V
    .locals 4

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x2

    .line 241
    :try_start_0
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doConnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    monitor-enter v0

    .line 247
    :try_start_1
    iget-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v0, v2, :cond_0

    .line 255
    monitor-exit v0

    return-void

    .line 260
    :cond_0
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 262
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    invoke-direct {p0}, Ljcifs/util/transport/Transport;->loop()V

    return-void

    :catchall_0
    move-exception v1

    .line 262
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    monitor-enter v0

    .line 247
    :try_start_3
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v0, v3, :cond_1

    .line 255
    monitor-exit v0

    return-void

    .line 260
    :cond_1
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 262
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 246
    throw v2

    :catchall_2
    move-exception v1

    .line 262
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :catch_0
    move-exception v2

    monitor-enter v0

    .line 247
    :try_start_5
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v0, v3, :cond_3

    if-eqz v2, :cond_2

    .line 252
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_2

    .line 253
    sget-object v1, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 255
    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    if-eqz v2, :cond_4

    .line 258
    new-instance v3, Ljcifs/util/transport/TransportException;

    invoke-direct {v3, v2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 260
    :cond_4
    iput v1, p0, Ljcifs/util/transport/Transport;->state:I

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 262
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method

.method public declared-synchronized sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->makeKey(Ljcifs/util/transport/Request;)V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p2, Ljcifs/util/transport/Response;->isReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    iget-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doSend(Ljcifs/util/transport/Request;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    add-long/2addr v0, p3

    iput-wide v0, p2, Ljcifs/util/transport/Response;->expiration:J

    .line 69
    :cond_0
    iget-boolean v0, p2, Ljcifs/util/transport/Response;->isReceived:Z

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0, p3, p4}, Ljava/lang/Object;->wait(J)V

    .line 71
    iget-wide p3, p2, Ljcifs/util/transport/Response;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 73
    new-instance p2, Ljcifs/util/transport/TransportException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " timedout waiting for response to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_1
    :try_start_2
    iget-object p2, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 88
    :try_start_3
    new-instance p3, Ljcifs/util/transport/TransportException;

    invoke-direct {p3, p2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p2

    .line 79
    sget-object p3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget p3, Ljcifs/util/LogStream;->level:I

    const/4 p4, 0x2

    if-le p3, p4, :cond_2

    .line 80
    sget-object p3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {p2, p3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    const/4 p3, 0x1

    .line 82
    :try_start_4
    invoke-virtual {p0, p3}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_2
    move-exception p3

    .line 84
    :try_start_5
    sget-object p4, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {p3, p4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 86
    :goto_0
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    :goto_1
    :try_start_6
    iget-object p3, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 62
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    return-object v0
.end method
