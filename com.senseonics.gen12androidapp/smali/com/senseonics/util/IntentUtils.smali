.class public Lcom/senseonics/util/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/senseonics/util/IntentUtils;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/util/IntentUtils;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/senseonics/util/IntentUtils;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public refreshGraphFromCache(Ljava/util/Calendar;Ljava/util/Calendar;Z)V
    .locals 3

    .line 27
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/util/IntentUtils;->context:Landroid/content/Context;

    const-class v2, Lcom/senseonics/graph/GraphCacheIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "NEW_START_END_DATES"

    .line 28
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "START_DATE"

    .line 29
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "END_DATE"

    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 34
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/senseonics/util/IntentUtils$1;

    invoke-direct {p2, p0, v0}, Lcom/senseonics/util/IntentUtils$1;-><init>(Lcom/senseonics/util/IntentUtils;Landroid/content/Intent;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
