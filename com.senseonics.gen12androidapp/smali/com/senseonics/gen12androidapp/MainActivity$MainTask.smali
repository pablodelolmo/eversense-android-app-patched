.class Lcom/senseonics/gen12androidapp/MainActivity$MainTask;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/MainActivity;


# direct methods
.method private constructor <init>(Lcom/senseonics/gen12androidapp/MainActivity;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$MainTask;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/gen12androidapp/MainActivity;Lcom/senseonics/gen12androidapp/MainActivity$1;)V
    .locals 0

    .line 751
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MainActivity$MainTask;-><init>(Lcom/senseonics/gen12androidapp/MainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 753
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity$MainTask;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v0}, Lcom/senseonics/db/DatabaseManager;->getEarliestEventDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->initDates(J)V

    .line 755
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity$MainTask;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    new-instance v1, Lcom/senseonics/gen12androidapp/MainActivity$MainTask$1;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/MainActivity$MainTask$1;-><init>(Lcom/senseonics/gen12androidapp/MainActivity$MainTask;)V

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
