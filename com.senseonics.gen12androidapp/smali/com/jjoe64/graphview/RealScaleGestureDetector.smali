.class public Lcom/jjoe64/graphview/RealScaleGestureDetector;
.super Landroid/view/ScaleGestureDetector;
.source "RealScaleGestureDetector.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jjoe64/graphview/ScaleGestureDetector;Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/jjoe64/graphview/RealScaleGestureDetector$1;

    invoke-direct {v0, p3, p2}, Lcom/jjoe64/graphview/RealScaleGestureDetector$1;-><init>(Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;Lcom/jjoe64/graphview/ScaleGestureDetector;)V

    invoke-direct {p0, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    return-void
.end method
