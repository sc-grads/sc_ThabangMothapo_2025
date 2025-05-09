wifi_enabled: bool = True
has_electricity: bool = True
has_subscription: bool = True

requirements: list[bool] = [wifi_enabled, has_electricity, has_subscription]
if wifi_enabled and has_electricity and has_subscription:
    print('Connected to Internet')