CREATE TABLE act_adm_databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);

--
-- TOC entry 257 (class 1259 OID 17375)
-- Name: act_adm_databasechangeloglock; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_adm_databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


--
-- TOC entry 259 (class 1259 OID 17386)
-- Name: act_adm_server_config; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_adm_server_config (
    id_ character varying(255) NOT NULL,
    name_ character varying(50),
    description_ character varying(255),
    server_address_ character varying(100),
    port_ integer,
    context_root_ character varying(100),
    rest_root_ character varying(100),
    user_name_ character varying(100),
    password_ character varying(100),
    endpoint_type_ integer,
    tenant_id_ character varying(50)
);



--
-- TOC entry 256 (class 1259 OID 17359)
-- Name: act_app_appdef; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_app_appdef (
    id_ character varying(255) NOT NULL,
    rev_ integer NOT NULL,
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    category_ character varying(255),
    deployment_id_ character varying(255),
    resource_name_ character varying(4000),
    description_ character varying(4000),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 253 (class 1259 OID 17330)
-- Name: act_app_databasechangelog; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_app_databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);



--
-- TOC entry 252 (class 1259 OID 17325)
-- Name: act_app_databasechangeloglock; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_app_databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);



--
-- TOC entry 254 (class 1259 OID 17336)
-- Name: act_app_deployment; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_app_deployment (
    id_ character varying(255) NOT NULL,
    name_ character varying(255),
    category_ character varying(255),
    key_ character varying(255),
    deploy_time_ timestamp without time zone,
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 255 (class 1259 OID 17345)
-- Name: act_app_deployment_resource; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_app_deployment_resource (
    id_ character varying(255) NOT NULL,
    name_ character varying(255),
    deployment_id_ character varying(255),
    resource_bytes_ bytea
);



--
-- TOC entry 244 (class 1259 OID 17181)
-- Name: act_cmmn_casedef; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_casedef (
    id_ character varying(255) NOT NULL,
    rev_ integer NOT NULL,
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    category_ character varying(255),
    deployment_id_ character varying(255),
    resource_name_ character varying(4000),
    description_ character varying(4000),
    has_graphical_notation_ boolean,
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    dgrm_resource_name_ character varying(4000),
    has_start_form_key_ boolean
);



--
-- TOC entry 241 (class 1259 OID 17152)
-- Name: act_cmmn_databasechangelog; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);



--
-- TOC entry 240 (class 1259 OID 17147)
-- Name: act_cmmn_databasechangeloglock; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);



--
-- TOC entry 242 (class 1259 OID 17158)
-- Name: act_cmmn_deployment; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_deployment (
    id_ character varying(255) NOT NULL,
    name_ character varying(255),
    category_ character varying(255),
    key_ character varying(255),
    deploy_time_ timestamp without time zone,
    parent_deployment_id_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 243 (class 1259 OID 17167)
-- Name: act_cmmn_deployment_resource; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_deployment_resource (
    id_ character varying(255) NOT NULL,
    name_ character varying(255),
    deployment_id_ character varying(255),
    resource_bytes_ bytea,
    generated_ boolean
);



--
-- TOC entry 249 (class 1259 OID 17279)
-- Name: act_cmmn_hi_case_inst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_hi_case_inst (
    id_ character varying(255) NOT NULL,
    rev_ integer NOT NULL,
    business_key_ character varying(255),
    name_ character varying(255),
    parent_id_ character varying(255),
    case_def_id_ character varying(255),
    state_ character varying(255),
    start_time_ timestamp without time zone,
    end_time_ timestamp without time zone,
    start_user_id_ character varying(255),
    callback_id_ character varying(255),
    callback_type_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 250 (class 1259 OID 17288)
-- Name: act_cmmn_hi_mil_inst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_hi_mil_inst (
    id_ character varying(255) NOT NULL,
    rev_ integer NOT NULL,
    name_ character varying(255) NOT NULL,
    time_stamp_ timestamp without time zone NOT NULL,
    case_inst_id_ character varying(255) NOT NULL,
    case_def_id_ character varying(255) NOT NULL,
    element_id_ character varying(255) NOT NULL,
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 251 (class 1259 OID 17297)
-- Name: act_cmmn_hi_plan_item_inst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_hi_plan_item_inst (
    id_ character varying(255) NOT NULL,
    rev_ integer NOT NULL,
    name_ character varying(255),
    state_ character varying(255),
    case_def_id_ character varying(255),
    case_inst_id_ character varying(255),
    stage_inst_id_ character varying(255),
    is_stage_ boolean,
    element_id_ character varying(255),
    item_definition_id_ character varying(255),
    item_definition_type_ character varying(255),
    create_time_ timestamp without time zone,
    last_available_time_ timestamp without time zone,
    last_enabled_time_ timestamp without time zone,
    last_disabled_time_ timestamp without time zone,
    last_started_time_ timestamp without time zone,
    last_suspended_time_ timestamp without time zone,
    completed_time_ timestamp without time zone,
    occurred_time_ timestamp without time zone,
    terminated_time_ timestamp without time zone,
    exit_time_ timestamp without time zone,
    ended_time_ timestamp without time zone,
    last_updated_time_ timestamp without time zone,
    start_user_id_ character varying(255),
    reference_id_ character varying(255),
    reference_type_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    entry_criterion_id_ character varying(255),
    exit_criterion_id_ character varying(255)
);



--
-- TOC entry 245 (class 1259 OID 17196)
-- Name: act_cmmn_ru_case_inst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_ru_case_inst (
    id_ character varying(255) NOT NULL,
    rev_ integer NOT NULL,
    business_key_ character varying(255),
    name_ character varying(255),
    parent_id_ character varying(255),
    case_def_id_ character varying(255),
    state_ character varying(255),
    start_time_ timestamp without time zone,
    start_user_id_ character varying(255),
    callback_id_ character varying(255),
    callback_type_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    lock_time_ timestamp without time zone,
    is_completeable_ boolean
);



--
-- TOC entry 248 (class 1259 OID 17259)
-- Name: act_cmmn_ru_mil_inst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_ru_mil_inst (
    id_ character varying(255) NOT NULL,
    name_ character varying(255) NOT NULL,
    time_stamp_ timestamp without time zone NOT NULL,
    case_inst_id_ character varying(255) NOT NULL,
    case_def_id_ character varying(255) NOT NULL,
    element_id_ character varying(255) NOT NULL,
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 246 (class 1259 OID 17212)
-- Name: act_cmmn_ru_plan_item_inst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_ru_plan_item_inst (
    id_ character varying(255) NOT NULL,
    rev_ integer NOT NULL,
    case_def_id_ character varying(255),
    case_inst_id_ character varying(255),
    stage_inst_id_ character varying(255),
    is_stage_ boolean,
    element_id_ character varying(255),
    name_ character varying(255),
    state_ character varying(255),
    create_time_ timestamp without time zone,
    start_user_id_ character varying(255),
    reference_id_ character varying(255),
    reference_type_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    item_definition_id_ character varying(255),
    item_definition_type_ character varying(255),
    is_completeable_ boolean,
    is_count_enabled_ boolean,
    var_count_ integer,
    sentry_part_inst_count_ integer,
    last_available_time_ timestamp without time zone,
    last_enabled_time_ timestamp without time zone,
    last_disabled_time_ timestamp without time zone,
    last_started_time_ timestamp without time zone,
    last_suspended_time_ timestamp without time zone,
    completed_time_ timestamp without time zone,
    occurred_time_ timestamp without time zone,
    terminated_time_ timestamp without time zone,
    exit_time_ timestamp without time zone,
    ended_time_ timestamp without time zone,
    entry_criterion_id_ character varying(255),
    exit_criterion_id_ character varying(255)
);



--
-- TOC entry 247 (class 1259 OID 17233)
-- Name: act_cmmn_ru_sentry_part_inst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_cmmn_ru_sentry_part_inst (
    id_ character varying(255) NOT NULL,
    rev_ integer NOT NULL,
    case_def_id_ character varying(255),
    case_inst_id_ character varying(255),
    plan_item_inst_id_ character varying(255),
    on_part_id_ character varying(255),
    if_part_id_ character varying(255),
    time_stamp_ timestamp without time zone
);



--
-- TOC entry 239 (class 1259 OID 17134)
-- Name: act_co_content_item; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_co_content_item (
    id_ character varying(255) NOT NULL,
    name_ character varying(255) NOT NULL,
    mime_type_ character varying(255),
    task_id_ character varying(255),
    proc_inst_id_ character varying(255),
    content_store_id_ character varying(255),
    content_store_name_ character varying(255),
    field_ character varying(400),
    content_available_ boolean DEFAULT false,
    created_ timestamp without time zone,
    created_by_ character varying(255),
    last_modified_ timestamp without time zone,
    last_modified_by_ character varying(255),
    content_size_ bigint DEFAULT 0,
    tenant_id_ character varying(255),
    scope_id_ character varying(255),
    scope_type_ character varying(255)
);



--
-- TOC entry 238 (class 1259 OID 17128)
-- Name: act_co_databasechangelog; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_co_databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);



--
-- TOC entry 237 (class 1259 OID 17123)
-- Name: act_co_databasechangeloglock; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_co_databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);



--
-- TOC entry 261 (class 1259 OID 17399)
-- Name: act_de_databasechangelog; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_de_databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);



--
-- TOC entry 260 (class 1259 OID 17394)
-- Name: act_de_databasechangeloglock; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_de_databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);



--
-- TOC entry 262 (class 1259 OID 17405)
-- Name: act_de_model; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_de_model (
    id character varying(255) NOT NULL,
    name character varying(400) NOT NULL,
    model_key character varying(400) NOT NULL,
    description character varying(4000),
    model_comment character varying(4000),
    created timestamp without time zone,
    created_by character varying(255),
    last_updated timestamp without time zone,
    last_updated_by character varying(255),
    version integer,
    model_editor_json text,
    thumbnail bytea,
    model_type integer,
    tenant_id character varying(255)
);



--
-- TOC entry 263 (class 1259 OID 17414)
-- Name: act_de_model_history; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_de_model_history (
    id character varying(255) NOT NULL,
    name character varying(400) NOT NULL,
    model_key character varying(400) NOT NULL,
    description character varying(4000),
    model_comment character varying(4000),
    created timestamp without time zone,
    created_by character varying(255),
    last_updated timestamp without time zone,
    last_updated_by character varying(255),
    removal_date timestamp without time zone,
    version integer,
    model_editor_json text,
    model_id character varying(255) NOT NULL,
    model_type integer,
    tenant_id character varying(255)
);



--
-- TOC entry 264 (class 1259 OID 17423)
-- Name: act_de_model_relation; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_de_model_relation (
    id character varying(255) NOT NULL,
    parent_model_id character varying(255),
    model_id character varying(255),
    relation_type character varying(255)
);



--
-- TOC entry 226 (class 1259 OID 17039)
-- Name: act_dmn_databasechangelog; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_dmn_databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);



--
-- TOC entry 225 (class 1259 OID 17034)
-- Name: act_dmn_databasechangeloglock; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_dmn_databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);



