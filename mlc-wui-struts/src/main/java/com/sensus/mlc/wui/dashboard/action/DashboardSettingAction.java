package com.sensus.mlc.wui.dashboard.action;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.sensus.mlc.wui.analytics.action.AnalyticsSettingAction;
import com.sensus.mlc.wui.base.action.SettingsAction;

/**
 * Loads dashboard-related application settings into a JavaScript file via a Freemarker Template.
 * 
 * @author Raphael Constantino
 * 
 */

@SuppressWarnings("serial")
public class DashboardSettingAction extends SettingsAction
{

	/**
	 * The logger for this action.
	 */
	private static transient Log LOG = LogFactory.getLog(AnalyticsSettingAction.class);

	/** The search url. */
	private String search;

	/** The search url lrp. */
	private String searchUrlLRP;

	/** The long running process dialog. */
	private String longRunningProcessDialog;

	/** The long running process recent. */
	private String longRunningProcessRecent;

	/** The Long running process dialog remove. */
	private String longRunningProcessDialogRemove;

	/** The Long running process dialog abort. */
	private String longRunningProcessDialogAbort;

	/** The Long running process remove. */
	private String longRunningProcessRemove;

	/** The Long running process abort. */
	private String longRunningProcessAbort;

	/** The long running process retry unreachable. */
	private String longRunningProcessRetryUnreachable;

	/** The check long running process. */
	private String checkLongRunningProcess;

	/** The remove all longrunningprocess. */
	private String longRunningProcessRemoveAll;

	/** The check rni. */
	private String checkRni;

	/** The delete file. */
	private String deleteFile;

	/** The generate summary file csv. */
	private String generateSummaryFileCSV;

	/**
	 * Settings.
	 * 
	 * @return the string
	 */
	public String settings()
	{
		if (LOG.isDebugEnabled())
		{
			LOG.debug("Loading DashBoard Page Settings");
		}
		super.initSettings();
		setSearch(getSettings().getProperty("dashboard.url.search"));
		setSearchUrlLRP(getSettings().getProperty("longrunningprocess.url.search"));
		setLongRunningProcessDialog(getSettings().getProperty("smartpoint.include.longRunningProcessDialog"));
		setLongRunningProcessDialogRemove(getSettings().getProperty(
				"longrunningprocess.include.longRunningProcessRemove"));
		setLongRunningProcessDialogAbort(getSettings()
				.getProperty("longrunningprocess.include.longRunningProcessAbort"));
		setLongRunningProcessRemove(getSettings().getProperty("longrunningprocess.longRunningProcessRemove"));
		setLongRunningProcessAbort(getSettings().getProperty("longrunningprocess.longRunningProcessAbort"));
		setLongRunningProcessRecent(getSettings().getProperty("smartpoint.include.longRunningProcessRecent"));
		setCheckLongRunningProcess(getSettings().getProperty("longrunningprocess.url.checkLongRunningProcess"));
		setLongRunningProcessRetryUnreachable(getSettings().getProperty(
				"longrunningprocess.url.retryUnreachable"));
		setLongRunningProcessRemoveAll(getSettings().getProperty("longrunningprocess.url.longRunningProcessRemoveAll"));
		setCheckRni(getSettings().getProperty("longrunningprocess.url.checkRni"));
		setDeleteFile(getSettings().getProperty("longrunningprocess.url.deleteFile"));
		setGenerateSummaryFileCSV(getSettings().getProperty("systemsettings.url.generateSummaryFileCSV"));

		return SUCCESS;
	}

	/**
	 * Sets the search.
	 * 
	 * @param search the search to set
	 */
	public void setSearch(String search)
	{
		this.search = search;
	}

	/**
	 * Gets the search.
	 * 
	 * @return the search
	 */
	public String getSearch()
	{
		return search;
	}

	/**
	 * Gets the search url lrp.
	 * 
	 * @return the search url lrp
	 */
	public String getSearchUrlLRP()
	{
		return searchUrlLRP;
	}

	/**
	 * Sets the search url lrp.
	 * 
	 * @param searchUrlLRP the new search url lrp
	 */
	public void setSearchUrlLRP(String searchUrlLRP)
	{
		this.searchUrlLRP = searchUrlLRP;
	}

	/**
	 * Gets the long running process dialog.
	 * 
	 * @return the long running process dialog
	 */
	public String getLongRunningProcessDialog()
	{
		return longRunningProcessDialog;
	}

	/**
	 * Sets the long running process dialog.
	 * 
	 * @param longRunningProcessDialog the new long running process dialog
	 */
	public void setLongRunningProcessDialog(String longRunningProcessDialog)
	{
		this.longRunningProcessDialog = longRunningProcessDialog;
	}

	/**
	 * Gets the long running process recent.
	 * 
	 * @return the long running process recent
	 */
	public String getLongRunningProcessRecent()
	{
		return longRunningProcessRecent;
	}

