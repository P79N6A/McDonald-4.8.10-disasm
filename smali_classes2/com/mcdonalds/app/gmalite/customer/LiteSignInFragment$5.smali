.class Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$5;
.super Ljava/lang/Object;
.source "LiteSignInFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$5;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$600(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V

    .line 301
    return-void
.end method
