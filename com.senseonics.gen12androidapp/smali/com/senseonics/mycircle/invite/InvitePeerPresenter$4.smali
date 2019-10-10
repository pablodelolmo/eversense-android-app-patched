.class Lcom/senseonics/mycircle/invite/InvitePeerPresenter$4;
.super Ljava/lang/Object;
.source "InvitePeerPresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->handleSendClicked(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$4;->this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$4;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$4;->this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-static {v0, p1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->access$200(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Ljava/lang/Throwable;)V

    return-void
.end method
