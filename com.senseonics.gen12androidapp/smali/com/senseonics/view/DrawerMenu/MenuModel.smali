.class public Lcom/senseonics/view/DrawerMenu/MenuModel;
.super Ljava/lang/Object;
.source "MenuModel.java"


# instance fields
.field private active:Z

.field private drawableId:I

.field private menuName:Ljava/lang/String;

.field private menuType:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->menuType:Ljava/lang/Object;

    .line 12
    invoke-virtual {p0, p2}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setMenuName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p3}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setDrawableId(I)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/senseonics/view/DrawerMenu/MenuModel;->setActive(Z)V

    return-void
.end method


# virtual methods
.method public getDrawableId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->drawableId:I

    return v0
.end method

.method public getMenuName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->menuName:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuType()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->menuType:Ljava/lang/Object;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->active:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->active:Z

    return-void
.end method

.method public setDrawableId(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->drawableId:I

    return-void
.end method

.method public setMenuName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/senseonics/view/DrawerMenu/MenuModel;->menuName:Ljava/lang/String;

    return-void
.end method
