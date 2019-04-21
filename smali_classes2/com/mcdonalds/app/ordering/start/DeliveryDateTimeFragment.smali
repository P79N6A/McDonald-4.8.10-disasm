.class public Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "DeliveryDateTimeFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field mDatePicker:Landroid/widget/DatePicker;

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method private initializeDate()V
    .locals 6

    .prologue
    const-string v2, "initializeDate"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 117
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 118
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v1

    .line 121
    .local v1, "date":Ljava/util/Date;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 123
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 124
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 125
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 123
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 127
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 128
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 129
    return-void

    .line 119
    .end local v1    # "date":Ljava/util/Date;
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method private onSave()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v1, "onSave"

    invoke-static {p0, v1, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mDatePicker:Landroid/widget/DatePicker;

    .line 85
    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mDatePicker:Landroid/widget/DatePicker;

    .line 86
    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mDatePicker:Landroid/widget/DatePicker;

    .line 87
    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 88
    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 89
    invoke-virtual {v5}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    .line 92
    .local v0, "deliveryTime":Ljava/util/GregorianCalendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 93
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 94
    .local v8, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "DATE_RETURN_KEY"

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v7}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 112
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setCancelable(Z)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f0905d4

    .line 107
    invoke-virtual {v1, v2, v9}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->setHasOptionsMenu(Z)V

    .line 37
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 38
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 63
    const v0, 0x7f120005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v1, 0x7f0400af

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f110298

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mDatePicker:Landroid/widget/DatePicker;

    .line 45
    const v1, 0x7f11029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 48
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->initializeDate()V

    .line 50
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const-string v1, "onOptionsItemSelected"

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 79
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 70
    :sswitch_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->onSave()V

    goto :goto_0

    .line 74
    :sswitch_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 75
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f110090 -> :sswitch_1
        0x7f110545 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 55
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/DeliveryDateTimeFragment;->mDatePicker:Landroid/widget/DatePicker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 58
    return-void
.end method
