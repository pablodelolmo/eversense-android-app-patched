.class public Lcom/senseonics/graph/GraphCacheIntentService;
.super Lcom/senseonics/gen12androidapp/BaseInjectedIntentService;
.source "GraphCacheIntentService.java"


# instance fields
.field graphCache:Lcom/senseonics/graph/GraphCache;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GraphCacheIntentService"

    .line 17
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BaseInjectedIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "NEW_START_END_DATES"

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "START_DATE"

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    const-string v2, "END_DATE"

    .line 24
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 25
    iget-object v2, p0, Lcom/senseonics/graph/GraphCacheIntentService;->graphCache:Lcom/senseonics/graph/GraphCache;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v1, p1, v0}, Lcom/senseonics/graph/GraphCache;->refresh(Ljava/util/Calendar;Ljava/util/Calendar;Z)V

    return-void
.end method
