.class Lcom/senseonics/util/NotificationsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NotificationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/NotificationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public dateLayout:Landroid/widget/RelativeLayout;

.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public separator:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/senseonics/util/NotificationsAdapter;

.field public time:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/senseonics/util/NotificationsAdapter;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;->this$0:Lcom/senseonics/util/NotificationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/util/NotificationsAdapter;Lcom/senseonics/util/NotificationsAdapter$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/senseonics/util/NotificationsAdapter$ViewHolder;-><init>(Lcom/senseonics/util/NotificationsAdapter;)V

    return-void
.end method
