.class Lcom/mcdonalds/app/customer/TermsOfServiceFragment$1;
.super Ljava/lang/Object;
.source "TermsOfServiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$1;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

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

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$1;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I Agree"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "accept_privacy_terms"

    invoke-static {v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$1;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    const-class v1, Lcom/mcdonalds/app/customer/SignUpActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->startActivity(Ljava/lang/Class;)V

    .line 74
    return-void
.end method
