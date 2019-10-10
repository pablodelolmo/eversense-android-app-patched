.class Lcom/senseonics/fragments/GraphFragment$2;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GraphFragment;->init(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/GraphFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$2;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 464
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment$2;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/GraphFragment;->access$000(Lcom/senseonics/fragments/GraphFragment;)Lcom/senseonics/graph/GraphManagerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment$2;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/GraphFragment;->access$000(Lcom/senseonics/fragments/GraphFragment;)Lcom/senseonics/graph/GraphManagerView;

    move-result-object p1

    sget-object v0, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Lcom/senseonics/graph/GraphManagerView;->setCurrentVisibleDate(Ljava/util/Calendar;)V

    .line 466
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment$2;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/GraphFragment;->access$000(Lcom/senseonics/fragments/GraphFragment;)Lcom/senseonics/graph/GraphManagerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/graph/GraphManagerView;->invalidate()V

    :cond_0
    return-void
.end method
