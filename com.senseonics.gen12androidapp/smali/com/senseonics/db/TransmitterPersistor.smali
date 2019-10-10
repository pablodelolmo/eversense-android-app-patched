.class public Lcom/senseonics/db/TransmitterPersistor;
.super Ljava/lang/Object;
.source "TransmitterPersistor.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private authorityUri:Landroid/net/Uri;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Landroid/net/Uri;)V
    .locals 0
    .param p3    # Landroid/net/Uri;
        .annotation runtime Ljavax/inject/Named;
            value = "transmitter"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/senseonics/db/TransmitterPersistor;->context:Landroid/content/Context;

    .line 25
    iput-object p3, p0, Lcom/senseonics/db/TransmitterPersistor;->authorityUri:Landroid/net/Uri;

    .line 26
    invoke-virtual {p2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 3

    .line 30
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 32
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "address"

    .line 33
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    .line 34
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/senseonics/db/TransmitterPersistor;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/senseonics/db/TransmitterPersistor;->authorityUri:Landroid/net/Uri;

    const-string v2, "transmitter"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
