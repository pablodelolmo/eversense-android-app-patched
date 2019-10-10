.class Lnet/simonvt/datepicker/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/datepicker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnet/simonvt/datepicker/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 873
    new-instance v0, Lnet/simonvt/datepicker/DatePicker$SavedState$1;

    invoke-direct {v0}, Lnet/simonvt/datepicker/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lnet/simonvt/datepicker/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 857
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mYear:I

    .line 859
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mMonth:I

    .line 860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mDay:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/simonvt/datepicker/DatePicker$1;)V
    .locals 0

    .line 835
    invoke-direct {p0, p1}, Lnet/simonvt/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0

    .line 847
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 848
    iput p2, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mYear:I

    .line 849
    iput p3, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mMonth:I

    .line 850
    iput p4, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mDay:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILnet/simonvt/datepicker/DatePicker$1;)V
    .locals 0

    .line 835
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/simonvt/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1100(Lnet/simonvt/datepicker/DatePicker$SavedState;)I
    .locals 0

    .line 835
    iget p0, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mYear:I

    return p0
.end method

.method static synthetic access$1200(Lnet/simonvt/datepicker/DatePicker$SavedState;)I
    .locals 0

    .line 835
    iget p0, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mMonth:I

    return p0
.end method

.method static synthetic access$1300(Lnet/simonvt/datepicker/DatePicker$SavedState;)I
    .locals 0

    .line 835
    iget p0, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mDay:I

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 865
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 866
    iget p2, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 867
    iget p2, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    iget p2, p0, Lnet/simonvt/datepicker/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
