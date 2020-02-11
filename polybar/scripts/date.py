from datetime import datetime
from babel.dates import format_datetime

date_now = datetime.now()
formated_date = format_datetime(date_now)

print(formated_date)
