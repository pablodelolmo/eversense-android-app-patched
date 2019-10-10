.class public Lcom/senseonics/util/AddEventMenuCreator;
.super Ljava/lang/Object;
.source "AddEventMenuCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addView(Landroid/widget/LinearLayout;Lcom/senseonics/view/DrawerMenu/MenuModel;Landroid/view/View$OnClickListener;Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0b006a

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090150

    .line 155
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    invoke-virtual {p1}, Lcom/senseonics/view/DrawerMenu/MenuModel;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f090295

    .line 158
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    invoke-virtual {p1}, Lcom/senseonics/view/DrawerMenu/MenuModel;->getMenuName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900dd

    .line 161
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 165
    invoke-virtual {p3, p1}, Landroid/view/View;->setClickable(Z)V

    .line 167
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080079

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 170
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f07004b

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p1, v0, p4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 171
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static createLogEventMenuDialog(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 10

    .line 30
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1000b7

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b0059

    .line 34
    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900a6

    .line 36
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v6, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const v8, 0x7f0f0105

    .line 40
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0800e6

    invoke-direct {v6, v7, v8, v9}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v6, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const v8, 0x7f0f0161

    .line 43
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0800ee

    invoke-direct {v6, v7, v8, v9}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v6, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const v8, 0x7f0f0130

    .line 45
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0800ec

    invoke-direct {v6, v7, v8, v9}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 44
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v6, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const v8, 0x7f0f010d

    .line 49
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0800ea

    invoke-direct {v6, v7, v8, v9}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v6, Lcom/senseonics/view/DrawerMenu/MenuModel;

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const v8, 0x7f0f00f1

    .line 52
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0800e4

    invoke-direct {v6, v7, v8, v9}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 51
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v6, Lcom/senseonics/view/DrawerMenu/MenuModel;

    const v7, 0x7f0f0078

    .line 56
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0800dc

    invoke-direct {v6, v2, v7, v8}, Lcom/senseonics/view/DrawerMenu/MenuModel;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 60
    sget v6, Lcom/senseonics/util/Utils;->ADD_EDIT_EVENT_MAX_DAYS_AGO:I

    neg-int v6, v6

    const/4 v7, 0x5

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {v6}, Lcom/senseonics/util/Utils;->sanitizeDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v6

    .line 64
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "startdate"

    .line 65
    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "currentdate"

    .line 66
    invoke-virtual {v8, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "enddate"

    .line 67
    invoke-virtual {v8, p1, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/4 p1, 0x0

    .line 70
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/view/DrawerMenu/MenuModel;

    new-instance v2, Lcom/senseonics/util/AddEventMenuCreator$1;

    invoke-direct {v2, v0, p0, v8}, Lcom/senseonics/util/AddEventMenuCreator$1;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {v4, p1, v2, v1, p0}, Lcom/senseonics/util/AddEventMenuCreator;->addView(Landroid/widget/LinearLayout;Lcom/senseonics/view/DrawerMenu/MenuModel;Landroid/view/View$OnClickListener;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 83
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    new-instance v6, Lcom/senseonics/util/AddEventMenuCreator$2;

    invoke-direct {v6, v0, p0, v8}, Lcom/senseonics/util/AddEventMenuCreator$2;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {v4, v2, v6, v1, p0}, Lcom/senseonics/util/AddEventMenuCreator;->addView(Landroid/widget/LinearLayout;Lcom/senseonics/view/DrawerMenu/MenuModel;Landroid/view/View$OnClickListener;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    const/4 v2, 0x2

    .line 96
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    new-instance v6, Lcom/senseonics/util/AddEventMenuCreator$3;

    invoke-direct {v6, v0, p0, v8}, Lcom/senseonics/util/AddEventMenuCreator$3;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {v4, v2, v6, v1, p0}, Lcom/senseonics/util/AddEventMenuCreator;->addView(Landroid/widget/LinearLayout;Lcom/senseonics/view/DrawerMenu/MenuModel;Landroid/view/View$OnClickListener;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    const/4 v2, 0x3

    .line 109
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    new-instance v6, Lcom/senseonics/util/AddEventMenuCreator$4;

    invoke-direct {v6, v0, p0, v8}, Lcom/senseonics/util/AddEventMenuCreator$4;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {v4, v2, v6, v1, p0}, Lcom/senseonics/util/AddEventMenuCreator;->addView(Landroid/widget/LinearLayout;Lcom/senseonics/view/DrawerMenu/MenuModel;Landroid/view/View$OnClickListener;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    const/4 v2, 0x4

    .line 122
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    new-instance v6, Lcom/senseonics/util/AddEventMenuCreator$5;

    invoke-direct {v6, v0, p0, v8}, Lcom/senseonics/util/AddEventMenuCreator$5;-><init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {v4, v2, v6, v1, p0}, Lcom/senseonics/util/AddEventMenuCreator;->addView(Landroid/widget/LinearLayout;Lcom/senseonics/view/DrawerMenu/MenuModel;Landroid/view/View$OnClickListener;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 134
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/view/DrawerMenu/MenuModel;

    new-instance v5, Lcom/senseonics/util/AddEventMenuCreator$6;

    invoke-direct {v5, v0}, Lcom/senseonics/util/AddEventMenuCreator$6;-><init>(Landroid/app/Dialog;)V

    invoke-static {v4, v2, v5, v1, p0}, Lcom/senseonics/util/AddEventMenuCreator;->addView(Landroid/widget/LinearLayout;Lcom/senseonics/view/DrawerMenu/MenuModel;Landroid/view/View$OnClickListener;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 143
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 146
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, -0x2

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
