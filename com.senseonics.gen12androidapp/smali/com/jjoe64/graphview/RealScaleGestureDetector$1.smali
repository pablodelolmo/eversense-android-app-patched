.class Lcom/jjoe64/graphview/RealScaleGestureDetector$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "RealScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/RealScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/jjoe64/graphview/ScaleGestureDetector;Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fakeListener:Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;

.field final synthetic val$fakeScaleGestureDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;Lcom/jjoe64/graphview/ScaleGestureDetector;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/jjoe64/graphview/RealScaleGestureDetector$1;->val$fakeListener:Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;

    iput-object p2, p0, Lcom/jjoe64/graphview/RealScaleGestureDetector$1;->val$fakeScaleGestureDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .line 32
    iget-object p1, p0, Lcom/jjoe64/graphview/RealScaleGestureDetector$1;->val$fakeListener:Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;

    iget-object v0, p0, Lcom/jjoe64/graphview/RealScaleGestureDetector$1;->val$fakeScaleGestureDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;

    invoke-interface {p1, v0}, Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Lcom/jjoe64/graphview/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method
