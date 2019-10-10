.class Lcom/senseonics/mycircle/home/MyCircleListItemView;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MyCircleListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private final myCirclesMemberImage:Lde/hdodenhof/circleimageview/CircleImageView;

.field private final myCirclesMemberName:Landroid/widget/TextView;

.field private peerEmail:Ljava/lang/String;

.field private peerId:I


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901ae

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->myCirclesMemberName:Landroid/widget/TextView;

    const v0, 0x7f0901ad

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->myCirclesMemberImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 28
    iput-object p2, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->context:Landroid/content/Context;

    .line 29
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)V
    .locals 3

    .line 42
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->peerEmail:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getFollowerUserId()I

    move-result v0

    iput v0, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->peerId:I

    .line 44
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->myCirclesMemberName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getDisplayTextColor()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->myCirclesMemberName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getProfileImage()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->myCirclesMemberImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v0, p1, v1}, Lcom/senseonics/view/GlideHelper;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PEER_KEY"

    .line 36
    iget-object v2, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->peerEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PEER_ID_KEY"

    .line 37
    iget v2, p0, Lcom/senseonics/mycircle/home/MyCircleListItemView;->peerId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
