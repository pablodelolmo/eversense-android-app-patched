.class Lcom/senseonics/util/TabView$5;
.super Ljava/lang/Object;
.source "TabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/util/TabView;->tab4ClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/util/TabView;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/senseonics/util/TabView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/senseonics/util/TabView$5;->this$0:Lcom/senseonics/util/TabView;

    iput-object p2, p0, Lcom/senseonics/util/TabView$5;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/senseonics/util/TabView$5;->this$0:Lcom/senseonics/util/TabView;

    iget-object v0, v0, Lcom/senseonics/util/TabView;->tab4:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/senseonics/util/TabView$5;->this$0:Lcom/senseonics/util/TabView;

    iget-object v1, v1, Lcom/senseonics/util/TabView;->tab4:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 250
    iget-object v0, p0, Lcom/senseonics/util/TabView$5;->this$0:Lcom/senseonics/util/TabView;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/util/TabView$5;->this$0:Lcom/senseonics/util/TabView;

    iget-object v2, v2, Lcom/senseonics/util/TabView;->tab4:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/TabView;->toggleSelectedImage(Ljava/lang/Integer;Z)V

    .line 252
    iget-object v0, p0, Lcom/senseonics/util/TabView$5;->this$0:Lcom/senseonics/util/TabView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/senseonics/util/TabView;->setAllTabSelected(Z)V

    .line 253
    iget-object v0, p0, Lcom/senseonics/util/TabView$5;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 254
    iget-object p1, p0, Lcom/senseonics/util/TabView$5;->this$0:Lcom/senseonics/util/TabView;

    invoke-virtual {p1}, Lcom/senseonics/util/TabView;->ifNothingIsSelected()V

    return-void
.end method
