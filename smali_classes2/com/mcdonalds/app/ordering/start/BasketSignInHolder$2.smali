.class Lcom/mcdonalds/app/ordering/start/BasketSignInHolder$2;
.super Ljava/lang/Object;
.source "BasketSignInHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder$2;->this$0:Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onClick"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const-string v1, "/basket"

    const-string v2, "Sign In"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "NEED_TO_RETURN_TO_BASKET"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder$2;->this$0:Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;->access$000(Lcom/mcdonalds/app/ordering/start/BasketSignInHolder;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const-class v2, Lcom/mcdonalds/app/customer/SignInActivity;

    const-string v3, "signin"

    invoke-virtual {v1, v2, v3, v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
