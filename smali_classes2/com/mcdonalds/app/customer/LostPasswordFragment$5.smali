.class Lcom/mcdonalds/app/customer/LostPasswordFragment$5;
.super Ljava/lang/Object;
.source "LostPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/LostPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/LostPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/LostPasswordFragment;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$5;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

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

    .line 138
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$5;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start Registration"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideTermsAndConditionsView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$5;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    const-class v1, Lcom/mcdonalds/app/customer/SignUpActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->startActivity(Ljava/lang/Class;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$5;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    const-class v1, Lcom/mcdonalds/app/customer/TermsOfServiceActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method
