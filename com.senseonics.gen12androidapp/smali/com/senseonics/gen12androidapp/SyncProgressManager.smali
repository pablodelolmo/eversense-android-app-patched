.class public Lcom/senseonics/gen12androidapp/SyncProgressManager;
.super Ljava/lang/Object;
.source "SyncProgressManager.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private layoutSyncBar:Landroid/widget/RelativeLayout;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressBarLayout:Landroid/widget/FrameLayout;

.field private progressBarShowing:Z

.field private syncModel:Lcom/senseonics/model/SyncModel;

.field private syncingProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarShowing:Z

    .line 39
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->layoutSyncBar:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_0

    const p1, 0x7f090211

    .line 43
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBar:Landroid/widget/ProgressBar;

    .line 45
    iput-object p3, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 46
    iput-object p4, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 47
    invoke-virtual {p4, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private addTopProgressBar()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 99
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->setContentViewWithWrapper(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 100
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->createTopProgressBarLayout()V

    .line 101
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    .line 102
    invoke-static {v2}, Lcom/senseonics/util/Utils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x30

    .line 103
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 104
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 105
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncingProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v2}, Lcom/senseonics/model/SyncModel;->getSyncingPercent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v1, 0x7f090009

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarShowing:Z

    return-void
.end method

.method private createTopProgressBarLayout()V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarLayout:Landroid/widget/FrameLayout;

    .line 161
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 163
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 166
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    .line 167
    invoke-static {v2}, Lcom/senseonics/util/Utils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 168
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    const v5, 0x1010078

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncingProgressBar:Landroid/widget/ProgressBar;

    .line 169
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncingProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    const v4, 0x7f080135

    invoke-static {v2, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncingProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 172
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 175
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 176
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 178
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    const v3, 0x7f0f0246

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 180
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 181
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    const v2, 0x106000b

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private finish()V
    .locals 1

    const/16 v0, 0x64

    .line 85
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->updateProgress(I)V

    .line 86
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->hideSyncBar()V

    return-void
.end method

.method private hideSyncBar()V
    .locals 2

    const/16 v0, 0x8

    .line 212
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->updateSyncBarVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private hideTopProgressBar()V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f090009

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 146
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 149
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x30

    .line 150
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 155
    iput-boolean v2, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBarShowing:Z

    return-void
.end method

.method private initSyncBar()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->layoutSyncBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->layoutSyncBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 198
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->layoutSyncBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->updateProgress(I)V

    :cond_0
    return-void
.end method

.method private setContentViewWithWrapper(I)Landroid/view/ViewGroup;
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 121
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 127
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p1, 0x30

    .line 128
    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const p1, 0x7f090005

    .line 129
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 130
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x7f090000

    .line 131
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 132
    invoke-virtual {v0, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-object v2
.end method

.method private showSyncBar()V
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->initSyncBar()V

    .line 207
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->updateSyncBarVisibility(I)V

    return-void
.end method

.method private updateProgress(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private updateSyncBarVisibility(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->layoutSyncBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->layoutSyncBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateSyncingProgress()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncingProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncingProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v1}, Lcom/senseonics/model/SyncModel;->getSyncingPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lcom/senseonics/events/SyncingProgressUpdateEvent;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->update()V

    return-void
.end method

.method public remove()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->hideSyncBar()V

    .line 76
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public update()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->finish()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->showSyncBar()V

    .line 57
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SyncProgressManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->getSyncingPercent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->updateProgress(I)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->finish()V

    :goto_0
    return-void
.end method