	/**
	 * Sets the long running process recent.
	 * 
	 * @param longRunningProcessRecent the new long running process recent
	 */
	public void setLongRunningProcessRecent(String longRunningProcessRecent)
	{
		this.longRunningProcessRecent = longRunningProcessRecent;
	}

	/**
	 * Gets the long running process dialog remove.
	 * 
	 * @return the long running process dialog remove
	 */
	public String getLongRunningProcessDialogRemove()
	{
		return longRunningProcessDialogRemove;
	}

	/**
	 * Sets the long running process dialog remove.
	 * 
	 * @param longRunningProcessDialogRemove the new long running process dialog remove
	 */
	public void setLongRunningProcessDialogRemove(String longRunningProcessDialogRemove)
	{
		this.longRunningProcessDialogRemove = longRunningProcessDialogRemove;
	}

	/**
	 * Gets the long running process dialog abort.
	 * 
	 * @return the long running process dialog abort
	 */
	public String getLongRunningProcessDialogAbort()
	{
		return longRunningProcessDialogAbort;
	}

	/**
	 * Sets the long running process dialog abort.
	 * 
	 * @param longRunningProcessDialogAbort the new long running process dialog abort
	 */
	public void setLongRunningProcessDialogAbort(String longRunningProcessDialogAbort)
	{
		this.longRunningProcessDialogAbort = longRunningProcessDialogAbort;
	}

	/**
	 * Gets the long running process remove.
	 * 
	 * @return the long running process remove
	 */
	public String getLongRunningProcessRemove()
	{
		return longRunningProcessRemove;
	}

	/**
	 * Sets the long running process remove.
	 * 
	 * @param longRunningProcessRemove the new long running process remove
	 */
	public void setLongRunningProcessRemove(String longRunningProcessRemove)
	{
		this.longRunningProcessRemove = longRunningProcessRemove;
	}

	/**
	 * Gets the long running process abort.
	 * 
	 * @return the long running process abort
	 */
	public String getLongRunningProcessAbort()
	{
		return longRunningProcessAbort;
	}

	/**
	 * Sets the long running process abort.
	 * 
	 * @param longRunningProcessAbort the new long running process abort
	 */
	public void setLongRunningProcessAbort(String longRunningProcessAbort)
	{
		this.longRunningProcessAbort = longRunningProcessAbort;
	}

	/**
	 * Gets the long running process retry unreachable.
	 * 
	 * @return the long running process retry unreachable
	 */
	public String getLongRunningProcessRetryUnreachable()
	{
		return longRunningProcessRetryUnreachable;
	}

	/**
	 * Sets the long running process retry unreachable.
	 * 
	 * @param longRunningProcessRetryUnreachable the new long running process retry unreachable
	 */
	public void setLongRunningProcessRetryUnreachable(String longRunningProcessRetryUnreachable)
	{
		this.longRunningProcessRetryUnreachable = longRunningProcessRetryUnreachable;
	}

	/**
	 * Gets the check long running process.
	 * 
	 * @return the check long running process
	 */
	public String getCheckLongRunningProcess()
	{
		return checkLongRunningProcess;
	}

	/**
	 * Sets the check long running process.
	 * 
	 * @param checkLongRunningProcess the new check long running process
	 */
	public void setCheckLongRunningProcess(String checkLongRunningProcess)
	{
		this.checkLongRunningProcess = checkLongRunningProcess;
	}

	/**
	 * Gets the long running process remove all.
	 * 
	 * @return the long running process remove all
	 */
	public String getLongRunningProcessRemoveAll()
	{
		return longRunningProcessRemoveAll;
	}

	/**
	 * Sets the long running process remove all.
	 * 
	 * @param longRunningProcessRemoveAll the new long running process remove all
	 */
	public void setLongRunningProcessRemoveAll(String longRunningProcessRemoveAll)
	{
		this.longRunningProcessRemoveAll = longRunningProcessRemoveAll;
	}

	/**
	 * Gets the check rni.
	 * 
	 * @return the check rni
	 */
	public String getCheckRni()
	{
		return checkRni;
	}

	/**
	 * Sets the check rni.
	 * 
	 * @param checkRni the new check rni
	 */
	public void setCheckRni(String checkRni)
	{
		this.checkRni = checkRni;
	}

	/**
	 * Sets the delete file.
	 * 
	 * @param deleteFile the new delete file
	 */
	public void setDeleteFile(String deleteFile)
	{
		this.deleteFile = deleteFile;
	}

	/**
	 * Gets the delete file.
	 * 
	 * @return the delete file
	 */
	public String getDeleteFile()
	{
		return deleteFile;
	}

	/**
	 * Sets the generate summary file csv.
	 * 
	 * @param generateSummaryFileCSV the new generate summary file csv
	 */
	public void setGenerateSummaryFileCSV(String generateSummaryFileCSV)
	{
		this.generateSummaryFileCSV = generateSummaryFileCSV;
	}

	/**
	 * Gets the generate summary file csv.
	 * 
	 * @return the generate summary file csv
	 */
	public String getGenerateSummaryFileCSV()
	{
		return generateSummaryFileCSV;
	}
}
