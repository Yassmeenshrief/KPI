using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Artexacta.App.KPI
{
    /// <summary>
    /// Summary description for KPIDataTime
    /// </summary>
    public class KPIDataTime
    {
        private int _year;
        private int _month;
        private int _day;
        private int _hour;
        private int _minute;

        public KPIDataTime()
        {
        }

        public KPIDataTime(int Year, int Month, int Day, int Hour, int Minute)
        {
            this._year = Year;
            this._month = Month;
            this._day = Day;
            this._hour = Hour;
            this._minute = Minute;
        }

        public int Year
        {
            get { return _year; }
            set { _year = value; }
        }

        public int Month
        {
            get { return _month; }
            set { _month = value; }
        }

        public int Day
        {
            get { return _day; }
            set { _day = value; }
        }

        public int Hour
        {
            get { return _hour; }
            set { _hour = value; }
        }

        public int Minute
        {
            get { return _minute; }
            set { _minute = value; }
        }

        public string TimeDescription
        {
            get
            {
                string dataTime = "";
                if (this.Year > 0)
                {
                    dataTime = this.Year.ToString() + " " + (this.Year == 1 ? Resources.DataTime.YearsValueSingle : Resources.DataTime.YearsValue);
                }
                if (this.Month > 0)
                {
                    dataTime = (string.IsNullOrEmpty(dataTime) ? "" : dataTime + ", ") + this.Month.ToString() + " " + (this.Month == 1 ? Resources.DataTime.MonthsValueSingle : Resources.DataTime.MonthsValue);
                }
                if (this.Day > 0)
                {
                    dataTime = (string.IsNullOrEmpty(dataTime) ? "" : dataTime + ", ") + this.Day.ToString() + " " + (this.Day == 1 ? Resources.DataTime.DaysValueSingle : Resources.DataTime.DaysValue);
                }
                if (this.Hour > 0)
                {
                    dataTime = (string.IsNullOrEmpty(dataTime) ? "" : dataTime + ", ") + this.Hour.ToString() + " " + (this.Hour == 1 ? Resources.DataTime.HoursValueSingle : Resources.DataTime.HoursValue);
                }
                if (this.Minute > 0)
                {
                    dataTime = (string.IsNullOrEmpty(dataTime) ? "" : dataTime + ", ") + this.Minute.ToString() + " " + (this.Minute == 1 ? Resources.DataTime.MinutesValueSingle : Resources.DataTime.MinutesValue);
                }
                return dataTime;
            }
        }

    }
}