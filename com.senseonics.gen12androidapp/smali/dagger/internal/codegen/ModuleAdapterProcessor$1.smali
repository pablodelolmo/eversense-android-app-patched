.class synthetic Ldagger/internal/codegen/ModuleAdapterProcessor$1;
.super Ljava/lang/Object;
.source "ModuleAdapterProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/codegen/ModuleAdapterProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$dagger$Provides$Type:[I

.field static final synthetic $SwitchMap$javax$lang$model$element$ElementKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 332
    invoke-static {}, Ldagger/Provides$Type;->values()[Ldagger/Provides$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$dagger$Provides$Type:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$dagger$Provides$Type:[I

    sget-object v2, Ldagger/Provides$Type;->UNIQUE:Ldagger/Provides$Type;

    invoke-virtual {v2}, Ldagger/Provides$Type;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$dagger$Provides$Type:[I

    sget-object v2, Ldagger/Provides$Type;->SET:Ldagger/Provides$Type;

    invoke-virtual {v2}, Ldagger/Provides$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$dagger$Provides$Type:[I

    sget-object v2, Ldagger/Provides$Type;->SET_VALUES:Ldagger/Provides$Type;

    invoke-virtual {v2}, Ldagger/Provides$Type;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    :catch_2
    invoke-static {}, Ljavax/lang/model/element/ElementKind;->values()[Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    :try_start_3
    sget-object v1, Ldagger/internal/codegen/ModuleAdapterProcessor$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
