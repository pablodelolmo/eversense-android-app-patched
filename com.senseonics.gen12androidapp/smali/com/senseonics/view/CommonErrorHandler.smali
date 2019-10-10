.class public Lcom/senseonics/view/CommonErrorHandler;
.super Ljava/lang/Object;
.source "CommonErrorHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V
    .locals 12

    .line 18
    instance-of v0, p2, Lretrofit2/HttpException;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lretrofit2/HttpException;

    .line 19
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0x190

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    :cond_0
    const v3, 0x7f0f013c

    const v4, 0x7f0f013b

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v6, p3

    .line 20
    invoke-interface/range {v2 .. v7}, Lcom/senseonics/view/DialogShowingView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_1

    .line 27
    :cond_1
    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-nez v0, :cond_3

    instance-of p2, p2, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x7f0f027b

    const v2, 0x7f0f027e

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, p3

    .line 36
    invoke-interface/range {v0 .. v5}, Lcom/senseonics/view/DialogShowingView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    const v7, 0x7f0f0296

    const v8, 0x7f0f0297

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    move-object v10, p3

    .line 28
    invoke-interface/range {v6 .. v11}, Lcom/senseonics/view/DialogShowingView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    :goto_1
    return-void
.end method
