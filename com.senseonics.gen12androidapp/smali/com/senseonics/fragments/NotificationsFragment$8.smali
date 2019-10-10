.class Lcom/senseonics/fragments/NotificationsFragment$8;
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

    .line 249
    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$8;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 253
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$8;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$8;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 255
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$8;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/NotificationsFragment;->checkIfSelectionsIsEmpty()V

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$8;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/NotificationsFragment;->selections:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_0
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$8;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/NotificationsFragment;->adapter:Lcom/senseonics/util/NotificationsAdapter;

    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragment$8;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/NotificationsFragment;->addSelection()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/util/NotificationsAdapter;->setNotifications(Ljava/util/ArrayList;)V

    return-void
.end method
