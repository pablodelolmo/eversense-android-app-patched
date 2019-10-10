.class public Lcom/senseonics/view/DrawerMenu/DrawerItems;
.super Ljava/lang/Object;
.source "DrawerItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    }
.end annotation


# static fields
.field private static final ABOUT_KEY:Ljava/lang/String; = "drawer_menu_about"

.field private static final ALERTS_KEY:Ljava/lang/String; = "drawer_menu_alerts"

.field static final CALIBRATE_KEY:Ljava/lang/String; = "drawer_menu_calibrate"

.field private static final CONNECT_KEY:Ljava/lang/String; = "drawer_menu_connect"

.field private static final EVENTS_KEY:Ljava/lang/String; = "drawer_menu_events"

.field private static final GLUCOSE_KEY:Ljava/lang/String; = "drawer_menu_glucose"

.field static final PLACEMENT_KEY:Ljava/lang/String; = "drawer_menu_placement"

.field private static final REPORTS_KEY:Ljava/lang/String; = "drawer_menu_reports"

.field private static final SETTINGS_KEY:Ljava/lang/String; = "drawer_menu_settings"

.field private static final SHARE_KEY:Ljava/lang/String; = "drawer_menu_share"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMenuItems(Landroid/app/Activity;)Ljava/util/LinkedHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/senseonics/view/DrawerMenu/MenuModel;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "drawer_menu_glucose"

    .line 38
    new-instance v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v4, 0x7f0f0121

    .line 40
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800b3

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawer_menu_calibrate"

    .line 44
    new-instance v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CALIBRATE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v4, 0x7f0f0065

    .line 46
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08008c

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawer_menu_alerts"

    .line 50
    new-instance v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->NOTIFICATIONS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v4, 0x7f0f019b

    .line 52
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080123

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawer_menu_events"

    .line 56
    new-instance v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->EVENT_LOG:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v4, 0x7f0f00ef

    .line 58
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08005f

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawer_menu_reports"

    .line 62
    new-instance v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->STATISTICS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v4, 0x7f0f023b

    .line 64
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080171

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawer_menu_share"

    .line 68
    new-instance v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->SHARE_MY_DATA:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v4, 0x7f0f022a

    .line 70
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800f7

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawer_menu_placement"

    .line 74
    new-instance v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->PLACEMENT_GUIDE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v4, 0x7f0f01b6

    .line 76
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08012c

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawer_menu_connect"

    .line 80
    new-instance v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CONNECTION_STATUS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v4, 0x7f0f0088

    .line 82
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080093

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawer_menu_settings"

    .line 86
    new-instance v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->SETTINGS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v4, 0x7f0f0228

    .line 88
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080156

    invoke-direct {v2, v3, v4, v5}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawer_menu_about"

    .line 92
    new-instance v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v3, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->ABOUT:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const v4, 0x7f0f001d

    .line 94
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v4, 0x7f08005c

    invoke-direct {v2, v3, p0, v4}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
