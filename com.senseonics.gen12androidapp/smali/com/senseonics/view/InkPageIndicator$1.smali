.class Lcom/senseonics/view/InkPageIndicator$1;
.super Landroid/database/DataSetObserver;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/InkPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method constructor <init>(Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$1;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator$1;->this$0:Lcom/senseonics/view/InkPageIndicator;

    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator$1;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {v1}, Lcom/senseonics/view/InkPageIndicator;->access$000(Lcom/senseonics/view/InkPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/view/InkPageIndicator;->access$100(Lcom/senseonics/view/InkPageIndicator;I)V

    return-void
.end method