--
-- TOC entry 229 (class 1259 OID 17061)
-- Name: act_dmn_decision_table; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_dmn_decision_table (
    id_ character varying(255) NOT NULL,
    name_ character varying(255),
    version_ integer,
    key_ character varying(255),
    category_ character varying(255),
    deployment_id_ character varying(255),
    tenant_id_ character varying(255),
    resource_name_ character varying(255),
    description_ character varying(255)
);



--
-- TOC entry 227 (class 1259 OID 17045)
-- Name: act_dmn_deployment; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_dmn_deployment (
    id_ character varying(255) NOT NULL,
    name_ character varying(255),
    category_ character varying(255),
    deploy_time_ timestamp without time zone,
    tenant_id_ character varying(255),
    parent_deployment_id_ character varying(255)
);



--
-- TOC entry 228 (class 1259 OID 17053)
-- Name: act_dmn_deployment_resource; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_dmn_deployment_resource (
    id_ character varying(255) NOT NULL,
    name_ character varying(255),
    deployment_id_ character varying(255),
    resource_bytes_ bytea
);



--
-- TOC entry 230 (class 1259 OID 17069)
-- Name: act_dmn_hi_decision_execution; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_dmn_hi_decision_execution (
    id_ character varying(255) NOT NULL,
    decision_definition_id_ character varying(255),
    deployment_id_ character varying(255),
    start_time_ timestamp without time zone,
    end_time_ timestamp without time zone,
    instance_id_ character varying(255),
    execution_id_ character varying(255),
    activity_id_ character varying(255),
    failed_ boolean DEFAULT false,
    tenant_id_ character varying(255),
    execution_json_ text,
    scope_type_ character varying(255)
);



--
-- TOC entry 217 (class 1259 OID 16746)
-- Name: act_evt_log; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_evt_log (
    log_nr_ integer NOT NULL,
    type_ character varying(64),
    proc_def_id_ character varying(64),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    task_id_ character varying(64),
    time_stamp_ timestamp without time zone NOT NULL,
    user_id_ character varying(255),
    data_ bytea,
    lock_owner_ character varying(255),
    lock_time_ timestamp without time zone,
    is_processed_ smallint DEFAULT 0
);



--
-- TOC entry 216 (class 1259 OID 16744)
-- Name: act_evt_log_log_nr__seq; Type: SEQUENCE; Schema: public; Owner: flowable
--

CREATE SEQUENCE act_evt_log_log_nr__seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 216
-- Name: act_evt_log_log_nr__seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flowable
--



--
-- TOC entry 232 (class 1259 OID 17084)
-- Name: act_fo_databasechangelog; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_fo_databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);



--
-- TOC entry 231 (class 1259 OID 17079)
-- Name: act_fo_databasechangeloglock; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_fo_databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);



--
-- TOC entry 235 (class 1259 OID 17106)
-- Name: act_fo_form_definition; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_fo_form_definition (
    id_ character varying(255) NOT NULL,
    name_ character varying(255),
    version_ integer,
    key_ character varying(255),
    category_ character varying(255),
    deployment_id_ character varying(255),
    tenant_id_ character varying(255),
    resource_name_ character varying(255),
    description_ character varying(255)
);



--
-- TOC entry 233 (class 1259 OID 17090)
-- Name: act_fo_form_deployment; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_fo_form_deployment (
    id_ character varying(255) NOT NULL,
    name_ character varying(255),
    category_ character varying(255),
    deploy_time_ timestamp without time zone,
    tenant_id_ character varying(255),
    parent_deployment_id_ character varying(255)
);



--
-- TOC entry 236 (class 1259 OID 17114)
-- Name: act_fo_form_instance; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_fo_form_instance (
    id_ character varying(255) NOT NULL,
    form_definition_id_ character varying(255) NOT NULL,
    task_id_ character varying(255),
    proc_inst_id_ character varying(255),
    proc_def_id_ character varying(255),
    submitted_date_ timestamp without time zone,
    submitted_by_ character varying(255),
    form_values_id_ character varying(255),
    tenant_id_ character varying(255),
    scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255)
);



--
-- TOC entry 234 (class 1259 OID 17098)
-- Name: act_fo_form_resource; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_fo_form_resource (
    id_ character varying(255) NOT NULL,
    name_ character varying(255),
    deployment_id_ character varying(255),
    resource_bytes_ bytea
);



--
-- TOC entry 195 (class 1259 OID 16476)
-- Name: act_ge_bytearray; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ge_bytearray (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    deployment_id_ character varying(64),
    bytes_ bytea,
    generated_ boolean
);



--
-- TOC entry 194 (class 1259 OID 16471)
-- Name: act_ge_property; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ge_property (
    name_ character varying(64) NOT NULL,
    value_ character varying(300),
    rev_ integer
);



--
-- TOC entry 221 (class 1259 OID 16983)
-- Name: act_hi_actinst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_hi_actinst (
    id_ character varying(64) NOT NULL,
    rev_ integer DEFAULT 1,
    proc_def_id_ character varying(64) NOT NULL,
    proc_inst_id_ character varying(64) NOT NULL,
    execution_id_ character varying(64) NOT NULL,
    act_id_ character varying(255) NOT NULL,
    task_id_ character varying(64),
    call_proc_inst_id_ character varying(64),
    act_name_ character varying(255),
    act_type_ character varying(255) NOT NULL,
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    delete_reason_ character varying(4000),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 224 (class 1259 OID 17009)
-- Name: act_hi_attachment; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_hi_attachment (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    user_id_ character varying(255),
    name_ character varying(255),
    description_ character varying(4000),
    type_ character varying(255),
    task_id_ character varying(64),
    proc_inst_id_ character varying(64),
    url_ character varying(4000),
    content_id_ character varying(64),
    time_ timestamp without time zone
);



--
-- TOC entry 223 (class 1259 OID 17001)
-- Name: act_hi_comment; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_hi_comment (
    id_ character varying(64) NOT NULL,
    type_ character varying(255),
    time_ timestamp without time zone NOT NULL,
    user_id_ character varying(255),
    task_id_ character varying(64),
    proc_inst_id_ character varying(64),
    action_ character varying(255),
    message_ character varying(4000),
    full_msg_ bytea
);



--
-- TOC entry 222 (class 1259 OID 16993)
-- Name: act_hi_detail; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_hi_detail (
    id_ character varying(64) NOT NULL,
    type_ character varying(255) NOT NULL,
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    task_id_ character varying(64),
    act_inst_id_ character varying(64),
    name_ character varying(255) NOT NULL,
    var_type_ character varying(64),
    rev_ integer,
    time_ timestamp without time zone NOT NULL,
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000)
);



--
-- TOC entry 199 (class 1259 OID 16517)
-- Name: act_hi_entitylink; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_hi_entitylink (
    id_ character varying(64) NOT NULL,
    link_type_ character varying(255),
    create_time_ timestamp without time zone,
    scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255),
    ref_scope_id_ character varying(255),
    ref_scope_type_ character varying(255),
    ref_scope_definition_id_ character varying(255),
    hierarchy_type_ character varying(255)
);



--
-- TOC entry 197 (class 1259 OID 16496)
-- Name: act_hi_identitylink; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_hi_identitylink (
    id_ character varying(64) NOT NULL,
    group_id_ character varying(255),
    type_ character varying(255),
    user_id_ character varying(255),
    task_id_ character varying(64),
    create_time_ timestamp without time zone,
    proc_inst_id_ character varying(64),
    scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255)
);



--
-- TOC entry 220 (class 1259 OID 16971)
-- Name: act_hi_procinst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_hi_procinst (
    id_ character varying(64) NOT NULL,
    rev_ integer DEFAULT 1,
    proc_inst_id_ character varying(64) NOT NULL,
    business_key_ character varying(255),
    proc_def_id_ character varying(64) NOT NULL,
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    start_user_id_ character varying(255),
    start_act_id_ character varying(255),
    end_act_id_ character varying(255),
    super_process_instance_id_ character varying(64),
    delete_reason_ character varying(4000),
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    name_ character varying(255),
    callback_id_ character varying(255),
    callback_type_ character varying(255)
);



--
-- TOC entry 201 (class 1259 OID 16540)
-- Name: act_hi_taskinst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_hi_taskinst (
    id_ character varying(64) NOT NULL,
    rev_ integer DEFAULT 1,
    proc_def_id_ character varying(64),
    task_def_id_ character varying(64),
    task_def_key_ character varying(255),
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    scope_id_ character varying(255),
    sub_scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255),
    name_ character varying(255),
    parent_task_id_ character varying(64),
    description_ character varying(4000),
    owner_ character varying(255),
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    claim_time_ timestamp without time zone,
    end_time_ timestamp without time zone,
    duration_ bigint,
    delete_reason_ character varying(4000),
    priority_ integer,
    due_date_ timestamp without time zone,
    form_key_ character varying(255),
    category_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    last_updated_time_ timestamp without time zone
);



--
-- TOC entry 203 (class 1259 OID 16552)
-- Name: act_hi_tsk_log; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_hi_tsk_log (
    id_ integer NOT NULL,
    type_ character varying(64),
    task_id_ character varying(64) NOT NULL,
    time_stamp_ timestamp without time zone NOT NULL,
    user_id_ character varying(255),
    data_ character varying(4000),
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    scope_id_ character varying(255),
    scope_definition_id_ character varying(255),
    sub_scope_id_ character varying(255),
    scope_type_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 202 (class 1259 OID 16550)
-- Name: act_hi_tsk_log_id__seq; Type: SEQUENCE; Schema: public; Owner: flowable
--

CREATE SEQUENCE act_hi_tsk_log_id__seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- TOC entry 2878 (class 0 OID 0)
-- Dependencies: 202
-- Name: act_hi_tsk_log_id__seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: flowable
--



--
-- TOC entry 205 (class 1259 OID 16581)
-- Name: act_hi_varinst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_hi_varinst (
    id_ character varying(64) NOT NULL,
    rev_ integer DEFAULT 1,
    proc_inst_id_ character varying(64),
    execution_id_ character varying(64),
    task_id_ character varying(64),
    name_ character varying(255) NOT NULL,
    var_type_ character varying(100),
    scope_id_ character varying(255),
    sub_scope_id_ character varying(255),
    scope_type_ character varying(255),
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000),
    create_time_ timestamp without time zone,
    last_updated_time_ timestamp without time zone
);



--
-- TOC entry 186 (class 1259 OID 16390)
-- Name: act_id_bytearray; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_id_bytearray (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    bytes_ bytea
);



--
-- TOC entry 187 (class 1259 OID 16398)
-- Name: act_id_group; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_id_group (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    type_ character varying(255)
);



--
-- TOC entry 190 (class 1259 OID 16420)
-- Name: act_id_info; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_id_info (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    user_id_ character varying(64),
    type_ character varying(64),
    key_ character varying(255),
    value_ character varying(255),
    password_ bytea,
    parent_id_ character varying(255)
);



--
-- TOC entry 188 (class 1259 OID 16406)
-- Name: act_id_membership; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_id_membership (
    user_id_ character varying(64) NOT NULL,
    group_id_ character varying(64) NOT NULL
);



--
-- TOC entry 192 (class 1259 OID 16436)
-- Name: act_id_priv; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_id_priv (
    id_ character varying(64) NOT NULL,
    name_ character varying(255) NOT NULL
);



