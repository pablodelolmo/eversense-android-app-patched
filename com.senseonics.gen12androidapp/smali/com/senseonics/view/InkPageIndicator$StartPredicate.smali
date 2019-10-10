.class public abstract Lcom/senseonics/view/InkPageIndicator$StartPredicate;
.super Ljava/lang/Object;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/InkPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "StartPredicate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/InkPageIndicator;

.field protected thresholdValue:F


# direct methods
.method public constructor <init>(Lcom/senseonics/view/InkPageIndicator;F)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$StartPredicate;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput p2, p0, Lcom/senseonics/view/InkPageIndicator$StartPredicate;->thresholdValue:F

    return-void
.end method


# virtual methods
.method abstract shouldStart(F)Z
.end method
