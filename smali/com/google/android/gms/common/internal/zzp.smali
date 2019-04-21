.class public final Lcom/google/android/gms/common/internal/zzp;
.super Ljava/lang/Object;


# static fields
.field public static final zzase:I

.field private static final zzasf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, " PII_LOG"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x17

    sput v0, Lcom/google/android/gms/common/internal/zzp;->zzase:I

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/internal/zzp;->zzasf:Ljava/lang/String;

    return-void
.end method
