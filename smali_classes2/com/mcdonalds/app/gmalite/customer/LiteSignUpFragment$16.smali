.class Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$16;
.super Ljava/lang/Object;
.source "LiteSignUpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    .line 982
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$16;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

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

    .line 986
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;

    invoke-direct {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;-><init>()V

    .line 987
    .local v0, "birthdateDialogFragment":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$16;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "birthdatePicker"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 988
    return-void
.end method
