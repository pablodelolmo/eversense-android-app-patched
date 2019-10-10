.class Lcom/senseonics/gen12androidapp/MainActivity$MainTask$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MainActivity$MainTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/gen12androidapp/MainActivity$MainTask;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/MainActivity$MainTask;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$MainTask$1;->this$1:Lcom/senseonics/gen12androidapp/MainActivity$MainTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity$MainTask$1;->this$1:Lcom/senseonics/gen12androidapp/MainActivity$MainTask;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity$MainTask;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->access$400(Lcom/senseonics/gen12androidapp/MainActivity;)Lcom/senseonics/fragments/GraphFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity$MainTask$1;->this$1:Lcom/senseonics/gen12androidapp/MainActivity$MainTask;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity$MainTask;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->access$400(Lcom/senseonics/gen12androidapp/MainActivity;)Lcom/senseonics/fragments/GraphFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/fragments/GraphFragment;->validateGraph()V

    .line 760
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity$MainTask$1;->this$1:Lcom/senseonics/gen12androidapp/MainActivity$MainTask;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity$MainTask;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->checkStaleData()V

    :cond_0
    return-void
.end method
