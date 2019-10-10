.class Lcom/senseonics/mycircle/invite/InvitePeerPresenter$1;
.super Ljava/lang/Object;
.source "InvitePeerPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->attach(Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

.field final synthetic val$view:Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$1;->this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    iput-object p2, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$1;->val$view:Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 55
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$1;->this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$1;->val$view:Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-interface {v0}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->getEnteredNickname()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$1;->val$view:Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    invoke-interface {v1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->getEnteredEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->access$000(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
