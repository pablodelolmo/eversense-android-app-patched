.class Lcom/senseonics/util/TabView$1;
.super Ljava/lang/Object;
.source "TabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/util/TabView;->allTabClickListener(Landroid/view/View$OnClickListener;)V
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

    .line 183
    iput-object p1, p0, Lcom/senseonics/util/TabView$1;->this$0:Lcom/senseonics/util/TabView;

    iput-object p2, p0, Lcom/senseonics/util/TabView$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/senseonics/util/TabView$1;->this$0:Lcom/senseonics/util/TabView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/TabView;->setAllTabSelected(Z)V

    .line 189
    iget-object v0, p0, Lcom/senseonics/util/TabView$1;->this$0:Lcom/senseonics/util/TabView;

    invoke-static {v0}, Lcom/senseonics/util/TabView;->access$000(Lcom/senseonics/util/TabView;)V

    .line 190
    iget-object v0, p0, Lcom/senseonics/util/TabView$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
