.class Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker$1;
.super Ljava/lang/Object;
.source "LiteSignUpFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;

    .prologue
    .line 933
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v7, 0x7f09049e

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v1, "onClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v6

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 936
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 938
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->access$1002(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 939
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;

    invoke-virtual {v1, v7}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "birthdateLabel":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    const-string v2, "birthDate"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/LoginManager;->fieldIsMandatory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;

    const v2, 0x7f0904a4

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;

    invoke-virtual {v4, v7}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 943
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->access$1100()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 944
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;

    invoke-static {v1, v5}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;->access$1202(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$BirthdatePicker;Z)Z

    .line 946
    .end local v0    # "birthdateLabel":Ljava/lang/String;
    :cond_1
    return-void
.end method
