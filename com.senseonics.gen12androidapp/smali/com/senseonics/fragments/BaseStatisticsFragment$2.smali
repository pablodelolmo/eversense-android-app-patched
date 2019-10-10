.class Lcom/senseonics/fragments/BaseStatisticsFragment$2;
.super Ljava/lang/Object;
.source "BaseStatisticsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/BaseStatisticsFragment;->initTabs(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/BaseStatisticsFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment$2;->this$0:Lcom/senseonics/fragments/BaseStatisticsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 155
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment$2;->this$0:Lcom/senseonics/fragments/BaseStatisticsFragment;

    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment$2;->this$0:Lcom/senseonics/fragments/BaseStatisticsFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->setSelected(ILandroid/widget/LinearLayout;)V

    return-void
.end method
