.class Lcom/mcdonalds/app/social/SocialLoginFragment$1;
.super Ljava/lang/Object;
.source "SocialLoginFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/social/SocialLoginFragment;->onGooglePlusSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/social/SocialLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$1;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(ILjava/lang/String;I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantResult"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "onRequestPermissionsResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    if-nez p3, :cond_0

    .line 403
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$1;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$002(Lcom/mcdonalds/app/social/SocialLoginFragment;Z)Z

    .line 404
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$1;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$100(Lcom/mcdonalds/app/social/SocialLoginFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$1;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$100(Lcom/mcdonalds/app/social/SocialLoginFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$1;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$200(Lcom/mcdonalds/app/social/SocialLoginFragment;)V

    goto :goto_0
.end method
