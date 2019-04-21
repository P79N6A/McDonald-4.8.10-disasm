.class public Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;
.super Landroid/app/DatePickerDialog;
.source "SignUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/SignUpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonPickerDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/SignUpFragment;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/customer/SignUpFragment;Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 9
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/SignUpFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I
    .param p4, "listener"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p5, "year"    # I
    .param p6, "monthOfYear"    # I
    .param p7, "dayOfMonth"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;->this$0:Lcom/mcdonalds/app/customer/SignUpFragment;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    .line 1527
    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1529
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-static {p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->access$3200(Lcom/mcdonalds/app/customer/SignUpFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 1532
    invoke-virtual {p1}, Lcom/mcdonalds/app/customer/SignUpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "day"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1533
    .local v8, "daySpinnerId":I
    if-eqz v8, :cond_0

    .line 1534
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1535
    .local v7, "daySpinner":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 1536
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1540
    .end local v7    # "daySpinner":Landroid/view/View;
    :cond_0
    const/4 v0, -0x2

    const v1, 0x7f090145

    invoke-virtual {p1, v1}, Lcom/mcdonalds/app/customer/SignUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog$1;-><init>(Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;Lcom/mcdonalds/app/customer/SignUpFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1552
    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    const-string v0, "onDateChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1556
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 1558
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/SignUpFragment$MonPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1559
    return-void
.end method
