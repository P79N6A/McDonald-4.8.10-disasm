.class final Lcom/google/android/gms/auth/zzd$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/zzd$zza",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaaX:Landroid/accounts/Account;


# virtual methods
.method public synthetic zzas(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/zzd$4;->zzav(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public zzav(Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbn$zza;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/zzd$4;->zzaaX:Landroid/accounts/Account;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbn;->zza(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/zzd;->zzo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method
