.class Lcom/senseonics/fragments/NotificationsFragment$12;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/NotificationsFragment;->getAll()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/senseonics/util/Notification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/NotificationsFragment;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/senseonics/fragments/NotificationsFragment$12;->this$0:Lcom/senseonics/fragments/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/senseonics/util/Notification;Lcom/senseonics/util/Notification;)I
    .locals 2

    .line 433
    invoke-virtual {p2}, Lcom/senseonics/util/Notification;->getTimestamp()J

    move-result-wide v0

    .line 434
    invoke-virtual {p1}, Lcom/senseonics/util/Notification;->getTimestamp()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 429
    check-cast p1, Lcom/senseonics/util/Notification;

    check-cast p2, Lcom/senseonics/util/Notification;

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/fragments/NotificationsFragment$12;->compare(Lcom/senseonics/util/Notification;Lcom/senseonics/util/Notification;)I

    move-result p1

    return p1
.end method
