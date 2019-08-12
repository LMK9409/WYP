package jp.co.info.ais.report.model;

import java.util.ArrayList;
import java.util.List;

public class MWorkReportExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public MWorkReportExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andReportIdIsNull() {
            addCriterion("report_id is null");
            return (Criteria) this;
        }

        public Criteria andReportIdIsNotNull() {
            addCriterion("report_id is not null");
            return (Criteria) this;
        }

        public Criteria andReportIdEqualTo(Integer value) {
            addCriterion("report_id =", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdNotEqualTo(Integer value) {
            addCriterion("report_id <>", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdGreaterThan(Integer value) {
            addCriterion("report_id >", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("report_id >=", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdLessThan(Integer value) {
            addCriterion("report_id <", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdLessThanOrEqualTo(Integer value) {
            addCriterion("report_id <=", value, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdIn(List<Integer> values) {
            addCriterion("report_id in", values, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdNotIn(List<Integer> values) {
            addCriterion("report_id not in", values, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdBetween(Integer value1, Integer value2) {
            addCriterion("report_id between", value1, value2, "reportId");
            return (Criteria) this;
        }

        public Criteria andReportIdNotBetween(Integer value1, Integer value2) {
            addCriterion("report_id not between", value1, value2, "reportId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(String value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(String value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(String value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(String value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(String value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLike(String value) {
            addCriterion("user_id like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotLike(String value) {
            addCriterion("user_id not like", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<String> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<String> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(String value1, String value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(String value1, String value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeIsNull() {
            addCriterion("report_start_time is null");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeIsNotNull() {
            addCriterion("report_start_time is not null");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeEqualTo(String value) {
            addCriterion("report_start_time =", value, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeNotEqualTo(String value) {
            addCriterion("report_start_time <>", value, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeGreaterThan(String value) {
            addCriterion("report_start_time >", value, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeGreaterThanOrEqualTo(String value) {
            addCriterion("report_start_time >=", value, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeLessThan(String value) {
            addCriterion("report_start_time <", value, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeLessThanOrEqualTo(String value) {
            addCriterion("report_start_time <=", value, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeLike(String value) {
            addCriterion("report_start_time like", value, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeNotLike(String value) {
            addCriterion("report_start_time not like", value, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeIn(List<String> values) {
            addCriterion("report_start_time in", values, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeNotIn(List<String> values) {
            addCriterion("report_start_time not in", values, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeBetween(String value1, String value2) {
            addCriterion("report_start_time between", value1, value2, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportStartTimeNotBetween(String value1, String value2) {
            addCriterion("report_start_time not between", value1, value2, "reportStartTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeIsNull() {
            addCriterion("report_end_time is null");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeIsNotNull() {
            addCriterion("report_end_time is not null");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeEqualTo(String value) {
            addCriterion("report_end_time =", value, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeNotEqualTo(String value) {
            addCriterion("report_end_time <>", value, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeGreaterThan(String value) {
            addCriterion("report_end_time >", value, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeGreaterThanOrEqualTo(String value) {
            addCriterion("report_end_time >=", value, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeLessThan(String value) {
            addCriterion("report_end_time <", value, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeLessThanOrEqualTo(String value) {
            addCriterion("report_end_time <=", value, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeLike(String value) {
            addCriterion("report_end_time like", value, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeNotLike(String value) {
            addCriterion("report_end_time not like", value, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeIn(List<String> values) {
            addCriterion("report_end_time in", values, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeNotIn(List<String> values) {
            addCriterion("report_end_time not in", values, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeBetween(String value1, String value2) {
            addCriterion("report_end_time between", value1, value2, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andReportEndTimeNotBetween(String value1, String value2) {
            addCriterion("report_end_time not between", value1, value2, "reportEndTime");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeIsNull() {
            addCriterion("working_type is null");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeIsNotNull() {
            addCriterion("working_type is not null");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeEqualTo(String value) {
            addCriterion("working_type =", value, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeNotEqualTo(String value) {
            addCriterion("working_type <>", value, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeGreaterThan(String value) {
            addCriterion("working_type >", value, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeGreaterThanOrEqualTo(String value) {
            addCriterion("working_type >=", value, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeLessThan(String value) {
            addCriterion("working_type <", value, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeLessThanOrEqualTo(String value) {
            addCriterion("working_type <=", value, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeLike(String value) {
            addCriterion("working_type like", value, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeNotLike(String value) {
            addCriterion("working_type not like", value, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeIn(List<String> values) {
            addCriterion("working_type in", values, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeNotIn(List<String> values) {
            addCriterion("working_type not in", values, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeBetween(String value1, String value2) {
            addCriterion("working_type between", value1, value2, "workingType");
            return (Criteria) this;
        }

        public Criteria andWorkingTypeNotBetween(String value1, String value2) {
            addCriterion("working_type not between", value1, value2, "workingType");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNull() {
            addCriterion("remarks is null");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNotNull() {
            addCriterion("remarks is not null");
            return (Criteria) this;
        }

        public Criteria andRemarksEqualTo(String value) {
            addCriterion("remarks =", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotEqualTo(String value) {
            addCriterion("remarks <>", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThan(String value) {
            addCriterion("remarks >", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThanOrEqualTo(String value) {
            addCriterion("remarks >=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThan(String value) {
            addCriterion("remarks <", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThanOrEqualTo(String value) {
            addCriterion("remarks <=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLike(String value) {
            addCriterion("remarks like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotLike(String value) {
            addCriterion("remarks not like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksIn(List<String> values) {
            addCriterion("remarks in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotIn(List<String> values) {
            addCriterion("remarks not in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksBetween(String value1, String value2) {
            addCriterion("remarks between", value1, value2, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotBetween(String value1, String value2) {
            addCriterion("remarks not between", value1, value2, "remarks");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.m_work_report
     *
     * @mbg.generated do_not_delete_during_merge Fri May 10 13:43:28 JST 2019
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.m_work_report
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}