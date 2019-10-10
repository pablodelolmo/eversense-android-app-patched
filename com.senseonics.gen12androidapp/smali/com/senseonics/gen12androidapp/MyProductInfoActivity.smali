.class public Lcom/senseonics/gen12androidapp/MyProductInfoActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "MyProductInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 21
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b007b

    .line 23
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->initializeLayout(I)Landroid/view/View;

    .line 25
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f01ce

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 31
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f0900ad

    .line 32
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const v3, 0x7f0f01cf

    .line 33
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@version"

    .line 34
    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 37
    sget-object v3, Lcom/senseonics/util/Utils;->VERSION_RELEASE_DATE:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/senseonics/util/Utils;->VERSION_RELEASE_DATE:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38
    sget-object v3, Lcom/senseonics/util/Utils;->VERSION_RELEASE_DATE:Ljava/lang/String;

    invoke-static {v3}, Lcom/senseonics/util/Utils;->getCalendarForMonthDayYearFromString(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 39
    invoke-static {v3}, Lcom/senseonics/util/Utils;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v3, 0x7f0f0193

    .line 42
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "@releasedate"

    .line 45
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "text/html; charset=UTF-8"

    .line 46
    invoke-virtual {v2, p1, v3, v0}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0902d0

    .line 47
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isFormattedTransmitterVersionXL()Z

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->getPartNumber(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090154

    .line 50
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 59
    const-class v0, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method
