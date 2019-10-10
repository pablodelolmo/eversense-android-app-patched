.class Lcom/senseonics/mycircle/invite/InvitePeerPresenter$5;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "InvitePeerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->handleInvitationResult(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$5;->this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$5;->this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    invoke-static {v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->access$300(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->onSuccess()V

    return-void
.end method
