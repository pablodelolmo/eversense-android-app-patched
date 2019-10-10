.class Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EventsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/util/EventsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field eventTypeTextView:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/senseonics/graph/util/EventsListAdapter;

.field timeTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/senseonics/graph/util/EventsListAdapter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;->this$0:Lcom/senseonics/graph/util/EventsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/graph/util/EventsListAdapter;Lcom/senseonics/graph/util/EventsListAdapter$1;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/senseonics/graph/util/EventsListAdapter$ViewHolder;-><init>(Lcom/senseonics/graph/util/EventsListAdapter;)V

    return-void
.end method
