.class Lcom/senseonics/gen12androidapp/DosingBaseActivity$PagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "DosingBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/DosingBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/DosingBaseActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/DosingBaseActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$PagerAdapter;->this$0:Lcom/senseonics/gen12androidapp/DosingBaseActivity;

    .line 32
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
