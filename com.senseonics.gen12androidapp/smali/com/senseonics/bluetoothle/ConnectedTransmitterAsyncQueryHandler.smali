.class public Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConnectedTransmitterAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;
    }
.end annotation


# static fields
.field public static final CONNECTED_TRANSMITTER_QUERY_TOKEN:I = 0x65


# instance fields
.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p2    # Landroid/net/Uri;
        .annotation runtime Ljavax/inject/Named;
            value = "transmitter"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 22
    iput-object p2, p0, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    .line 27
    check-cast p2, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;

    .line 28
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "name"

    .line 29
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "address"

    .line 30
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    .line 31
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 32
    new-instance v1, Lcom/senseonics/bluetoothle/Transmitter;

    invoke-static {p3}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->valueOf(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p3

    invoke-direct {v1, v0, p1, p3}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 33
    const-class p1, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "have last transmitter: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-interface {p2, v1}, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;->lastConnectedTransmitter(Lcom/senseonics/bluetoothle/Transmitter;)V

    goto :goto_0

    .line 36
    :cond_0
    const-class p1, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Found noLastConnectedTransmitter"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-interface {p2}, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;->noLastConnectedTransmitter()V

    :goto_0
    return-void
.end method

.method public startQuery(Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;)V
    .locals 9

    const/16 v0, 0x65

    .line 42
    invoke-super {p0, v0}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 43
    iget-object v4, p0, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;->uri:Landroid/net/Uri;

    const/16 v2, 0x65

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-super/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
