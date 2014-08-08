<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Account_Name_Update</fullName>
        <field>Name</field>
        <formula>Name + &apos;123&apos;</formula>
        <name>Account Name Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Name_Update</fullName>
        <field>Name</field>
        <formula>Name + &apos;123&apos;</formula>
        <name>Name Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>action</fullName>
        <field>Description</field>
        <formula>&quot;hi&quot;</formula>
        <name>action</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>When stuff do things</fullName>
        <actions>
            <name>Account_Name_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.AccountNumber</field>
            <operation>equals</operation>
            <value>123</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Name_Update</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Account.LastModifiedDate</offsetFromField>
            <timeLength>30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <tasks>
        <fullName>do_this</fullName>
        <assignedTo>stuart.miron@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>do this</subject>
    </tasks>
</Workflow>
