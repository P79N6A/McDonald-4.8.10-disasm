.class Lcom/mcdonalds/app/account/OfferPreferencesFragment$6;
.super Ljava/lang/Object;
.source "OfferPreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/OfferPreferencesFragment;->showDisableDialog(Landroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Landroid/widget/CompoundButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$6;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$6;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x1

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 365
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$6;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 366
    return-void
.end method
