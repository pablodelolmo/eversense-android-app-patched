.class public final enum Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
.super Ljava/lang/Enum;
.source "DrawerItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/DrawerMenu/DrawerItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MENU_ITEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum ABOUT:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum CALIBRATE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum CONNECTION_STATUS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum EVENT_LOG:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum NOTIFICATIONS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum PLACEMENT_GUIDE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum SETTINGS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum SHARE_MY_DATA:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

.field public static final enum STATISTICS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 23
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 24
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "CALIBRATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CALIBRATE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 25
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "NOTIFICATIONS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->NOTIFICATIONS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 26
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "EVENT_LOG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->EVENT_LOG:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 27
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "STATISTICS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->STATISTICS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 28
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "SHARE_MY_DATA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->SHARE_MY_DATA:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 29
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "PLACEMENT_GUIDE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->PLACEMENT_GUIDE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 30
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "CONNECTION_STATUS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CONNECTION_STATUS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 31
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "SETTINGS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->SETTINGS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    .line 32
    new-instance v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const-string v1, "ABOUT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->ABOUT:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    const/16 v0, 0xa

    .line 22
    new-array v0, v0, [Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->HOME:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CALIBRATE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->NOTIFICATIONS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->EVENT_LOG:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v1, v0, v5

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->STATISTICS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v1, v0, v6

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->SHARE_MY_DATA:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v1, v0, v7

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->PLACEMENT_GUIDE:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v1, v0, v8

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->CONNECTION_STATUS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v1, v0, v9

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->SETTINGS:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v1, v0, v10

    sget-object v1, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->ABOUT:Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    aput-object v1, v0, v11

    sput-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->$VALUES:[Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    .locals 1

    .line 22
    const-class v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;
    .locals 1

    .line 22
    sget-object v0, Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->$VALUES:[Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    invoke-virtual {v0}, [Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/view/DrawerMenu/DrawerItems$MENU_ITEM;

    return-object v0
.end method
