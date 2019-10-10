.class public Lcom/jjoe64/graphview/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# instance fields
.field private method_getScaleFactor:Ljava/lang/reflect/Method;

.field private method_isInProgress:Ljava/lang/reflect/Method;

.field private method_onTouchEvent:Ljava/lang/reflect/Method;

.field private realScaleGestureDetector:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;)V
    .locals 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "android.view.ScaleGestureDetector"

    .line 46
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.jjoe64.graphview.RealScaleGestureDetector"

    .line 49
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getScaleFactor"

    const/4 v2, 0x0

    .line 50
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->method_getScaleFactor:Ljava/lang/reflect/Method;

    const-string v1, "isInProgress"

    .line 51
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->method_isInProgress:Ljava/lang/reflect/Method;

    const-string v1, "onTouchEvent"

    const/4 v3, 0x1

    .line 52
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->method_onTouchEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    .line 55
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v3

    const-class v5, Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p0, v1, v3

    aput-object p2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->realScaleGestureDetector:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "com.jjoe64.graphview"

    const-string v0, "*** WARNING *** No scaling available for graphs. Exception:"

    .line 59
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getScaleFactor()D
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->method_getScaleFactor:Ljava/lang/reflect/Method;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->method_getScaleFactor:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->realScaleGestureDetector:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-double v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v1

    :cond_0
    return-wide v1
.end method

.method public isInProgress()Z
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->method_getScaleFactor:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->method_isInProgress:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->realScaleGestureDetector:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    :cond_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->method_onTouchEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->method_onTouchEvent:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/jjoe64/graphview/ScaleGestureDetector;->realScaleGestureDetector:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
