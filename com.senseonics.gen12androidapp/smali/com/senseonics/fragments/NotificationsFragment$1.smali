.class Lcom/senseonics/fragments/NotificationsFragment$1;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/NotificationsFragment;->getOnItemClickListener(Lcom/senseonics/util/NotificationsAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/NotificationsFragment;

.field final synthetic val$adapter:Lcom/senseonics/util/NotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/NotificationsFragment;Lcom/senseonics/util/NotificationsAdapter;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$1;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iput-object p2, p0, Lcom/senseonics/fragments/NotificationsFragment$1;->val$adapter:Lcom/senseonics/util/NotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 126
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$1;->val$adapter:Lcom/senseonics/util/NotificationsAdapter;

    .line 127
    invoke-virtual {p1, p3}, Lcom/senseonics/util/NotificationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Notification;

    .line 128
    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragment$1;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    .line 129
    invoke-virtual {p1}, Lcom/senseonics/util/Notification;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object p1

    .line 128
    invoke-static {p2, p1}, Lcom/senseonics/util/Utils;->showEventDetails(Landroid/app/Fragment;Lcom/senseonics/events/EventPoint;)V

    return-void
.end method
