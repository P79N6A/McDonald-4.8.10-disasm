.class Lcom/google/android/gms/tagmanager/zzdb$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzdb$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbrn:Lcom/google/android/gms/tagmanager/zzdb$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzdb$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdb$zzb$1;->zzbrn:Lcom/google/android/gms/tagmanager/zzdb$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdb;->zzKF()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zzb$1;->zzbrn:Lcom/google/android/gms/tagmanager/zzdb$zzb;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzdb$zzb;->zzbrm:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdb;->dispatch()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zzb$1;->zzbrn:Lcom/google/android/gms/tagmanager/zzdb$zzb;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzdb$zzb;->zzbrm:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzb(Lcom/google/android/gms/tagmanager/zzdb;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb$zzb$1;->zzbrn:Lcom/google/android/gms/tagmanager/zzdb$zzb;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdb$zzb$1;->zzbrn:Lcom/google/android/gms/tagmanager/zzdb$zzb;

    iget-object v1, v1, Lcom/google/android/gms/tagmanager/zzdb$zzb;->zzbrm:Lcom/google/android/gms/tagmanager/zzdb;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdb;->zzc(Lcom/google/android/gms/tagmanager/zzdb;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzdb$zzb;->zzv(J)V

    :cond_0
    return v4
.end method
