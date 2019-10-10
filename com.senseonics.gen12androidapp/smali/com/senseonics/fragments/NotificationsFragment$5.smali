.class Lcom/senseonics/fragments/NotificationsFragment$5;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 212
    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$5;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$5;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 217
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$5;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment$5;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/NotificationsFragment;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/util/NotificationsAdapter;->setNotifications(Ljava/util/ArrayList;)V

    return-void
.end method
