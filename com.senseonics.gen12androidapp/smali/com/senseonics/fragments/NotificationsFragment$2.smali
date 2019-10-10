.class Lcom/senseonics/fragments/NotificationsFragment$2;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/NotificationsFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/NotificationsFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$2;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 156
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$2;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->access$000(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$2;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/NotificationsFragment;->access$000(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Notification;

    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 160
    invoke-virtual {p1}, Lcom/senseonics/util/Notification;->getTimestamp()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$2;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p1, p2}, Lcom/senseonics/fragments/NotificationsFragment;->access$100(Lcom/senseonics/fragments/NotificationsFragment;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object p3, p0, Lcom/senseonics/fragments/NotificationsFragment$2;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p3}, Lcom/senseonics/fragments/NotificationsFragment;->access$200(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 163
    iget-object p3, p0, Lcom/senseonics/fragments/NotificationsFragment$2;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object p3, p3, Lcom/senseonics/fragments/NotificationsFragment;->currentSelectedDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 164
    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragment$2;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-static {p2}, Lcom/senseonics/fragments/NotificationsFragment;->access$200(Lcom/senseonics/fragments/NotificationsFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
