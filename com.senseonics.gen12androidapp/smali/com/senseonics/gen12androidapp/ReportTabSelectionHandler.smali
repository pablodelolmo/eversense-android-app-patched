.class public Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;
.super Ljava/lang/Object;
.source "ReportTabSelectionHandler.java"


# static fields
.field public static final TAB1:I = 0x0

.field public static final TAB2:I = 0x1

.field public static final TAB3:I = 0x2

.field public static final TAB4:I = 0x3

.field public static final TAB5:I = 0x4


# instance fields
.field private final PREF_VALUE:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "REPORT_TAB_SELECTION"

    .line 9
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->PREF_VALUE:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getSelectedTab()I
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "REPORT_TAB_SELECTION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setSelectedTab(I)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "REPORT_TAB_SELECTION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
