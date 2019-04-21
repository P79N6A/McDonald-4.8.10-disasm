.class public Lcom/google/android/gms/gcm/OneoffTask$Builder;
.super Lcom/google/android/gms/gcm/Task$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/OneoffTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzaTi:J

.field private zzaTj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/gcm/Task$Builder;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->zzaTi:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->zzaTj:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/OneoffTask$Builder;->isPersisted:Z

    return-void
.end method
