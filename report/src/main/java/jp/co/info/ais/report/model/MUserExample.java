package jp.co.info.ais.report.model;

import java.util.ArrayList;
import java.util.List;

public class MUserExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public MUserExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_user
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
     * This method corresponds to the database table public.m_user
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
     * This method corresponds to the database table public.m_user
     *
     * @mbg.generated Fri May 10 13:43:28 JST 2019
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table public.m_user
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
     * This class corresponds to the database table public.m_user
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

        public Criteria andAgeIsNull() {
            addCriterion("age is null");
            return (Criteria) this;
        }

        public Criteria andAgeIsNotNull() {
            addCriterion("age is not null");
            return (Criteria) this;
        }

        public Criteria andAgeEqualTo(Integer value) {
            addCriterion("age =", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeNotEqualTo(Integer value) {
            addCriterion("age <>", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeGreaterThan(Integer value) {
            addCriterion("age >", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("age >=", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeLessThan(Integer value) {
            addCriterion("age <", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeLessThanOrEqualTo(Integer value) {
            addCriterion("age <=", value, "age");
            return (Criteria) this;
        }

        public Criteria andAgeIn(List<Integer> values) {
            addCriterion("age in", values, "age");
            return (Criteria) this;
        }

        public Criteria andAgeNotIn(List<Integer> values) {
            addCriterion("age not in", values, "age");
            return (Criteria) this;
        }

        public Criteria andAgeBetween(Integer value1, Integer value2) {
            addCriterion("age between", value1, value2, "age");
            return (Criteria) this;
        }

        public Criteria andAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("age not between", value1, value2, "age");
            return (Criteria) this;
        }

        public Criteria andEmailIsNull() {
            addCriterion("email is null");
            return (Criteria) this;
        }

        public Criteria andEmailIsNotNull() {
            addCriterion("email is not null");
            return (Criteria) this;
        }

        public Criteria andEmailEqualTo(String value) {
            addCriterion("email =", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotEqualTo(String value) {
            addCriterion("email <>", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThan(String value) {
            addCriterion("email >", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThanOrEqualTo(String value) {
            addCriterion("email >=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThan(String value) {
            addCriterion("email <", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThanOrEqualTo(String value) {
            addCriterion("email <=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLike(String value) {
            addCriterion("email like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotLike(String value) {
            addCriterion("email not like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailIn(List<String> values) {
            addCriterion("email in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotIn(List<String> values) {
            addCriterion("email not in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailBetween(String value1, String value2) {
            addCriterion("email between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotBetween(String value1, String value2) {
            addCriterion("email not between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andEtc1IsNull() {
            addCriterion("etc_1 is null");
            return (Criteria) this;
        }

        public Criteria andEtc1IsNotNull() {
            addCriterion("etc_1 is not null");
            return (Criteria) this;
        }

        public Criteria andEtc1EqualTo(String value) {
            addCriterion("etc_1 =", value, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1NotEqualTo(String value) {
            addCriterion("etc_1 <>", value, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1GreaterThan(String value) {
            addCriterion("etc_1 >", value, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1GreaterThanOrEqualTo(String value) {
            addCriterion("etc_1 >=", value, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1LessThan(String value) {
            addCriterion("etc_1 <", value, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1LessThanOrEqualTo(String value) {
            addCriterion("etc_1 <=", value, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1Like(String value) {
            addCriterion("etc_1 like", value, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1NotLike(String value) {
            addCriterion("etc_1 not like", value, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1In(List<String> values) {
            addCriterion("etc_1 in", values, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1NotIn(List<String> values) {
            addCriterion("etc_1 not in", values, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1Between(String value1, String value2) {
            addCriterion("etc_1 between", value1, value2, "etc1");
            return (Criteria) this;
        }

        public Criteria andEtc1NotBetween(String value1, String value2) {
            addCriterion("etc_1 not between", value1, value2, "etc1");
            return (Criteria) this;
        }

        public Criteria andJobCategoryIsNull() {
            addCriterion("job_category is null");
            return (Criteria) this;
        }

        public Criteria andJobCategoryIsNotNull() {
            addCriterion("job_category is not null");
            return (Criteria) this;
        }

        public Criteria andJobCategoryEqualTo(Integer value) {
            addCriterion("job_category =", value, "jobCategory");
            return (Criteria) this;
        }

        public Criteria andJobCategoryNotEqualTo(Integer value) {
            addCriterion("job_category <>", value, "jobCategory");
            return (Criteria) this;
        }

        public Criteria andJobCategoryGreaterThan(Integer value) {
            addCriterion("job_category >", value, "jobCategory");
            return (Criteria) this;
        }

        public Criteria andJobCategoryGreaterThanOrEqualTo(Integer value) {
            addCriterion("job_category >=", value, "jobCategory");
            return (Criteria) this;
        }

        public Criteria andJobCategoryLessThan(Integer value) {
            addCriterion("job_category <", value, "jobCategory");
            return (Criteria) this;
        }

        public Criteria andJobCategoryLessThanOrEqualTo(Integer value) {
            addCriterion("job_category <=", value, "jobCategory");
            return (Criteria) this;
        }

        public Criteria andJobCategoryIn(List<Integer> values) {
            addCriterion("job_category in", values, "jobCategory");
            return (Criteria) this;
        }

        public Criteria andJobCategoryNotIn(List<Integer> values) {
            addCriterion("job_category not in", values, "jobCategory");
            return (Criteria) this;
        }

        public Criteria andJobCategoryBetween(Integer value1, Integer value2) {
            addCriterion("job_category between", value1, value2, "jobCategory");
            return (Criteria) this;
        }

        public Criteria andJobCategoryNotBetween(Integer value1, Integer value2) {
            addCriterion("job_category not between", value1, value2, "jobCategory");
            return (Criteria) this;
        }

        public Criteria andPasswdIsNull() {
            addCriterion("passwd is null");
            return (Criteria) this;
        }

        public Criteria andPasswdIsNotNull() {
            addCriterion("passwd is not null");
            return (Criteria) this;
        }

        public Criteria andPasswdEqualTo(String value) {
            addCriterion("passwd =", value, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdNotEqualTo(String value) {
            addCriterion("passwd <>", value, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdGreaterThan(String value) {
            addCriterion("passwd >", value, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdGreaterThanOrEqualTo(String value) {
            addCriterion("passwd >=", value, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdLessThan(String value) {
            addCriterion("passwd <", value, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdLessThanOrEqualTo(String value) {
            addCriterion("passwd <=", value, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdLike(String value) {
            addCriterion("passwd like", value, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdNotLike(String value) {
            addCriterion("passwd not like", value, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdIn(List<String> values) {
            addCriterion("passwd in", values, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdNotIn(List<String> values) {
            addCriterion("passwd not in", values, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdBetween(String value1, String value2) {
            addCriterion("passwd between", value1, value2, "passwd");
            return (Criteria) this;
        }

        public Criteria andPasswdNotBetween(String value1, String value2) {
            addCriterion("passwd not between", value1, value2, "passwd");
            return (Criteria) this;
        }

        public Criteria andSexIsNull() {
            addCriterion("sex is null");
            return (Criteria) this;
        }

        public Criteria andSexIsNotNull() {
            addCriterion("sex is not null");
            return (Criteria) this;
        }

        public Criteria andSexEqualTo(Integer value) {
            addCriterion("sex =", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotEqualTo(Integer value) {
            addCriterion("sex <>", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThan(Integer value) {
            addCriterion("sex >", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThanOrEqualTo(Integer value) {
            addCriterion("sex >=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThan(Integer value) {
            addCriterion("sex <", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThanOrEqualTo(Integer value) {
            addCriterion("sex <=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexIn(List<Integer> values) {
            addCriterion("sex in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotIn(List<Integer> values) {
            addCriterion("sex not in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexBetween(Integer value1, Integer value2) {
            addCriterion("sex between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotBetween(Integer value1, Integer value2) {
            addCriterion("sex not between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andTonNumIsNull() {
            addCriterion("ton_num is null");
            return (Criteria) this;
        }

        public Criteria andTonNumIsNotNull() {
            addCriterion("ton_num is not null");
            return (Criteria) this;
        }

        public Criteria andTonNumEqualTo(Integer value) {
            addCriterion("ton_num =", value, "tonNum");
            return (Criteria) this;
        }

        public Criteria andTonNumNotEqualTo(Integer value) {
            addCriterion("ton_num <>", value, "tonNum");
            return (Criteria) this;
        }

        public Criteria andTonNumGreaterThan(Integer value) {
            addCriterion("ton_num >", value, "tonNum");
            return (Criteria) this;
        }

        public Criteria andTonNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("ton_num >=", value, "tonNum");
            return (Criteria) this;
        }

        public Criteria andTonNumLessThan(Integer value) {
            addCriterion("ton_num <", value, "tonNum");
            return (Criteria) this;
        }

        public Criteria andTonNumLessThanOrEqualTo(Integer value) {
            addCriterion("ton_num <=", value, "tonNum");
            return (Criteria) this;
        }

        public Criteria andTonNumIn(List<Integer> values) {
            addCriterion("ton_num in", values, "tonNum");
            return (Criteria) this;
        }

        public Criteria andTonNumNotIn(List<Integer> values) {
            addCriterion("ton_num not in", values, "tonNum");
            return (Criteria) this;
        }

        public Criteria andTonNumBetween(Integer value1, Integer value2) {
            addCriterion("ton_num between", value1, value2, "tonNum");
            return (Criteria) this;
        }

        public Criteria andTonNumNotBetween(Integer value1, Integer value2) {
            addCriterion("ton_num not between", value1, value2, "tonNum");
            return (Criteria) this;
        }

        public Criteria andVesselNameIsNull() {
            addCriterion("vessel_name is null");
            return (Criteria) this;
        }

        public Criteria andVesselNameIsNotNull() {
            addCriterion("vessel_name is not null");
            return (Criteria) this;
        }

        public Criteria andVesselNameEqualTo(String value) {
            addCriterion("vessel_name =", value, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameNotEqualTo(String value) {
            addCriterion("vessel_name <>", value, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameGreaterThan(String value) {
            addCriterion("vessel_name >", value, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameGreaterThanOrEqualTo(String value) {
            addCriterion("vessel_name >=", value, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameLessThan(String value) {
            addCriterion("vessel_name <", value, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameLessThanOrEqualTo(String value) {
            addCriterion("vessel_name <=", value, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameLike(String value) {
            addCriterion("vessel_name like", value, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameNotLike(String value) {
            addCriterion("vessel_name not like", value, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameIn(List<String> values) {
            addCriterion("vessel_name in", values, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameNotIn(List<String> values) {
            addCriterion("vessel_name not in", values, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameBetween(String value1, String value2) {
            addCriterion("vessel_name between", value1, value2, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselNameNotBetween(String value1, String value2) {
            addCriterion("vessel_name not between", value1, value2, "vesselName");
            return (Criteria) this;
        }

        public Criteria andVesselTypeIsNull() {
            addCriterion("vessel_type is null");
            return (Criteria) this;
        }

        public Criteria andVesselTypeIsNotNull() {
            addCriterion("vessel_type is not null");
            return (Criteria) this;
        }

        public Criteria andVesselTypeEqualTo(Integer value) {
            addCriterion("vessel_type =", value, "vesselType");
            return (Criteria) this;
        }

        public Criteria andVesselTypeNotEqualTo(Integer value) {
            addCriterion("vessel_type <>", value, "vesselType");
            return (Criteria) this;
        }

        public Criteria andVesselTypeGreaterThan(Integer value) {
            addCriterion("vessel_type >", value, "vesselType");
            return (Criteria) this;
        }

        public Criteria andVesselTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("vessel_type >=", value, "vesselType");
            return (Criteria) this;
        }

        public Criteria andVesselTypeLessThan(Integer value) {
            addCriterion("vessel_type <", value, "vesselType");
            return (Criteria) this;
        }

        public Criteria andVesselTypeLessThanOrEqualTo(Integer value) {
            addCriterion("vessel_type <=", value, "vesselType");
            return (Criteria) this;
        }

        public Criteria andVesselTypeIn(List<Integer> values) {
            addCriterion("vessel_type in", values, "vesselType");
            return (Criteria) this;
        }

        public Criteria andVesselTypeNotIn(List<Integer> values) {
            addCriterion("vessel_type not in", values, "vesselType");
            return (Criteria) this;
        }

        public Criteria andVesselTypeBetween(Integer value1, Integer value2) {
            addCriterion("vessel_type between", value1, value2, "vesselType");
            return (Criteria) this;
        }

        public Criteria andVesselTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("vessel_type not between", value1, value2, "vesselType");
            return (Criteria) this;
        }

        public Criteria andEtc2IsNull() {
            addCriterion("etc_2 is null");
            return (Criteria) this;
        }

        public Criteria andEtc2IsNotNull() {
            addCriterion("etc_2 is not null");
            return (Criteria) this;
        }

        public Criteria andEtc2EqualTo(String value) {
            addCriterion("etc_2 =", value, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2NotEqualTo(String value) {
            addCriterion("etc_2 <>", value, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2GreaterThan(String value) {
            addCriterion("etc_2 >", value, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2GreaterThanOrEqualTo(String value) {
            addCriterion("etc_2 >=", value, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2LessThan(String value) {
            addCriterion("etc_2 <", value, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2LessThanOrEqualTo(String value) {
            addCriterion("etc_2 <=", value, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2Like(String value) {
            addCriterion("etc_2 like", value, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2NotLike(String value) {
            addCriterion("etc_2 not like", value, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2In(List<String> values) {
            addCriterion("etc_2 in", values, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2NotIn(List<String> values) {
            addCriterion("etc_2 not in", values, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2Between(String value1, String value2) {
            addCriterion("etc_2 between", value1, value2, "etc2");
            return (Criteria) this;
        }

        public Criteria andEtc2NotBetween(String value1, String value2) {
            addCriterion("etc_2 not between", value1, value2, "etc2");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table public.m_user
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
     * This class corresponds to the database table public.m_user
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