--
-- TOC entry 193 (class 1259 OID 16441)
-- Name: act_id_priv_mapping; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_id_priv_mapping (
    id_ character varying(64) NOT NULL,
    priv_id_ character varying(64) NOT NULL,
    user_id_ character varying(255),
    group_id_ character varying(255)
);



--
-- TOC entry 185 (class 1259 OID 16385)
-- Name: act_id_property; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_id_property (
    name_ character varying(64) NOT NULL,
    value_ character varying(300),
    rev_ integer
);



--
-- TOC entry 191 (class 1259 OID 16428)
-- Name: act_id_token; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_id_token (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    token_value_ character varying(255),
    token_date_ timestamp without time zone,
    ip_address_ character varying(255),
    user_agent_ character varying(255),
    user_id_ character varying(255),
    token_data_ character varying(2000)
);



--
-- TOC entry 189 (class 1259 OID 16411)
-- Name: act_id_user; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_id_user (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    first_ character varying(255),
    last_ character varying(255),
    display_name_ character varying(255),
    email_ character varying(255),
    pwd_ character varying(255),
    picture_id_ character varying(64),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 218 (class 1259 OID 16756)
-- Name: act_procdef_info; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_procdef_info (
    id_ character varying(64) NOT NULL,
    proc_def_id_ character varying(64) NOT NULL,
    rev_ integer,
    info_json_id_ character varying(64)
);



--
-- TOC entry 211 (class 1259 OID 16698)
-- Name: act_re_deployment; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_re_deployment (
    id_ character varying(64) NOT NULL,
    name_ character varying(255),
    category_ character varying(255),
    key_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    deploy_time_ timestamp without time zone,
    derived_from_ character varying(64),
    derived_from_root_ character varying(64),
    parent_deployment_id_ character varying(255),
    engine_version_ character varying(255)
);



--
-- TOC entry 212 (class 1259 OID 16707)
-- Name: act_re_model; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_re_model (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    name_ character varying(255),
    key_ character varying(255),
    category_ character varying(255),
    create_time_ timestamp without time zone,
    last_update_time_ timestamp without time zone,
    version_ integer,
    meta_info_ character varying(4000),
    deployment_id_ character varying(64),
    editor_source_value_id_ character varying(64),
    editor_source_extra_value_id_ character varying(64),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 214 (class 1259 OID 16725)
-- Name: act_re_procdef; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_re_procdef (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    category_ character varying(255),
    name_ character varying(255),
    key_ character varying(255) NOT NULL,
    version_ integer NOT NULL,
    deployment_id_ character varying(64),
    resource_name_ character varying(4000),
    dgrm_resource_name_ character varying(4000),
    description_ character varying(4000),
    has_start_form_key_ boolean,
    has_graphical_notation_ boolean,
    suspension_state_ integer,
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    derived_from_ character varying(64),
    derived_from_root_ character varying(64),
    derived_version_ integer DEFAULT 0 NOT NULL,
    engine_version_ character varying(255)
);



--
-- TOC entry 219 (class 1259 OID 16761)
-- Name: act_ru_actinst; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_actinst (
    id_ character varying(64) NOT NULL,
    rev_ integer DEFAULT 1,
    proc_def_id_ character varying(64) NOT NULL,
    proc_inst_id_ character varying(64) NOT NULL,
    execution_id_ character varying(64) NOT NULL,
    act_id_ character varying(255) NOT NULL,
    task_id_ character varying(64),
    call_proc_inst_id_ character varying(64),
    act_name_ character varying(255),
    act_type_ character varying(255) NOT NULL,
    assignee_ character varying(255),
    start_time_ timestamp without time zone NOT NULL,
    end_time_ timestamp without time zone,
    duration_ bigint,
    delete_reason_ character varying(4000),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 209 (class 1259 OID 16620)
-- Name: act_ru_deadletter_job; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_deadletter_job (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    exclusive_ boolean,
    execution_id_ character varying(64),
    process_instance_id_ character varying(64),
    proc_def_id_ character varying(64),
    scope_id_ character varying(255),
    sub_scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255),
    exception_stack_id_ character varying(64),
    exception_msg_ character varying(4000),
    duedate_ timestamp without time zone,
    repeat_ character varying(255),
    handler_type_ character varying(255),
    handler_cfg_ character varying(4000),
    custom_values_id_ character varying(64),
    create_time_ timestamp without time zone,
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    element_id_ character varying(255),
    element_name_ character varying(255)
);



--
-- TOC entry 198 (class 1259 OID 16507)
-- Name: act_ru_entitylink; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_entitylink (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    create_time_ timestamp without time zone,
    link_type_ character varying(255),
    scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255),
    ref_scope_id_ character varying(255),
    ref_scope_type_ character varying(255),
    ref_scope_definition_id_ character varying(255),
    hierarchy_type_ character varying(255)
);



--
-- TOC entry 215 (class 1259 OID 16735)
-- Name: act_ru_event_subscr; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_event_subscr (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    event_type_ character varying(255) NOT NULL,
    event_name_ character varying(255),
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    activity_id_ character varying(64),
    configuration_ character varying(255),
    created_ timestamp without time zone NOT NULL,
    proc_def_id_ character varying(64),
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    sub_scope_id_ character varying(64),
    scope_id_ character varying(64),
    scope_definition_id_ character varying(64),
    scope_type_ character varying(64)
);



--
-- TOC entry 213 (class 1259 OID 16716)
-- Name: act_ru_execution; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_execution (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    proc_inst_id_ character varying(64),
    business_key_ character varying(255),
    parent_id_ character varying(64),
    proc_def_id_ character varying(64),
    super_exec_ character varying(64),
    root_proc_inst_id_ character varying(64),
    act_id_ character varying(255),
    is_active_ boolean,
    is_concurrent_ boolean,
    is_scope_ boolean,
    is_event_scope_ boolean,
    is_mi_root_ boolean,
    suspension_state_ integer,
    cached_ent_state_ integer,
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    name_ character varying(255),
    start_act_id_ character varying(255),
    start_time_ timestamp without time zone,
    start_user_id_ character varying(255),
    lock_time_ timestamp without time zone,
    is_count_enabled_ boolean,
    evt_subscr_count_ integer,
    task_count_ integer,
    job_count_ integer,
    timer_job_count_ integer,
    susp_job_count_ integer,
    deadletter_job_count_ integer,
    var_count_ integer,
    id_link_count_ integer,
    callback_id_ character varying(255),
    callback_type_ character varying(255)
);



--
-- TOC entry 210 (class 1259 OID 16629)
-- Name: act_ru_history_job; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_history_job (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    lock_exp_time_ timestamp without time zone,
    lock_owner_ character varying(255),
    retries_ integer,
    exception_stack_id_ character varying(64),
    exception_msg_ character varying(4000),
    handler_type_ character varying(255),
    handler_cfg_ character varying(4000),
    custom_values_id_ character varying(64),
    adv_handler_cfg_id_ character varying(64),
    create_time_ timestamp without time zone,
    scope_type_ character varying(255),
    tenant_id_ character varying(255) DEFAULT ''::character varying
);



--
-- TOC entry 196 (class 1259 OID 16484)
-- Name: act_ru_identitylink; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_identitylink (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    group_id_ character varying(255),
    type_ character varying(255),
    user_id_ character varying(255),
    task_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255)
);



--
-- TOC entry 206 (class 1259 OID 16593)
-- Name: act_ru_job; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_job (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    lock_exp_time_ timestamp without time zone,
    lock_owner_ character varying(255),
    exclusive_ boolean,
    execution_id_ character varying(64),
    process_instance_id_ character varying(64),
    proc_def_id_ character varying(64),
    scope_id_ character varying(255),
    sub_scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255),
    retries_ integer,
    exception_stack_id_ character varying(64),
    exception_msg_ character varying(4000),
    duedate_ timestamp without time zone,
    repeat_ character varying(255),
    handler_type_ character varying(255),
    handler_cfg_ character varying(4000),
    custom_values_id_ character varying(64),
    create_time_ timestamp without time zone,
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    element_id_ character varying(255),
    element_name_ character varying(255)
);



--
-- TOC entry 208 (class 1259 OID 16611)
-- Name: act_ru_suspended_job; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_suspended_job (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    exclusive_ boolean,
    execution_id_ character varying(64),
    process_instance_id_ character varying(64),
    proc_def_id_ character varying(64),
    scope_id_ character varying(255),
    sub_scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255),
    retries_ integer,
    exception_stack_id_ character varying(64),
    exception_msg_ character varying(4000),
    duedate_ timestamp without time zone,
    repeat_ character varying(255),
    handler_type_ character varying(255),
    handler_cfg_ character varying(4000),
    custom_values_id_ character varying(64),
    create_time_ timestamp without time zone,
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    element_id_ character varying(255),
    element_name_ character varying(255)
);



--
-- TOC entry 200 (class 1259 OID 16527)
-- Name: act_ru_task; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_task (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    proc_def_id_ character varying(64),
    task_def_id_ character varying(64),
    scope_id_ character varying(255),
    sub_scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255),
    name_ character varying(255),
    parent_task_id_ character varying(64),
    description_ character varying(4000),
    task_def_key_ character varying(255),
    owner_ character varying(255),
    assignee_ character varying(255),
    delegation_ character varying(64),
    priority_ integer,
    create_time_ timestamp without time zone,
    due_date_ timestamp without time zone,
    category_ character varying(255),
    suspension_state_ integer,
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    form_key_ character varying(255),
    claim_time_ timestamp without time zone,
    is_count_enabled_ boolean,
    var_count_ integer,
    id_link_count_ integer,
    sub_task_count_ integer
);



--
-- TOC entry 207 (class 1259 OID 16602)
-- Name: act_ru_timer_job; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_timer_job (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    lock_exp_time_ timestamp without time zone,
    lock_owner_ character varying(255),
    exclusive_ boolean,
    execution_id_ character varying(64),
    process_instance_id_ character varying(64),
    proc_def_id_ character varying(64),
    scope_id_ character varying(255),
    sub_scope_id_ character varying(255),
    scope_type_ character varying(255),
    scope_definition_id_ character varying(255),
    retries_ integer,
    exception_stack_id_ character varying(64),
    exception_msg_ character varying(4000),
    duedate_ timestamp without time zone,
    repeat_ character varying(255),
    handler_type_ character varying(255),
    handler_cfg_ character varying(4000),
    custom_values_id_ character varying(64),
    create_time_ timestamp without time zone,
    tenant_id_ character varying(255) DEFAULT ''::character varying,
    element_id_ character varying(255),
    element_name_ character varying(255)
);



--
-- TOC entry 204 (class 1259 OID 16565)
-- Name: act_ru_variable; Type: TABLE; Schema: public; Owner: flowable
--

CREATE TABLE act_ru_variable (
    id_ character varying(64) NOT NULL,
    rev_ integer,
    type_ character varying(255) NOT NULL,
    name_ character varying(255) NOT NULL,
    execution_id_ character varying(64),
    proc_inst_id_ character varying(64),
    task_id_ character varying(64),
    scope_id_ character varying(255),
    sub_scope_id_ character varying(255),
    scope_type_ character varying(255),
    bytearray_id_ character varying(64),
    double_ double precision,
    long_ bigint,
    text_ character varying(4000),
    text2_ character varying(4000)
);



