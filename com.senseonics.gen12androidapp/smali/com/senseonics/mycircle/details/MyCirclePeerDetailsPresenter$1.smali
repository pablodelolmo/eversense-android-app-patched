.class Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$1;
.super Ljava/lang/Object;
.source "MyCirclePeerDetailsPresenter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$1;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iput-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$1;->val$peerEmail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$1;->this$0:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$1;->val$peerEmail:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->access$000(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;Ljava/lang/String;Z)V

    return-void
.end method
