.class public Lcom/senseonics/graph/DateView;
.super Landroid/view/View;
.source "DateView.java"


# instance fields
.field private bitmapHeight:I

.field private bitmapWidth:I

.field private leftArrow:Landroid/graphics/Bitmap;

.field private myPaint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;

.field private rightArrow:Landroid/graphics/Bitmap;

.field private text:Ljava/lang/String;

.field private textHeight:F

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 57
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    mul-int/lit8 v0, p3, 0x3

    .line 59
    div-int/lit8 v0, v0, 0x2

    .line 60
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getTop()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    .line 62
    iget-object p2, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f070058

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p2, "12PMg"

    .line 64
    iget-object p3, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    invoke-static {p2, p3}, Lcom/senseonics/graph/util/GraphUtils;->measureText(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/senseonics/graph/DateView;->textHeight:F

    const-string p2, " **** text height"

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/graph/DateView;->textHeight:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f080104

    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080140

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/DateView;->rightArrow:Landroid/graphics/Bitmap;

    .line 72
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    .line 73
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    .line 74
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 76
    iget p2, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    if-le p2, p1, :cond_0

    .line 77
    iget p2, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    div-int/2addr p2, p1

    int-to-float p2, p2

    .line 78
    iget p3, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    int-to-float p3, p3

    mul-float p3, p3, p2

    float-to-int p2, p3

    .line 79
    iget-object p3, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    invoke-static {p3, p2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    .line 81
    iget-object p3, p0, Lcom/senseonics/graph/DateView;->rightArrow:Landroid/graphics/Bitmap;

    invoke-static {p3, p2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/senseonics/graph/DateView;->rightArrow:Landroid/graphics/Bitmap;

    .line 84
    iput p1, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    .line 85
    iput p2, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    .line 88
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/senseonics/graph/DateView;->myPaint:Landroid/graphics/Paint;

    .line 89
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->myPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->myPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->myPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 96
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/senseonics/graph/DateView;->textHeight:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f025f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->rightArrow:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    .line 102
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    .line 101
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    const-string v0, "E dd MMMM, yyyy"

    .line 107
    sget-object v1, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MMM dd, yyyy"

    .line 108
    sget-object v2, Lcom/senseonics/util/Utils;->startDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    .line 113
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    .line 112
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/senseonics/graph/DateView;->myPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 2

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 125
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    const-string v0, "E dd MMMM, yyyy "

    .line 126
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f025f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->invalidate()V

    return-void
.end method

.method public setDate(Ljava/util/Date;Ljava/util/Date;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string p1, "MMM dd, yyyy "

    .line 144
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 143
    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 149
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    const-string v0, "MMM dd, yyyy "

    .line 150
    invoke-static {v0, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 153
    invoke-virtual {p2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f025f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->invalidate()V

    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Lcom/senseonics/graph/DateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