--
-- TOC entry 2396 (class 2604 OID 16749)
-- Name: act_evt_log log_nr_; Type: DEFAULT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_evt_log ALTER COLUMN log_nr_ SET DEFAULT nextval('act_evt_log_log_nr__seq'::regclass);


--
-- TOC entry 2382 (class 2604 OID 16555)
-- Name: act_hi_tsk_log id_; Type: DEFAULT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_tsk_log ALTER COLUMN id_ SET DEFAULT nextval('act_hi_tsk_log_id__seq'::regclass);


--
-- TOC entry 2684 (class 2606 OID 17379)
-- Name: act_adm_databasechangeloglock act_adm_databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_adm_databasechangeloglock
    ADD CONSTRAINT act_adm_databasechangeloglock_pkey PRIMARY KEY (id);


--
-- TOC entry 2686 (class 2606 OID 17393)
-- Name: act_adm_server_config act_adm_server_config_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_adm_server_config
    ADD CONSTRAINT act_adm_server_config_pkey PRIMARY KEY (id_);


--
-- TOC entry 2680 (class 2606 OID 17367)
-- Name: act_app_appdef act_app_appdef_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_app_appdef
    ADD CONSTRAINT act_app_appdef_pkey PRIMARY KEY (id_);


--
-- TOC entry 2673 (class 2606 OID 17329)
-- Name: act_app_databasechangeloglock act_app_databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_app_databasechangeloglock
    ADD CONSTRAINT act_app_databasechangeloglock_pkey PRIMARY KEY (id);


--
-- TOC entry 2675 (class 2606 OID 17344)
-- Name: act_app_deployment act_app_deployment_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_app_deployment
    ADD CONSTRAINT act_app_deployment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2645 (class 2606 OID 17189)
-- Name: act_cmmn_casedef act_cmmn_casedef_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_casedef
    ADD CONSTRAINT act_cmmn_casedef_pkey PRIMARY KEY (id_);


--
-- TOC entry 2638 (class 2606 OID 17151)
-- Name: act_cmmn_databasechangeloglock act_cmmn_databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_databasechangeloglock
    ADD CONSTRAINT act_cmmn_databasechangeloglock_pkey PRIMARY KEY (id);


--
-- TOC entry 2640 (class 2606 OID 17166)
-- Name: act_cmmn_deployment act_cmmn_deployment_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_deployment
    ADD CONSTRAINT act_cmmn_deployment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2667 (class 2606 OID 17287)
-- Name: act_cmmn_hi_case_inst act_cmmn_hi_case_inst_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_hi_case_inst
    ADD CONSTRAINT act_cmmn_hi_case_inst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2669 (class 2606 OID 17295)
-- Name: act_cmmn_hi_mil_inst act_cmmn_hi_mil_inst_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_hi_mil_inst
    ADD CONSTRAINT act_cmmn_hi_mil_inst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2671 (class 2606 OID 17305)
-- Name: act_cmmn_hi_plan_item_inst act_cmmn_hi_plan_item_inst_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_hi_plan_item_inst
    ADD CONSTRAINT act_cmmn_hi_plan_item_inst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2649 (class 2606 OID 17204)
-- Name: act_cmmn_ru_case_inst act_cmmn_ru_case_inst_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_case_inst
    ADD CONSTRAINT act_cmmn_ru_case_inst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2663 (class 2606 OID 17266)
-- Name: act_cmmn_ru_mil_inst act_cmmn_ru_mil_inst_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_mil_inst
    ADD CONSTRAINT act_cmmn_ru_mil_inst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2633 (class 2606 OID 17143)
-- Name: act_co_content_item act_co_content_item_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_co_content_item
    ADD CONSTRAINT act_co_content_item_pkey PRIMARY KEY (id_);


--
-- TOC entry 2631 (class 2606 OID 17127)
-- Name: act_co_databasechangeloglock act_co_databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_co_databasechangeloglock
    ADD CONSTRAINT act_co_databasechangeloglock_pkey PRIMARY KEY (id);


--
-- TOC entry 2688 (class 2606 OID 17398)
-- Name: act_de_databasechangeloglock act_de_databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_de_databasechangeloglock
    ADD CONSTRAINT act_de_databasechangeloglock_pkey PRIMARY KEY (id);


--
-- TOC entry 2693 (class 2606 OID 17421)
-- Name: act_de_model_history act_de_model_history_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_de_model_history
    ADD CONSTRAINT act_de_model_history_pkey PRIMARY KEY (id);


--
-- TOC entry 2690 (class 2606 OID 17412)
-- Name: act_de_model act_de_model_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_de_model
    ADD CONSTRAINT act_de_model_pkey PRIMARY KEY (id);


--
-- TOC entry 2696 (class 2606 OID 17430)
-- Name: act_de_model_relation act_de_model_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_de_model_relation
    ADD CONSTRAINT act_de_model_relation_pkey PRIMARY KEY (id);


--
-- TOC entry 2609 (class 2606 OID 17038)
-- Name: act_dmn_databasechangeloglock act_dmn_databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_dmn_databasechangeloglock
    ADD CONSTRAINT act_dmn_databasechangeloglock_pkey PRIMARY KEY (id);


--
-- TOC entry 2615 (class 2606 OID 17068)
-- Name: act_dmn_decision_table act_dmn_decision_table_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_dmn_decision_table
    ADD CONSTRAINT act_dmn_decision_table_pkey PRIMARY KEY (id_);


--
-- TOC entry 2611 (class 2606 OID 17052)
-- Name: act_dmn_deployment act_dmn_deployment_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_dmn_deployment
    ADD CONSTRAINT act_dmn_deployment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2613 (class 2606 OID 17060)
-- Name: act_dmn_deployment_resource act_dmn_deployment_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_dmn_deployment_resource
    ADD CONSTRAINT act_dmn_deployment_resource_pkey PRIMARY KEY (id_);


--
-- TOC entry 2618 (class 2606 OID 17077)
-- Name: act_dmn_hi_decision_execution act_dmn_hi_decision_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_dmn_hi_decision_execution
    ADD CONSTRAINT act_dmn_hi_decision_execution_pkey PRIMARY KEY (id_);


--
-- TOC entry 2570 (class 2606 OID 16755)
-- Name: act_evt_log act_evt_log_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_evt_log
    ADD CONSTRAINT act_evt_log_pkey PRIMARY KEY (log_nr_);


--
-- TOC entry 2620 (class 2606 OID 17083)
-- Name: act_fo_databasechangeloglock act_fo_databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_fo_databasechangeloglock
    ADD CONSTRAINT act_fo_databasechangeloglock_pkey PRIMARY KEY (id);


--
-- TOC entry 2626 (class 2606 OID 17113)
-- Name: act_fo_form_definition act_fo_form_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_fo_form_definition
    ADD CONSTRAINT act_fo_form_definition_pkey PRIMARY KEY (id_);


--
-- TOC entry 2622 (class 2606 OID 17097)
-- Name: act_fo_form_deployment act_fo_form_deployment_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_fo_form_deployment
    ADD CONSTRAINT act_fo_form_deployment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2629 (class 2606 OID 17121)
-- Name: act_fo_form_instance act_fo_form_instance_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_fo_form_instance
    ADD CONSTRAINT act_fo_form_instance_pkey PRIMARY KEY (id_);


--
-- TOC entry 2624 (class 2606 OID 17105)
-- Name: act_fo_form_resource act_fo_form_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_fo_form_resource
    ADD CONSTRAINT act_fo_form_resource_pkey PRIMARY KEY (id_);


--
-- TOC entry 2445 (class 2606 OID 16483)
-- Name: act_ge_bytearray act_ge_bytearray_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ge_bytearray
    ADD CONSTRAINT act_ge_bytearray_pkey PRIMARY KEY (id_);


--
-- TOC entry 2443 (class 2606 OID 16475)
-- Name: act_ge_property act_ge_property_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ge_property
    ADD CONSTRAINT act_ge_property_pkey PRIMARY KEY (name_);


--
-- TOC entry 2592 (class 2606 OID 16992)
-- Name: act_hi_actinst act_hi_actinst_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_actinst
    ADD CONSTRAINT act_hi_actinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2607 (class 2606 OID 17016)
-- Name: act_hi_attachment act_hi_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_attachment
    ADD CONSTRAINT act_hi_attachment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2605 (class 2606 OID 17008)
-- Name: act_hi_comment act_hi_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_comment
    ADD CONSTRAINT act_hi_comment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2598 (class 2606 OID 17000)
-- Name: act_hi_detail act_hi_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_detail
    ADD CONSTRAINT act_hi_detail_pkey PRIMARY KEY (id_);


--
-- TOC entry 2468 (class 2606 OID 16524)
-- Name: act_hi_entitylink act_hi_entitylink_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_entitylink
    ADD CONSTRAINT act_hi_entitylink_pkey PRIMARY KEY (id_);


--
-- TOC entry 2457 (class 2606 OID 16503)
-- Name: act_hi_identitylink act_hi_identitylink_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_identitylink
    ADD CONSTRAINT act_hi_identitylink_pkey PRIMARY KEY (id_);


--
-- TOC entry 2586 (class 2606 OID 16980)
-- Name: act_hi_procinst act_hi_procinst_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2588 (class 2606 OID 16982)
-- Name: act_hi_procinst act_hi_procinst_proc_inst_id__key; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_procinst
    ADD CONSTRAINT act_hi_procinst_proc_inst_id__key UNIQUE (proc_inst_id_);


--
-- TOC entry 2481 (class 2606 OID 16549)
-- Name: act_hi_taskinst act_hi_taskinst_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_taskinst
    ADD CONSTRAINT act_hi_taskinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2487 (class 2606 OID 16561)
-- Name: act_hi_tsk_log act_hi_tsk_log_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_tsk_log
    ADD CONSTRAINT act_hi_tsk_log_pkey PRIMARY KEY (id_);


--
-- TOC entry 2497 (class 2606 OID 16589)
-- Name: act_hi_varinst act_hi_varinst_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_hi_varinst
    ADD CONSTRAINT act_hi_varinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2420 (class 2606 OID 16397)
-- Name: act_id_bytearray act_id_bytearray_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_bytearray
    ADD CONSTRAINT act_id_bytearray_pkey PRIMARY KEY (id_);


--
-- TOC entry 2422 (class 2606 OID 16405)
-- Name: act_id_group act_id_group_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_group
    ADD CONSTRAINT act_id_group_pkey PRIMARY KEY (id_);


--
-- TOC entry 2430 (class 2606 OID 16427)
-- Name: act_id_info act_id_info_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_info
    ADD CONSTRAINT act_id_info_pkey PRIMARY KEY (id_);


--
-- TOC entry 2424 (class 2606 OID 16410)
-- Name: act_id_membership act_id_membership_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_id_membership_pkey PRIMARY KEY (user_id_, group_id_);


--
-- TOC entry 2438 (class 2606 OID 16448)
-- Name: act_id_priv_mapping act_id_priv_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_priv_mapping
    ADD CONSTRAINT act_id_priv_mapping_pkey PRIMARY KEY (id_);


--
-- TOC entry 2434 (class 2606 OID 16440)
-- Name: act_id_priv act_id_priv_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_priv
    ADD CONSTRAINT act_id_priv_pkey PRIMARY KEY (id_);


