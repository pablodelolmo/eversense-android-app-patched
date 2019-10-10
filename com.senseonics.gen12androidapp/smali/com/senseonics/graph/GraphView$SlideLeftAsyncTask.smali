.class public Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;
.super Landroid/os/AsyncTask;
.source "GraphView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/graph/GraphView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlideLeftAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/graph/GraphView;


# direct methods
.method public constructor <init>(Lcom/senseonics/graph/GraphView;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 193
    iget-object p1, p0, Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;->this$0:Lcom/senseonics/graph/GraphView;

    iget-object v0, p0, Lcom/senseonics/graph/GraphView$SlideLeftAsyncTask;->this$0:Lcom/senseonics/graph/GraphView;

    invoke-static {v0}, Lcom/senseonics/graph/GraphView;->access$300(Lcom/senseonics/graph/GraphView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/senseonics/graph/GraphView;->slide(I)V

    const/4 p1, 0x0

    return-object p1
.end method
