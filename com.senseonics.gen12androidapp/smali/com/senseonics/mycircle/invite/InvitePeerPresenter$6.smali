.class Lcom/senseonics/mycircle/invite/InvitePeerPresenter$6;
.super Ljava/lang/Object;
.source "InvitePeerPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/invite/InvitePeerPresenter;->showAlertDialog(Landroid/content/Context;Ljava/util/List;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

.field final synthetic val$emails:[Ljava/lang/String;

.field final synthetic val$view:Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/invite/InvitePeerPresenter;Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;[Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$6;->this$0:Lcom/senseonics/mycircle/invite/InvitePeerPresenter;

    iput-object p2, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$6;->val$view:Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    iput-object p3, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$6;->val$emails:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$6;->val$view:Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;

    iget-object v0, p0, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$6;->val$emails:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-interface {p1, p2}, Lcom/senseonics/mycircle/invite/InvitePeerPresenter$InvitePeersView;->setEmailText(Ljava/lang/String;)V

    return-void
.end method