--
-- TOC entry 2418 (class 2606 OID 16389)
-- Name: act_id_property act_id_property_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_property
    ADD CONSTRAINT act_id_property_pkey PRIMARY KEY (name_);


--
-- TOC entry 2432 (class 2606 OID 16435)
-- Name: act_id_token act_id_token_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_token
    ADD CONSTRAINT act_id_token_pkey PRIMARY KEY (id_);


--
-- TOC entry 2428 (class 2606 OID 16419)
-- Name: act_id_user act_id_user_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_user
    ADD CONSTRAINT act_id_user_pkey PRIMARY KEY (id_);


--
-- TOC entry 2574 (class 2606 OID 16760)
-- Name: act_procdef_info act_procdef_info_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_procdef_info
    ADD CONSTRAINT act_procdef_info_pkey PRIMARY KEY (id_);


--
-- TOC entry 2547 (class 2606 OID 16706)
-- Name: act_re_deployment act_re_deployment_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_re_deployment
    ADD CONSTRAINT act_re_deployment_pkey PRIMARY KEY (id_);


--
-- TOC entry 2552 (class 2606 OID 16715)
-- Name: act_re_model act_re_model_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_re_model
    ADD CONSTRAINT act_re_model_pkey PRIMARY KEY (id_);


--
-- TOC entry 2562 (class 2606 OID 16734)
-- Name: act_re_procdef act_re_procdef_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_re_procdef
    ADD CONSTRAINT act_re_procdef_pkey PRIMARY KEY (id_);


--
-- TOC entry 2584 (class 2606 OID 16770)
-- Name: act_ru_actinst act_ru_actinst_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_actinst
    ADD CONSTRAINT act_ru_actinst_pkey PRIMARY KEY (id_);


--
-- TOC entry 2543 (class 2606 OID 16628)
-- Name: act_ru_deadletter_job act_ru_deadletter_job_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_deadletter_job
    ADD CONSTRAINT act_ru_deadletter_job_pkey PRIMARY KEY (id_);


--
-- TOC entry 2466 (class 2606 OID 16514)
-- Name: act_ru_entitylink act_ru_entitylink_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_entitylink
    ADD CONSTRAINT act_ru_entitylink_pkey PRIMARY KEY (id_);


--
-- TOC entry 2568 (class 2606 OID 16743)
-- Name: act_ru_event_subscr act_ru_event_subscr_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_event_subscr
    ADD CONSTRAINT act_ru_event_subscr_pkey PRIMARY KEY (id_);


--
-- TOC entry 2560 (class 2606 OID 16724)
-- Name: act_ru_execution act_ru_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_ru_execution_pkey PRIMARY KEY (id_);


--
-- TOC entry 2545 (class 2606 OID 16637)
-- Name: act_ru_history_job act_ru_history_job_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_history_job
    ADD CONSTRAINT act_ru_history_job_pkey PRIMARY KEY (id_);


--
-- TOC entry 2455 (class 2606 OID 16491)
-- Name: act_ru_identitylink act_ru_identitylink_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_ru_identitylink_pkey PRIMARY KEY (id_);


--
-- TOC entry 2513 (class 2606 OID 16601)
-- Name: act_ru_job act_ru_job_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_ru_job_pkey PRIMARY KEY (id_);


--
-- TOC entry 2533 (class 2606 OID 16619)
-- Name: act_ru_suspended_job act_ru_suspended_job_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_suspended_job
    ADD CONSTRAINT act_ru_suspended_job_pkey PRIMARY KEY (id_);


--
-- TOC entry 2479 (class 2606 OID 16535)
-- Name: act_ru_task act_ru_task_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_ru_task_pkey PRIMARY KEY (id_);


--
-- TOC entry 2523 (class 2606 OID 16610)
-- Name: act_ru_timer_job act_ru_timer_job_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_timer_job
    ADD CONSTRAINT act_ru_timer_job_pkey PRIMARY KEY (id_);


--
-- TOC entry 2495 (class 2606 OID 16572)
-- Name: act_ru_variable act_ru_variable_pkey; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_ru_variable_pkey PRIMARY KEY (id_);


--
-- TOC entry 2576 (class 2606 OID 16970)
-- Name: act_procdef_info act_uniq_info_procdef; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_procdef_info
    ADD CONSTRAINT act_uniq_info_procdef UNIQUE (proc_def_id_);


--
-- TOC entry 2436 (class 2606 OID 16470)
-- Name: act_id_priv act_uniq_priv_name; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_priv
    ADD CONSTRAINT act_uniq_priv_name UNIQUE (name_);


--
-- TOC entry 2564 (class 2606 OID 16788)
-- Name: act_re_procdef act_uniq_procdef; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_re_procdef
    ADD CONSTRAINT act_uniq_procdef UNIQUE (key_, version_, derived_version_, tenant_id_);


--
-- TOC entry 2678 (class 2606 OID 17352)
-- Name: act_app_deployment_resource pk_app_deployment_resource; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_app_deployment_resource
    ADD CONSTRAINT pk_app_deployment_resource PRIMARY KEY (id_);


--
-- TOC entry 2643 (class 2606 OID 17174)
-- Name: act_cmmn_deployment_resource pk_cmmn_deployment_resource; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_deployment_resource
    ADD CONSTRAINT pk_cmmn_deployment_resource PRIMARY KEY (id_);


--
-- TOC entry 2656 (class 2606 OID 17220)
-- Name: act_cmmn_ru_plan_item_inst pk_cmmn_plan_item_inst; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_plan_item_inst
    ADD CONSTRAINT pk_cmmn_plan_item_inst PRIMARY KEY (id_);


--
-- TOC entry 2661 (class 2606 OID 17240)
-- Name: act_cmmn_ru_sentry_part_inst pk_cmmn_sentry_part_inst; Type: CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_sentry_part_inst
    ADD CONSTRAINT pk_cmmn_sentry_part_inst PRIMARY KEY (id_);


--
-- TOC entry 2681 (class 1259 OID 17373)
-- Name: act_idx_app_def_dply; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_app_def_dply ON act_app_appdef USING btree (deployment_id_);


--
-- TOC entry 2682 (class 1259 OID 17374)
-- Name: act_idx_app_def_uniq; Type: INDEX; Schema: public; Owner: flowable
--

CREATE UNIQUE INDEX act_idx_app_def_uniq ON act_app_appdef USING btree (key_, version_, tenant_id_);


--
-- TOC entry 2676 (class 1259 OID 17358)
-- Name: act_idx_app_rsrc_dpl; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_app_rsrc_dpl ON act_app_deployment_resource USING btree (deployment_id_);


--
-- TOC entry 2447 (class 1259 OID 16819)
-- Name: act_idx_athrz_procedef; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_athrz_procedef ON act_ru_identitylink USING btree (proc_def_id_);


--
-- TOC entry 2446 (class 1259 OID 16775)
-- Name: act_idx_bytear_depl; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_bytear_depl ON act_ge_bytearray USING btree (deployment_id_);


--
-- TOC entry 2646 (class 1259 OID 17195)
-- Name: act_idx_case_def_dply; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_case_def_dply ON act_cmmn_casedef USING btree (deployment_id_);


--
-- TOC entry 2647 (class 1259 OID 17324)
-- Name: act_idx_case_def_uniq; Type: INDEX; Schema: public; Owner: flowable
--

CREATE UNIQUE INDEX act_idx_case_def_uniq ON act_cmmn_casedef USING btree (key_, version_, tenant_id_);


--
-- TOC entry 2650 (class 1259 OID 17210)
-- Name: act_idx_case_inst_case_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_case_inst_case_def ON act_cmmn_ru_case_inst USING btree (case_def_id_);


--
-- TOC entry 2651 (class 1259 OID 17211)
-- Name: act_idx_case_inst_parent; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_case_inst_parent ON act_cmmn_ru_case_inst USING btree (parent_id_);


--
-- TOC entry 2641 (class 1259 OID 17180)
-- Name: act_idx_cmmn_rsrc_dpl; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_cmmn_rsrc_dpl ON act_cmmn_deployment_resource USING btree (deployment_id_);


--
-- TOC entry 2534 (class 1259 OID 16645)
-- Name: act_idx_deadletter_job_custom_values_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_deadletter_job_custom_values_id ON act_ru_deadletter_job USING btree (custom_values_id_);


--
-- TOC entry 2535 (class 1259 OID 16644)
-- Name: act_idx_deadletter_job_exception_stack_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_deadletter_job_exception_stack_id ON act_ru_deadletter_job USING btree (exception_stack_id_);


--
-- TOC entry 2536 (class 1259 OID 16915)
-- Name: act_idx_deadletter_job_execution_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_deadletter_job_execution_id ON act_ru_deadletter_job USING btree (execution_id_);


--
-- TOC entry 2537 (class 1259 OID 16927)
-- Name: act_idx_deadletter_job_proc_def_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_deadletter_job_proc_def_id ON act_ru_deadletter_job USING btree (proc_def_id_);


--
-- TOC entry 2538 (class 1259 OID 16921)
-- Name: act_idx_deadletter_job_process_instance_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_deadletter_job_process_instance_id ON act_ru_deadletter_job USING btree (process_instance_id_);


--
-- TOC entry 2616 (class 1259 OID 17078)
-- Name: act_idx_dec_tbl_uniq; Type: INDEX; Schema: public; Owner: flowable
--

CREATE UNIQUE INDEX act_idx_dec_tbl_uniq ON act_dmn_decision_table USING btree (key_, version_, tenant_id_);


--
-- TOC entry 2539 (class 1259 OID 16695)
-- Name: act_idx_djob_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_djob_scope ON act_ru_deadletter_job USING btree (scope_id_, scope_type_);


--
-- TOC entry 2540 (class 1259 OID 16697)
-- Name: act_idx_djob_scope_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_djob_scope_def ON act_ru_deadletter_job USING btree (scope_definition_id_, scope_type_);


--
-- TOC entry 2541 (class 1259 OID 16696)
-- Name: act_idx_djob_sub_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_djob_sub_scope ON act_ru_deadletter_job USING btree (sub_scope_id_, scope_type_);


--
-- TOC entry 2463 (class 1259 OID 16515)
-- Name: act_idx_ent_lnk_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ent_lnk_scope ON act_ru_entitylink USING btree (scope_id_, scope_type_, link_type_);


--
-- TOC entry 2464 (class 1259 OID 16516)
-- Name: act_idx_ent_lnk_scope_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ent_lnk_scope_def ON act_ru_entitylink USING btree (scope_definition_id_, scope_type_, link_type_);


--
-- TOC entry 2565 (class 1259 OID 16933)
-- Name: act_idx_event_subscr; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_event_subscr ON act_ru_event_subscr USING btree (execution_id_);


--
-- TOC entry 2566 (class 1259 OID 16773)
-- Name: act_idx_event_subscr_config_; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_event_subscr_config_ ON act_ru_event_subscr USING btree (configuration_);


--
-- TOC entry 2553 (class 1259 OID 16795)
-- Name: act_idx_exe_parent; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_exe_parent ON act_ru_execution USING btree (parent_id_);


--
-- TOC entry 2554 (class 1259 OID 16807)
-- Name: act_idx_exe_procdef; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_exe_procdef ON act_ru_execution USING btree (proc_def_id_);


--
-- TOC entry 2555 (class 1259 OID 16789)
-- Name: act_idx_exe_procinst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_exe_procinst ON act_ru_execution USING btree (proc_inst_id_);


