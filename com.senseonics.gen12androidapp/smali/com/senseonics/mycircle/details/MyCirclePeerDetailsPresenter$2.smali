.class Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$2;
.super Ljava/lang/Object;
.source "MyCirclePeerDetailsPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->attach(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

.field final synthetic val$peerEmail:Ljava/lang/String;

.field final synthetic val$peerId:I


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;I)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$2;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iput-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$2;->val$peerEmail:Ljava/lang/String;

    iput p3, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$2;->val$peerId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$2;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$2;->val$peerEmail:Ljava/lang/String;

    iget v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$2;->val$peerId:I

    invoke-static {p1, v0, v1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$100(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;I)V

    return-void
.end method
