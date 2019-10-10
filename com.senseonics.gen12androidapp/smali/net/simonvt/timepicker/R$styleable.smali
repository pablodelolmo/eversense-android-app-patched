.class public final Lnet/simonvt/timepicker/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/timepicker/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final NumberPicker:[I

.field public static final NumberPicker_internalLayout:I = 0x0

.field public static final NumberPicker_internalMaxHeight:I = 0x1

.field public static final NumberPicker_internalMaxWidth:I = 0x2

.field public static final NumberPicker_internalMinHeight:I = 0x3

.field public static final NumberPicker_internalMinWidth:I = 0x4

.field public static final NumberPicker_selectionDivider:I = 0x5

.field public static final NumberPicker_selectionDividerHeight:I = 0x6

.field public static final NumberPicker_selectionDividersDistance:I = 0x7

.field public static final NumberPicker_solidColor:I = 0x8

.field public static final NumberPicker_virtualButtonPressedDrawable:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 77
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/simonvt/timepicker/R$styleable;->NumberPicker:[I

    return-void

    :array_0
    .array-data 4
        0x7f0400fa
        0x7f0400fb
        0x7f0400fc
        0x7f0400fd
        0x7f0400fe
        0x7f040188
        0x7f040189
        0x7f04018a
        0x7f040190
        0x7f0401e5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