--
-- TOC entry 2556 (class 1259 OID 16772)
-- Name: act_idx_exe_root; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_exe_root ON act_ru_execution USING btree (root_proc_inst_id_);


--
-- TOC entry 2557 (class 1259 OID 16801)
-- Name: act_idx_exe_super; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_exe_super ON act_ru_execution USING btree (super_exec_);


--
-- TOC entry 2558 (class 1259 OID 16771)
-- Name: act_idx_exec_buskey; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_exec_buskey ON act_ru_execution USING btree (business_key_);


--
-- TOC entry 2627 (class 1259 OID 17122)
-- Name: act_idx_form_def_uniq; Type: INDEX; Schema: public; Owner: flowable
--

CREATE UNIQUE INDEX act_idx_form_def_uniq ON act_fo_form_definition USING btree (key_, version_, tenant_id_);


--
-- TOC entry 2593 (class 1259 OID 17020)
-- Name: act_idx_hi_act_inst_end; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_act_inst_end ON act_hi_actinst USING btree (end_time_);


--
-- TOC entry 2594 (class 1259 OID 17030)
-- Name: act_idx_hi_act_inst_exec; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_act_inst_exec ON act_hi_actinst USING btree (execution_id_, act_id_);


--
-- TOC entry 2595 (class 1259 OID 17029)
-- Name: act_idx_hi_act_inst_procinst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_act_inst_procinst ON act_hi_actinst USING btree (proc_inst_id_, act_id_);


--
-- TOC entry 2596 (class 1259 OID 17019)
-- Name: act_idx_hi_act_inst_start; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_act_inst_start ON act_hi_actinst USING btree (start_time_);


--
-- TOC entry 2599 (class 1259 OID 17022)
-- Name: act_idx_hi_detail_act_inst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_detail_act_inst ON act_hi_detail USING btree (act_inst_id_);


--
-- TOC entry 2600 (class 1259 OID 17024)
-- Name: act_idx_hi_detail_name; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_detail_name ON act_hi_detail USING btree (name_);


--
-- TOC entry 2601 (class 1259 OID 17021)
-- Name: act_idx_hi_detail_proc_inst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_detail_proc_inst ON act_hi_detail USING btree (proc_inst_id_);


--
-- TOC entry 2602 (class 1259 OID 17025)
-- Name: act_idx_hi_detail_task_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_detail_task_id ON act_hi_detail USING btree (task_id_);


--
-- TOC entry 2603 (class 1259 OID 17023)
-- Name: act_idx_hi_detail_time; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_detail_time ON act_hi_detail USING btree (time_);


--
-- TOC entry 2469 (class 1259 OID 16525)
-- Name: act_idx_hi_ent_lnk_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_ent_lnk_scope ON act_hi_entitylink USING btree (scope_id_, scope_type_, link_type_);


--
-- TOC entry 2470 (class 1259 OID 16526)
-- Name: act_idx_hi_ent_lnk_scope_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_ent_lnk_scope_def ON act_hi_entitylink USING btree (scope_definition_id_, scope_type_, link_type_);


--
-- TOC entry 2458 (class 1259 OID 17032)
-- Name: act_idx_hi_ident_lnk_procinst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_ident_lnk_procinst ON act_hi_identitylink USING btree (proc_inst_id_);


--
-- TOC entry 2459 (class 1259 OID 16505)
-- Name: act_idx_hi_ident_lnk_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_ident_lnk_scope ON act_hi_identitylink USING btree (scope_id_, scope_type_);


--
-- TOC entry 2460 (class 1259 OID 16506)
-- Name: act_idx_hi_ident_lnk_scope_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_ident_lnk_scope_def ON act_hi_identitylink USING btree (scope_definition_id_, scope_type_);


--
-- TOC entry 2461 (class 1259 OID 17031)
-- Name: act_idx_hi_ident_lnk_task; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_ident_lnk_task ON act_hi_identitylink USING btree (task_id_);


--
-- TOC entry 2462 (class 1259 OID 16504)
-- Name: act_idx_hi_ident_lnk_user; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_ident_lnk_user ON act_hi_identitylink USING btree (user_id_);


--
-- TOC entry 2589 (class 1259 OID 17018)
-- Name: act_idx_hi_pro_i_buskey; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_pro_i_buskey ON act_hi_procinst USING btree (business_key_);


--
-- TOC entry 2590 (class 1259 OID 17017)
-- Name: act_idx_hi_pro_inst_end; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_pro_inst_end ON act_hi_procinst USING btree (end_time_);


--
-- TOC entry 2498 (class 1259 OID 17028)
-- Name: act_idx_hi_procvar_exe; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_procvar_exe ON act_hi_varinst USING btree (execution_id_);


--
-- TOC entry 2499 (class 1259 OID 16590)
-- Name: act_idx_hi_procvar_name_type; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_procvar_name_type ON act_hi_varinst USING btree (name_, var_type_);


--
-- TOC entry 2500 (class 1259 OID 17026)
-- Name: act_idx_hi_procvar_proc_inst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_procvar_proc_inst ON act_hi_varinst USING btree (proc_inst_id_);


--
-- TOC entry 2501 (class 1259 OID 17027)
-- Name: act_idx_hi_procvar_task_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_procvar_task_id ON act_hi_varinst USING btree (task_id_);


--
-- TOC entry 2482 (class 1259 OID 17033)
-- Name: act_idx_hi_task_inst_procinst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_task_inst_procinst ON act_hi_taskinst USING btree (proc_inst_id_);


--
-- TOC entry 2483 (class 1259 OID 16562)
-- Name: act_idx_hi_task_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_task_scope ON act_hi_taskinst USING btree (scope_id_, scope_type_);


--
-- TOC entry 2484 (class 1259 OID 16564)
-- Name: act_idx_hi_task_scope_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_task_scope_def ON act_hi_taskinst USING btree (scope_definition_id_, scope_type_);


--
-- TOC entry 2485 (class 1259 OID 16563)
-- Name: act_idx_hi_task_sub_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_task_sub_scope ON act_hi_taskinst USING btree (sub_scope_id_, scope_type_);


--
-- TOC entry 2502 (class 1259 OID 16591)
-- Name: act_idx_hi_var_scope_id_type; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_var_scope_id_type ON act_hi_varinst USING btree (scope_id_, scope_type_);


--
-- TOC entry 2503 (class 1259 OID 16592)
-- Name: act_idx_hi_var_sub_id_type; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_hi_var_sub_id_type ON act_hi_varinst USING btree (sub_scope_id_, scope_type_);


--
-- TOC entry 2448 (class 1259 OID 16493)
-- Name: act_idx_ident_lnk_group; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ident_lnk_group ON act_ru_identitylink USING btree (group_id_);


--
-- TOC entry 2449 (class 1259 OID 16494)
-- Name: act_idx_ident_lnk_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ident_lnk_scope ON act_ru_identitylink USING btree (scope_id_, scope_type_);


--
-- TOC entry 2450 (class 1259 OID 16495)
-- Name: act_idx_ident_lnk_scope_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ident_lnk_scope_def ON act_ru_identitylink USING btree (scope_definition_id_, scope_type_);


--
-- TOC entry 2451 (class 1259 OID 16492)
-- Name: act_idx_ident_lnk_user; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ident_lnk_user ON act_ru_identitylink USING btree (user_id_);


--
-- TOC entry 2452 (class 1259 OID 16825)
-- Name: act_idx_idl_procinst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_idl_procinst ON act_ru_identitylink USING btree (proc_inst_id_);


--
-- TOC entry 2504 (class 1259 OID 16639)
-- Name: act_idx_job_custom_values_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_job_custom_values_id ON act_ru_job USING btree (custom_values_id_);


--
-- TOC entry 2505 (class 1259 OID 16638)
-- Name: act_idx_job_exception_stack_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_job_exception_stack_id ON act_ru_job USING btree (exception_stack_id_);


--
-- TOC entry 2506 (class 1259 OID 16861)
-- Name: act_idx_job_execution_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_job_execution_id ON act_ru_job USING btree (execution_id_);


--
-- TOC entry 2507 (class 1259 OID 16873)
-- Name: act_idx_job_proc_def_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_job_proc_def_id ON act_ru_job USING btree (proc_def_id_);


--
-- TOC entry 2508 (class 1259 OID 16867)
-- Name: act_idx_job_process_instance_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_job_process_instance_id ON act_ru_job USING btree (process_instance_id_);


--
-- TOC entry 2509 (class 1259 OID 16686)
-- Name: act_idx_job_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_job_scope ON act_ru_job USING btree (scope_id_, scope_type_);


--
-- TOC entry 2510 (class 1259 OID 16688)
-- Name: act_idx_job_scope_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_job_scope_def ON act_ru_job USING btree (scope_definition_id_, scope_type_);


--
-- TOC entry 2511 (class 1259 OID 16687)
-- Name: act_idx_job_sub_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_job_sub_scope ON act_ru_job USING btree (sub_scope_id_, scope_type_);


--
-- TOC entry 2425 (class 1259 OID 16449)
-- Name: act_idx_memb_group; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_memb_group ON act_id_membership USING btree (group_id_);


--
-- TOC entry 2426 (class 1259 OID 16455)
-- Name: act_idx_memb_user; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_memb_user ON act_id_membership USING btree (user_id_);


--
-- TOC entry 2664 (class 1259 OID 17272)
-- Name: act_idx_mil_case_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_mil_case_def ON act_cmmn_ru_mil_inst USING btree (case_def_id_);


--
-- TOC entry 2665 (class 1259 OID 17278)
-- Name: act_idx_mil_case_inst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_mil_case_inst ON act_cmmn_ru_mil_inst USING btree (case_inst_id_);


--
-- TOC entry 2548 (class 1259 OID 16951)
-- Name: act_idx_model_deployment; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_model_deployment ON act_re_model USING btree (deployment_id_);


--
-- TOC entry 2549 (class 1259 OID 16939)
-- Name: act_idx_model_source; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_model_source ON act_re_model USING btree (editor_source_value_id_);


--
-- TOC entry 2550 (class 1259 OID 16945)
-- Name: act_idx_model_source_extra; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_model_source_extra ON act_re_model USING btree (editor_source_extra_value_id_);


--
-- TOC entry 2652 (class 1259 OID 17226)
-- Name: act_idx_plan_item_case_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_plan_item_case_def ON act_cmmn_ru_plan_item_inst USING btree (case_def_id_);


--
-- TOC entry 2653 (class 1259 OID 17232)
-- Name: act_idx_plan_item_case_inst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_plan_item_case_inst ON act_cmmn_ru_plan_item_inst USING btree (case_inst_id_);


--
-- TOC entry 2654 (class 1259 OID 17296)
-- Name: act_idx_plan_item_stage_inst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_plan_item_stage_inst ON act_cmmn_ru_plan_item_inst USING btree (stage_inst_id_);


--
-- TOC entry 2439 (class 1259 OID 16468)
-- Name: act_idx_priv_group; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_priv_group ON act_id_priv_mapping USING btree (group_id_);


--
-- TOC entry 2440 (class 1259 OID 16461)
-- Name: act_idx_priv_mapping; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_priv_mapping ON act_id_priv_mapping USING btree (priv_id_);


