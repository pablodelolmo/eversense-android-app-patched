.class public Lcom/senseonics/util/Emailer;
.super Ljava/lang/Object;
.source "Emailer.java"


# static fields
.field public static final EMAIL_BITMAP_PATH:Ljava/lang/String; = "EMAIL_BITMAP_PATH"

.field public static final EMAIL_BODY:Ljava/lang/String; = "EMAIL_BODY"

.field public static final EMAIL_TITLE:Ljava/lang/String; = "EMAIL_TITLE"


# instance fields
.field private activity:Landroid/app/Activity;

.field private bitmapUtil:Lcom/senseonics/util/BitmapUtil;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/senseonics/util/BitmapUtil;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/senseonics/util/Emailer;->activity:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/senseonics/util/Emailer;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/util/Emailer;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/senseonics/util/Emailer;->getInternalScreenshotPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getInternalScreenshotPath()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/senseonics/util/Emailer;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/screenshot.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public formShareEmail(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 7

    const-string v0, "Bitmap"

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Body:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/senseonics/util/Emailer;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    invoke-direct {p0}, Lcom/senseonics/util/Emailer;->getInternalScreenshotPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/senseonics/util/BitmapUtil;->saveBitmapOfView(Landroid/view/View;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 30
    iget-object p3, p0, Lcom/senseonics/util/Emailer;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/senseonics/util/Emailer$1;

    iget-object v2, p0, Lcom/senseonics/util/Emailer;->activity:Landroid/app/Activity;

    const-class v3, Lcom/senseonics/gen12androidapp/BitmapSenderActivity;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/util/Emailer$1;-><init>(Lcom/senseonics/util/Emailer;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
