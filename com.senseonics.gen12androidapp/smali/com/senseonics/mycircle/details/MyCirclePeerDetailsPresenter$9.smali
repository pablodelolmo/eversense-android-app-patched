.class Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$9;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "MyCirclePeerDetailsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->handleShareDataError(Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$9;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$9;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$1700(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;

    iget-object v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$9;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-static {v1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$1600(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;->revertShareSwitchSelection(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