--
-- TOC entry 2441 (class 1259 OID 16467)
-- Name: act_idx_priv_user; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_priv_user ON act_id_priv_mapping USING btree (user_id_);


--
-- TOC entry 2571 (class 1259 OID 16957)
-- Name: act_idx_procdef_info_json; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_procdef_info_json ON act_procdef_info USING btree (info_json_id_);


--
-- TOC entry 2572 (class 1259 OID 16963)
-- Name: act_idx_procdef_info_proc; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_procdef_info_proc ON act_procdef_info USING btree (proc_def_id_);


--
-- TOC entry 2577 (class 1259 OID 16777)
-- Name: act_idx_ru_acti_end; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ru_acti_end ON act_ru_actinst USING btree (end_time_);


--
-- TOC entry 2578 (class 1259 OID 16780)
-- Name: act_idx_ru_acti_exec; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ru_acti_exec ON act_ru_actinst USING btree (execution_id_);


--
-- TOC entry 2579 (class 1259 OID 16781)
-- Name: act_idx_ru_acti_exec_act; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ru_acti_exec_act ON act_ru_actinst USING btree (execution_id_, act_id_);


--
-- TOC entry 2580 (class 1259 OID 16778)
-- Name: act_idx_ru_acti_proc; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ru_acti_proc ON act_ru_actinst USING btree (proc_inst_id_);


--
-- TOC entry 2581 (class 1259 OID 16779)
-- Name: act_idx_ru_acti_proc_act; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ru_acti_proc_act ON act_ru_actinst USING btree (proc_inst_id_, act_id_);


--
-- TOC entry 2582 (class 1259 OID 16776)
-- Name: act_idx_ru_acti_start; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ru_acti_start ON act_ru_actinst USING btree (start_time_);


--
-- TOC entry 2488 (class 1259 OID 16573)
-- Name: act_idx_ru_var_scope_id_type; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ru_var_scope_id_type ON act_ru_variable USING btree (scope_id_, scope_type_);


--
-- TOC entry 2489 (class 1259 OID 16574)
-- Name: act_idx_ru_var_sub_id_type; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_ru_var_sub_id_type ON act_ru_variable USING btree (sub_scope_id_, scope_type_);


--
-- TOC entry 2657 (class 1259 OID 17246)
-- Name: act_idx_sentry_case_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_sentry_case_def ON act_cmmn_ru_sentry_part_inst USING btree (case_def_id_);


--
-- TOC entry 2658 (class 1259 OID 17252)
-- Name: act_idx_sentry_case_inst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_sentry_case_inst ON act_cmmn_ru_sentry_part_inst USING btree (case_inst_id_);


--
-- TOC entry 2659 (class 1259 OID 17258)
-- Name: act_idx_sentry_plan_item; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_sentry_plan_item ON act_cmmn_ru_sentry_part_inst USING btree (plan_item_inst_id_);


--
-- TOC entry 2524 (class 1259 OID 16692)
-- Name: act_idx_sjob_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_sjob_scope ON act_ru_suspended_job USING btree (scope_id_, scope_type_);


--
-- TOC entry 2525 (class 1259 OID 16694)
-- Name: act_idx_sjob_scope_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_sjob_scope_def ON act_ru_suspended_job USING btree (scope_definition_id_, scope_type_);


--
-- TOC entry 2526 (class 1259 OID 16693)
-- Name: act_idx_sjob_sub_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_sjob_sub_scope ON act_ru_suspended_job USING btree (sub_scope_id_, scope_type_);


--
-- TOC entry 2527 (class 1259 OID 16643)
-- Name: act_idx_suspended_job_custom_values_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_suspended_job_custom_values_id ON act_ru_suspended_job USING btree (custom_values_id_);


--
-- TOC entry 2528 (class 1259 OID 16642)
-- Name: act_idx_suspended_job_exception_stack_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_suspended_job_exception_stack_id ON act_ru_suspended_job USING btree (exception_stack_id_);


--
-- TOC entry 2529 (class 1259 OID 16897)
-- Name: act_idx_suspended_job_execution_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_suspended_job_execution_id ON act_ru_suspended_job USING btree (execution_id_);


--
-- TOC entry 2530 (class 1259 OID 16909)
-- Name: act_idx_suspended_job_proc_def_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_suspended_job_proc_def_id ON act_ru_suspended_job USING btree (proc_def_id_);


--
-- TOC entry 2531 (class 1259 OID 16903)
-- Name: act_idx_suspended_job_process_instance_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_suspended_job_process_instance_id ON act_ru_suspended_job USING btree (process_instance_id_);


--
-- TOC entry 2471 (class 1259 OID 16536)
-- Name: act_idx_task_create; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_task_create ON act_ru_task USING btree (create_time_);


--
-- TOC entry 2472 (class 1259 OID 16831)
-- Name: act_idx_task_exec; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_task_exec ON act_ru_task USING btree (execution_id_);


--
-- TOC entry 2473 (class 1259 OID 16843)
-- Name: act_idx_task_procdef; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_task_procdef ON act_ru_task USING btree (proc_def_id_);


--
-- TOC entry 2474 (class 1259 OID 16837)
-- Name: act_idx_task_procinst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_task_procinst ON act_ru_task USING btree (proc_inst_id_);


--
-- TOC entry 2475 (class 1259 OID 16537)
-- Name: act_idx_task_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_task_scope ON act_ru_task USING btree (scope_id_, scope_type_);


--
-- TOC entry 2476 (class 1259 OID 16539)
-- Name: act_idx_task_scope_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_task_scope_def ON act_ru_task USING btree (scope_definition_id_, scope_type_);


--
-- TOC entry 2477 (class 1259 OID 16538)
-- Name: act_idx_task_sub_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_task_sub_scope ON act_ru_task USING btree (sub_scope_id_, scope_type_);


--
-- TOC entry 2514 (class 1259 OID 16641)
-- Name: act_idx_timer_job_custom_values_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_timer_job_custom_values_id ON act_ru_timer_job USING btree (custom_values_id_);


--
-- TOC entry 2515 (class 1259 OID 16640)
-- Name: act_idx_timer_job_exception_stack_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_timer_job_exception_stack_id ON act_ru_timer_job USING btree (exception_stack_id_);


--
-- TOC entry 2516 (class 1259 OID 16879)
-- Name: act_idx_timer_job_execution_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_timer_job_execution_id ON act_ru_timer_job USING btree (execution_id_);


--
-- TOC entry 2517 (class 1259 OID 16891)
-- Name: act_idx_timer_job_proc_def_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_timer_job_proc_def_id ON act_ru_timer_job USING btree (proc_def_id_);


--
-- TOC entry 2518 (class 1259 OID 16885)
-- Name: act_idx_timer_job_process_instance_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_timer_job_process_instance_id ON act_ru_timer_job USING btree (process_instance_id_);


--
-- TOC entry 2519 (class 1259 OID 16689)
-- Name: act_idx_tjob_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_tjob_scope ON act_ru_timer_job USING btree (scope_id_, scope_type_);


--
-- TOC entry 2520 (class 1259 OID 16691)
-- Name: act_idx_tjob_scope_def; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_tjob_scope_def ON act_ru_timer_job USING btree (scope_definition_id_, scope_type_);


--
-- TOC entry 2521 (class 1259 OID 16690)
-- Name: act_idx_tjob_sub_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_tjob_sub_scope ON act_ru_timer_job USING btree (sub_scope_id_, scope_type_);


--
-- TOC entry 2453 (class 1259 OID 16813)
-- Name: act_idx_tskass_task; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_tskass_task ON act_ru_identitylink USING btree (task_id_);


--
-- TOC entry 2490 (class 1259 OID 16575)
-- Name: act_idx_var_bytearray; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_var_bytearray ON act_ru_variable USING btree (bytearray_id_);


--
-- TOC entry 2491 (class 1259 OID 16849)
-- Name: act_idx_var_exe; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_var_exe ON act_ru_variable USING btree (execution_id_);


--
-- TOC entry 2492 (class 1259 OID 16855)
-- Name: act_idx_var_procinst; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_var_procinst ON act_ru_variable USING btree (proc_inst_id_);


--
-- TOC entry 2493 (class 1259 OID 16774)
-- Name: act_idx_variable_task_id; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX act_idx_variable_task_id ON act_ru_variable USING btree (task_id_);


--
-- TOC entry 2634 (class 1259 OID 17145)
-- Name: idx_contitem_procid; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX idx_contitem_procid ON act_co_content_item USING btree (proc_inst_id_);


--
-- TOC entry 2635 (class 1259 OID 17146)
-- Name: idx_contitem_scope; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX idx_contitem_scope ON act_co_content_item USING btree (scope_id_, scope_type_);


--
-- TOC entry 2636 (class 1259 OID 17144)
-- Name: idx_contitem_taskid; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX idx_contitem_taskid ON act_co_content_item USING btree (task_id_);


--
-- TOC entry 2691 (class 1259 OID 17413)
-- Name: idx_proc_mod_created; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX idx_proc_mod_created ON act_de_model USING btree (created_by);


--
-- TOC entry 2694 (class 1259 OID 17422)
-- Name: idx_proc_mod_history_proc; Type: INDEX; Schema: public; Owner: flowable
--

CREATE INDEX idx_proc_mod_history_proc ON act_de_model_history USING btree (model_id);


--
-- TOC entry 2751 (class 2606 OID 17368)
-- Name: act_app_appdef act_fk_app_def_dply; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_app_appdef
    ADD CONSTRAINT act_fk_app_def_dply FOREIGN KEY (deployment_id_) REFERENCES act_app_deployment(id_);


--
-- TOC entry 2750 (class 2606 OID 17353)
-- Name: act_app_deployment_resource act_fk_app_rsrc_dpl; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_app_deployment_resource
    ADD CONSTRAINT act_fk_app_rsrc_dpl FOREIGN KEY (deployment_id_) REFERENCES act_app_deployment(id_);


--
-- TOC entry 2702 (class 2606 OID 16820)
-- Name: act_ru_identitylink act_fk_athrz_procedef; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_athrz_procedef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2700 (class 2606 OID 16782)
-- Name: act_ge_bytearray act_fk_bytearr_depl; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ge_bytearray
    ADD CONSTRAINT act_fk_bytearr_depl FOREIGN KEY (deployment_id_) REFERENCES act_re_deployment(id_);


--
-- TOC entry 2741 (class 2606 OID 17190)
-- Name: act_cmmn_casedef act_fk_case_def_dply; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_casedef
    ADD CONSTRAINT act_fk_case_def_dply FOREIGN KEY (deployment_id_) REFERENCES act_cmmn_deployment(id_);


--
-- TOC entry 2742 (class 2606 OID 17205)
-- Name: act_cmmn_ru_case_inst act_fk_case_inst_case_def; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_case_inst
    ADD CONSTRAINT act_fk_case_inst_case_def FOREIGN KEY (case_def_id_) REFERENCES act_cmmn_casedef(id_);


--
-- TOC entry 2740 (class 2606 OID 17175)
-- Name: act_cmmn_deployment_resource act_fk_cmmn_rsrc_dpl; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_deployment_resource
    ADD CONSTRAINT act_fk_cmmn_rsrc_dpl FOREIGN KEY (deployment_id_) REFERENCES act_cmmn_deployment(id_);


