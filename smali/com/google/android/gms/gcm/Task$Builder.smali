.class public abstract Lcom/google/android/gms/gcm/Task$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field protected isPersisted:Z

.field protected zzaTx:Lcom/google/android/gms/gcm/zzc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/gcm/zzc;->zzaTm:Lcom/google/android/gms/gcm/zzc;

    iput-object v0, p0, Lcom/google/android/gms/gcm/Task$Builder;->zzaTx:Lcom/google/android/gms/gcm/zzc;

    return-void
.end method
