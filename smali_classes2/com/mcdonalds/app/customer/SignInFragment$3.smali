.class Lcom/mcdonalds/app/customer/SignInFragment$3;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignInFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignInFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignInFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignInFragment;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignInFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignInFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start Registration"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideTermsAndConditionsView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v2, Lcom/mcdonalds/app/customer/SignUpActivity;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/customer/SignInFragment;->startActivity(Ljava/lang/Class;)V

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/SignInFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 314
    .local v0, "activity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/mcdonalds/app/MainActivity;

    if-nez v1, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 317
    :cond_0
    return-void

    .line 311
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignInFragment$3;->this$0:Lcom/mcdonalds/app/customer/SignInFragment;

    const-class v2, Lcom/mcdonalds/app/customer/TermsOfServiceActivity;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/customer/SignInFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method
