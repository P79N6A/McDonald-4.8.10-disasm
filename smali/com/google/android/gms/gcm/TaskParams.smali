.class public Lcom/google/android/gms/gcm/TaskParams;
.super Ljava/lang/Object;


# instance fields
.field private final extras:Landroid/os/Bundle;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/gcm/TaskParams;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/gcm/TaskParams;->extras:Landroid/os/Bundle;

    return-void
.end method