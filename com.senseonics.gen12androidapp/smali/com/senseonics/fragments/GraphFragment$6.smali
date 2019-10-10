.class Lcom/senseonics/fragments/GraphFragment$6;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/GraphFragment;
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

    .line 597
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$6;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 602
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment$6;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/GraphFragment;->access$000(Lcom/senseonics/fragments/GraphFragment;)Lcom/senseonics/graph/GraphManagerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 603
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment$6;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/GraphFragment;->access$000(Lcom/senseonics/fragments/GraphFragment;)Lcom/senseonics/graph/GraphManagerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/graph/GraphManagerView;->getCurrentVisibleDate()Ljava/util/Calendar;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 605
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$6;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-static {v0, p1}, Lcom/senseonics/fragments/GraphFragment;->access$200(Lcom/senseonics/fragments/GraphFragment;Ljava/util/Calendar;)V

    return-void
.end method
