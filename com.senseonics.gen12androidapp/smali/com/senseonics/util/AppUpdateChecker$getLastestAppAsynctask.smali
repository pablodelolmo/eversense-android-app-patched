.class Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;
.super Landroid/os/AsyncTask;
.source "AppUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/AppUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "getLastestAppAsynctask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private response:Ljava/lang/String;

.field final synthetic this$0:Lcom/senseonics/util/AppUpdateChecker;


# direct methods
.method private constructor <init>(Lcom/senseonics/util/AppUpdateChecker;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->this$0:Lcom/senseonics/util/AppUpdateChecker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/util/AppUpdateChecker;Lcom/senseonics/util/AppUpdateChecker$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;-><init>(Lcom/senseonics/util/AppUpdateChecker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 143
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    .line 149
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->context:Landroid/content/Context;

    .line 150
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->this$0:Lcom/senseonics/util/AppUpdateChecker;

    invoke-static {p1}, Lcom/senseonics/util/AppUpdateChecker;->access$100(Lcom/senseonics/util/AppUpdateChecker;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->response:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string p1, "AppUpdate"

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->response:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->response:Ljava/lang/String;

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->this$0:Lcom/senseonics/util/AppUpdateChecker;

    iget-object v0, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->response:Ljava/lang/String;

    iget-object v1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->context:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/senseonics/util/AppUpdateChecker;->access$200(Lcom/senseonics/util/AppUpdateChecker;Ljava/lang/String;Landroid/content/Context;)V

    .line 163
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->this$0:Lcom/senseonics/util/AppUpdateChecker;

    iget-object v0, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/senseonics/util/AppUpdateChecker;->access$300(Lcom/senseonics/util/AppUpdateChecker;Landroid/content/Context;)V

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->this$0:Lcom/senseonics/util/AppUpdateChecker;

    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->ENDED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    invoke-static {p1, v0}, Lcom/senseonics/util/AppUpdateChecker;->access$402(Lcom/senseonics/util/AppUpdateChecker;Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;)Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    return-void
.end method
