.class public Lcom/senseonics/mycircle/home/MyCircleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MyCircleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/senseonics/mycircle/home/MyCircleListItemView;",
        ">;"
    }
.end annotation


# instance fields
.field private peers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleAdapter;->peers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleAdapter;->peers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/senseonics/mycircle/home/MyCircleListItemView;

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/mycircle/home/MyCircleAdapter;->onBindViewHolder(Lcom/senseonics/mycircle/home/MyCircleListItemView;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/senseonics/mycircle/home/MyCircleListItemView;I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleAdapter;->peers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    invoke-virtual {p1, p2}, Lcom/senseonics/mycircle/home/MyCircleListItemView;->init(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/mycircle/home/MyCircleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/senseonics/mycircle/home/MyCircleListItemView;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/senseonics/mycircle/home/MyCircleListItemView;
    .locals 2

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00a6

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 25
    new-instance v0, Lcom/senseonics/mycircle/home/MyCircleListItemView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/senseonics/mycircle/home/MyCircleListItemView;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object v0
.end method

.method public resetPeersList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleAdapter;->peers:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/senseonics/mycircle/home/MyCircleAdapter;->notifyDataSetChanged()V

    return-void
.end method