--
-- TOC entry 2726 (class 2606 OID 16681)
-- Name: act_ru_deadletter_job act_fk_deadletter_job_custom_values; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_deadletter_job
    ADD CONSTRAINT act_fk_deadletter_job_custom_values FOREIGN KEY (custom_values_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2725 (class 2606 OID 16676)
-- Name: act_ru_deadletter_job act_fk_deadletter_job_exception; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_deadletter_job
    ADD CONSTRAINT act_fk_deadletter_job_exception FOREIGN KEY (exception_stack_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2727 (class 2606 OID 16916)
-- Name: act_ru_deadletter_job act_fk_deadletter_job_execution; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_deadletter_job
    ADD CONSTRAINT act_fk_deadletter_job_execution FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2729 (class 2606 OID 16928)
-- Name: act_ru_deadletter_job act_fk_deadletter_job_proc_def; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_deadletter_job
    ADD CONSTRAINT act_fk_deadletter_job_proc_def FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2728 (class 2606 OID 16922)
-- Name: act_ru_deadletter_job act_fk_deadletter_job_process_instance; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_deadletter_job
    ADD CONSTRAINT act_fk_deadletter_job_process_instance FOREIGN KEY (process_instance_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2737 (class 2606 OID 16934)
-- Name: act_ru_event_subscr act_fk_event_exec; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_event_subscr
    ADD CONSTRAINT act_fk_event_exec FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2734 (class 2606 OID 16796)
-- Name: act_ru_execution act_fk_exe_parent; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_parent FOREIGN KEY (parent_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2736 (class 2606 OID 16808)
-- Name: act_ru_execution act_fk_exe_procdef; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2733 (class 2606 OID 16790)
-- Name: act_ru_execution act_fk_exe_procinst; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2735 (class 2606 OID 16802)
-- Name: act_ru_execution act_fk_exe_super; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_execution
    ADD CONSTRAINT act_fk_exe_super FOREIGN KEY (super_exec_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2703 (class 2606 OID 16826)
-- Name: act_ru_identitylink act_fk_idl_procinst; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_idl_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2738 (class 2606 OID 16958)
-- Name: act_procdef_info act_fk_info_json_ba; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_procdef_info
    ADD CONSTRAINT act_fk_info_json_ba FOREIGN KEY (info_json_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2739 (class 2606 OID 16964)
-- Name: act_procdef_info act_fk_info_procdef; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_procdef_info
    ADD CONSTRAINT act_fk_info_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2711 (class 2606 OID 16651)
-- Name: act_ru_job act_fk_job_custom_values; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_fk_job_custom_values FOREIGN KEY (custom_values_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2710 (class 2606 OID 16646)
-- Name: act_ru_job act_fk_job_exception; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_fk_job_exception FOREIGN KEY (exception_stack_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2712 (class 2606 OID 16862)
-- Name: act_ru_job act_fk_job_execution; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_fk_job_execution FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2714 (class 2606 OID 16874)
-- Name: act_ru_job act_fk_job_proc_def; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_fk_job_proc_def FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2713 (class 2606 OID 16868)
-- Name: act_ru_job act_fk_job_process_instance; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_job
    ADD CONSTRAINT act_fk_job_process_instance FOREIGN KEY (process_instance_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2697 (class 2606 OID 16450)
-- Name: act_id_membership act_fk_memb_group; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_fk_memb_group FOREIGN KEY (group_id_) REFERENCES act_id_group(id_);


--
-- TOC entry 2698 (class 2606 OID 16456)
-- Name: act_id_membership act_fk_memb_user; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_membership
    ADD CONSTRAINT act_fk_memb_user FOREIGN KEY (user_id_) REFERENCES act_id_user(id_);


--
-- TOC entry 2748 (class 2606 OID 17267)
-- Name: act_cmmn_ru_mil_inst act_fk_mil_case_def; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_mil_inst
    ADD CONSTRAINT act_fk_mil_case_def FOREIGN KEY (case_def_id_) REFERENCES act_cmmn_casedef(id_);


--
-- TOC entry 2749 (class 2606 OID 17273)
-- Name: act_cmmn_ru_mil_inst act_fk_mil_case_inst; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_mil_inst
    ADD CONSTRAINT act_fk_mil_case_inst FOREIGN KEY (case_inst_id_) REFERENCES act_cmmn_ru_case_inst(id_);


--
-- TOC entry 2732 (class 2606 OID 16952)
-- Name: act_re_model act_fk_model_deployment; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_re_model
    ADD CONSTRAINT act_fk_model_deployment FOREIGN KEY (deployment_id_) REFERENCES act_re_deployment(id_);


--
-- TOC entry 2730 (class 2606 OID 16940)
-- Name: act_re_model act_fk_model_source; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_re_model
    ADD CONSTRAINT act_fk_model_source FOREIGN KEY (editor_source_value_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2731 (class 2606 OID 16946)
-- Name: act_re_model act_fk_model_source_extra; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_re_model
    ADD CONSTRAINT act_fk_model_source_extra FOREIGN KEY (editor_source_extra_value_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2743 (class 2606 OID 17221)
-- Name: act_cmmn_ru_plan_item_inst act_fk_plan_item_case_def; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_plan_item_inst
    ADD CONSTRAINT act_fk_plan_item_case_def FOREIGN KEY (case_def_id_) REFERENCES act_cmmn_casedef(id_);


--
-- TOC entry 2744 (class 2606 OID 17227)
-- Name: act_cmmn_ru_plan_item_inst act_fk_plan_item_case_inst; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_plan_item_inst
    ADD CONSTRAINT act_fk_plan_item_case_inst FOREIGN KEY (case_inst_id_) REFERENCES act_cmmn_ru_case_inst(id_);


--
-- TOC entry 2699 (class 2606 OID 16462)
-- Name: act_id_priv_mapping act_fk_priv_mapping; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_id_priv_mapping
    ADD CONSTRAINT act_fk_priv_mapping FOREIGN KEY (priv_id_) REFERENCES act_id_priv(id_);


--
-- TOC entry 2745 (class 2606 OID 17241)
-- Name: act_cmmn_ru_sentry_part_inst act_fk_sentry_case_def; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_sentry_part_inst
    ADD CONSTRAINT act_fk_sentry_case_def FOREIGN KEY (case_def_id_) REFERENCES act_cmmn_casedef(id_);


--
-- TOC entry 2746 (class 2606 OID 17247)
-- Name: act_cmmn_ru_sentry_part_inst act_fk_sentry_case_inst; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_sentry_part_inst
    ADD CONSTRAINT act_fk_sentry_case_inst FOREIGN KEY (case_inst_id_) REFERENCES act_cmmn_ru_case_inst(id_);


--
-- TOC entry 2747 (class 2606 OID 17253)
-- Name: act_cmmn_ru_sentry_part_inst act_fk_sentry_plan_item; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_cmmn_ru_sentry_part_inst
    ADD CONSTRAINT act_fk_sentry_plan_item FOREIGN KEY (plan_item_inst_id_) REFERENCES act_cmmn_ru_plan_item_inst(id_);


--
-- TOC entry 2721 (class 2606 OID 16671)
-- Name: act_ru_suspended_job act_fk_suspended_job_custom_values; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_suspended_job
    ADD CONSTRAINT act_fk_suspended_job_custom_values FOREIGN KEY (custom_values_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2720 (class 2606 OID 16666)
-- Name: act_ru_suspended_job act_fk_suspended_job_exception; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_suspended_job
    ADD CONSTRAINT act_fk_suspended_job_exception FOREIGN KEY (exception_stack_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2722 (class 2606 OID 16898)
-- Name: act_ru_suspended_job act_fk_suspended_job_execution; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_suspended_job
    ADD CONSTRAINT act_fk_suspended_job_execution FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2724 (class 2606 OID 16910)
-- Name: act_ru_suspended_job act_fk_suspended_job_proc_def; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_suspended_job
    ADD CONSTRAINT act_fk_suspended_job_proc_def FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2723 (class 2606 OID 16904)
-- Name: act_ru_suspended_job act_fk_suspended_job_process_instance; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_suspended_job
    ADD CONSTRAINT act_fk_suspended_job_process_instance FOREIGN KEY (process_instance_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2704 (class 2606 OID 16832)
-- Name: act_ru_task act_fk_task_exe; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2706 (class 2606 OID 16844)
-- Name: act_ru_task act_fk_task_procdef; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_procdef FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2705 (class 2606 OID 16838)
-- Name: act_ru_task act_fk_task_procinst; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_task
    ADD CONSTRAINT act_fk_task_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2716 (class 2606 OID 16661)
-- Name: act_ru_timer_job act_fk_timer_job_custom_values; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_timer_job
    ADD CONSTRAINT act_fk_timer_job_custom_values FOREIGN KEY (custom_values_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2715 (class 2606 OID 16656)
-- Name: act_ru_timer_job act_fk_timer_job_exception; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_timer_job
    ADD CONSTRAINT act_fk_timer_job_exception FOREIGN KEY (exception_stack_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2717 (class 2606 OID 16880)
-- Name: act_ru_timer_job act_fk_timer_job_execution; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_timer_job
    ADD CONSTRAINT act_fk_timer_job_execution FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2719 (class 2606 OID 16892)
-- Name: act_ru_timer_job act_fk_timer_job_proc_def; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_timer_job
    ADD CONSTRAINT act_fk_timer_job_proc_def FOREIGN KEY (proc_def_id_) REFERENCES act_re_procdef(id_);


--
-- TOC entry 2718 (class 2606 OID 16886)
-- Name: act_ru_timer_job act_fk_timer_job_process_instance; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_timer_job
    ADD CONSTRAINT act_fk_timer_job_process_instance FOREIGN KEY (process_instance_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2701 (class 2606 OID 16814)
-- Name: act_ru_identitylink act_fk_tskass_task; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_identitylink
    ADD CONSTRAINT act_fk_tskass_task FOREIGN KEY (task_id_) REFERENCES act_ru_task(id_);


--
-- TOC entry 2707 (class 2606 OID 16576)
-- Name: act_ru_variable act_fk_var_bytearray; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_bytearray FOREIGN KEY (bytearray_id_) REFERENCES act_ge_bytearray(id_);


--
-- TOC entry 2708 (class 2606 OID 16850)
-- Name: act_ru_variable act_fk_var_exe; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_exe FOREIGN KEY (execution_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2709 (class 2606 OID 16856)
-- Name: act_ru_variable act_fk_var_procinst; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_ru_variable
    ADD CONSTRAINT act_fk_var_procinst FOREIGN KEY (proc_inst_id_) REFERENCES act_ru_execution(id_);


--
-- TOC entry 2753 (class 2606 OID 17436)
-- Name: act_de_model_relation fk_relation_child; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_de_model_relation
    ADD CONSTRAINT fk_relation_child FOREIGN KEY (model_id) REFERENCES act_de_model(id);


--
-- TOC entry 2752 (class 2606 OID 17431)
-- Name: act_de_model_relation fk_relation_parent; Type: FK CONSTRAINT; Schema: public; Owner: flowable
--

ALTER TABLE ONLY act_de_model_relation
    ADD CONSTRAINT fk_relation_parent FOREIGN KEY (parent_model_id) REFERENCES act_de_model(id);


-- Completed on 2019-07-03 00:52:15 IST

--
-- PostgreSQL database dump complete
--

