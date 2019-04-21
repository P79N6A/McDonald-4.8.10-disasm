.class Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog$1;
.super Ljava/lang/Object;
.source "SignUpFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment;Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;

.field final synthetic val$this$0:Lcom/mcdonalds/app/customer/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;Lcom/mcdonalds/app/customer/SignUpFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog$1;->this$1:Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog$1;->val$this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const-string v1, "onClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1543
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 1545
    invoke-static {v5}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$1302(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 1546
    iget-object v1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog$1;->this$1:Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;

    iget-object v1, v1, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    const v2, 0x7f0906dc

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, "birthdateLabel":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$3300()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    .end local v0    # "birthdateLabel":Ljava/lang/String;
    :cond_0
    return-void
.end method
