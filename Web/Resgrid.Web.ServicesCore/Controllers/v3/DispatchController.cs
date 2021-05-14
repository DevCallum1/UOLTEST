﻿using System.Collections.Generic;
using Resgrid.Model.Services;
using Resgrid.Model;
using Resgrid.Web.Services.Controllers.Version3.Models.DispatchApp;
using Resgrid.Web.Services.Controllers.Version3.Models.Personnel;
using Resgrid.Web.Services.Controllers.Version3.Models.Groups;
using Resgrid.Web.Services.Controllers.Version3.Models.Units;
using Resgrid.Web.Services.Controllers.Version3.Models.Roles;
using Resgrid.Web.Services.Controllers.Version3.Models.CoreData;
using Resgrid.Web.Services.Controllers.Version3.Models.CallPriorities;
using Resgrid.Web.Services.Controllers.Version3.Models.Calls;
using Resgrid.Model.Providers;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Resgrid.Model.Helpers;
using Resgrid.Web.Services.Models.v3.Dispatch;
using Resgrid.Framework;
using System;

namespace Resgrid.Web.Services.Controllers.Version3
{
	/// <summary>
	/// Operations to support Dispatch operations
	/// </summary>
	[Route("api/v{version:ApiVersion}/[controller]")]
	[Produces("application/json")]
	public class DispatchController : V3AuthenticatedApiControllerbase
	{
		private readonly IUsersService _usersService;
		private readonly IActionLogsService _actionLogsService;
		private readonly IDepartmentsService _departmentsService;
		private readonly IUserProfileService _userProfileService;
		private readonly IUserStateService _userStateService;
		private readonly IUnitsService _unitsService;
		private readonly ICallsService _callsService;
		private readonly IDepartmentGroupsService _departmentGroupsService;
		private readonly IPersonnelRolesService _personnelRolesService;
		private readonly ICustomStateService _customStateService;
		private readonly IGeoLocationProvider _geoLocationProvider;
		private readonly ICqrsProvider _cqrsProvider;

		public DispatchController(
			IUsersService usersService,
			IActionLogsService actionLogsService,
			IDepartmentsService departmentsService,
			IUserProfileService userProfileService,
			IUserStateService userStateService,
			IUnitsService unitsService,
			ICallsService callsService,
			IDepartmentGroupsService departmentGroupsService,
			IPersonnelRolesService personnelRolesService,
			ICustomStateService customStateService,
			IGeoLocationProvider geoLocationProvider,
			ICqrsProvider cqrsProvider
			)
		{
			_usersService = usersService;
			_actionLogsService = actionLogsService;
			_departmentsService = departmentsService;
			_userProfileService = userProfileService;
			_userStateService = userStateService;
			_unitsService = unitsService;
			_callsService = callsService;
			_departmentGroupsService = departmentGroupsService;
			_personnelRolesService = personnelRolesService;
			_customStateService = customStateService;
			_geoLocationProvider = geoLocationProvider;
			_cqrsProvider = cqrsProvider;
		}

		[HttpGet("GetNewCallData")]
		[ProducesResponseType(StatusCodes.Status200OK)]
		public async Task<ActionResult<NewCallPayloadResult>> GetNewCallData()
		{
			var results = new NewCallPayloadResult();
			results.Personnel = new List<PersonnelInfoResult>();
			results.Groups = new List<GroupInfoResult>();
			results.Units = new List<UnitInfoResult>();
			results.Roles = new List<RoleInfoResult>();
			results.Statuses = new List<CustomStatusesResult>();
			results.UnitStatuses = new List<UnitStatusCoreResult>();
			results.UnitRoles = new List<UnitRoleResult>();
			results.Priorities = new List<CallPriorityResult>();
			results.CallTypes = new List<CallTypeResult>();

			var department = await _departmentsService.GetDepartmentByIdAsync(DepartmentId, false);
			var users = await _departmentsService.GetAllUsersForDepartmentAsync(DepartmentId);
			var groups = await _departmentGroupsService.GetAllDepartmentGroupsForDepartmentAsync(DepartmentId);
			var rolesForUsersInDepartment = await _personnelRolesService.GetAllRolesForUsersInDepartmentAsync(DepartmentId);
			var allRoles = await _personnelRolesService.GetRolesForDepartmentAsync(DepartmentId);
			var allProfiles = await _userProfileService.GetAllProfilesForDepartmentAsync(DepartmentId);
			var allGroups = await _departmentGroupsService.GetAllGroupsForDepartmentAsync(DepartmentId);
			var units = await _unitsService.GetUnitsForDepartmentAsync(DepartmentId);
			var unitTypes = await _unitsService.GetUnitTypesForDepartmentAsync(DepartmentId);
			var callPriorites = await _callsService.GetCallPrioritiesForDepartmentAsync(DepartmentId);
			var callTypes = await _callsService.GetCallTypesForDepartmentAsync(DepartmentId);


			foreach (var user in users)
			{
				//var profile = _userProfileService.GetProfileByUserId(user.UserId);
				//var group = _departmentGroupsService.GetGroupForUser(user.UserId);

				UserProfile profile = null;
				if (allProfiles.ContainsKey(user.UserId))
					profile = allProfiles[user.UserId];

				DepartmentGroup group = null;
				if (groups.ContainsKey(user.UserId))
					group = groups[user.UserId];

				//var roles = _personnelRolesService.GetRolesForUser(user.UserId);

				List<PersonnelRole> roles = null;
				if (rolesForUsersInDepartment.ContainsKey(user.UserId))
					roles = rolesForUsersInDepartment[user.UserId];

				var result = new PersonnelInfoResult();

				if (profile != null)
				{
					result.Fnm = profile.FirstName;
					result.Lnm = profile.LastName;
					result.Id = profile.IdentificationNumber;
					result.Mnu = profile.MobileNumber;
				}
				else
				{
					result.Fnm = "Unknown";
					result.Lnm = "Check Profile";
					result.Id = "";
					result.Mnu = "";
				}

				result.Eml = user.Email;
				result.Did = DepartmentId;
				result.Uid = user.UserId.ToString();

				if (group != null)
				{
					result.Gid = group.DepartmentGroupId;
					result.Gnm = group.Name;
				}

				result.Roles = new List<string>();
				if (roles != null && roles.Count > 0)
				{
					foreach (var role in roles)
					{
						if (role != null)
							result.Roles.Add(role.Name);
					}
				}

				results.Personnel.Add(result);
			}

			foreach (var group in allGroups)
			{
				var groupInfo = new GroupInfoResult();
				groupInfo.Gid = group.DepartmentGroupId;
				groupInfo.Nme = group.Name;

				if (group.Type.HasValue)
					groupInfo.Typ = group.Type.Value;

				if (group.Address != null)
					groupInfo.Add = group.Address.FormatAddress();

				results.Groups.Add(groupInfo);
			}

			foreach (var unit in units)
			{
				var unitResult = new UnitInfoResult();
				unitResult.Uid = unit.UnitId;
				unitResult.Did = DepartmentId;
				unitResult.Nme = unit.Name;
				unitResult.Typ = unit.Type;

				if (!string.IsNullOrWhiteSpace(unit.Type))
				{
					var unitType = unitTypes.FirstOrDefault(x => x.Type == unit.Type);

					if (unitType != null)
						unitResult.Cid = unitType.CustomStatesId.GetValueOrDefault();
				}
				else
				{
					unitResult.Cid = 0;
				}

				if (unit.StationGroup != null)
				{
					unitResult.Sid = unit.StationGroup.DepartmentGroupId;
					unitResult.Snm = unit.StationGroup.Name;
				}

				results.Units.Add(unitResult);

				// Add unit roles for this unit
				var roles = await _unitsService.GetRolesForUnitAsync(unit.UnitId);
				foreach (var role in roles)
				{
					var roleResult = new UnitRoleResult();
					roleResult.Name = role.Name;
					roleResult.UnitId = role.UnitId;
					roleResult.UnitRoleId = role.UnitRoleId;

					results.UnitRoles.Add(roleResult);
				}
			}

			var unitStatuses = await _unitsService.GetAllLatestStatusForUnitsByDepartmentIdAsync(DepartmentId);

			foreach (var us in unitStatuses)
			{
				var unitStatus = new UnitStatusCoreResult();
				unitStatus.UnitId = us.UnitId;
				unitStatus.StateType = (UnitStateTypes)us.State;
				unitStatus.StateTypeId = us.State;
				unitStatus.Type = us.Unit.Type;
				unitStatus.Timestamp = us.Timestamp.TimeConverter(department);
				unitStatus.Name = us.Unit.Name;
				unitStatus.Note = us.Note;

				if (us.DestinationId.HasValue)
					unitStatus.DestinationId = us.DestinationId.Value;

				if (us.LocalTimestamp.HasValue)
					unitStatus.LocalTimestamp = us.LocalTimestamp.Value;

				if (us.Latitude.HasValue)
					unitStatus.Latitude = us.Latitude.Value;

				if (us.Longitude.HasValue)
					unitStatus.Longitude = us.Longitude.Value;

				results.UnitStatuses.Add(unitStatus);
			}

			foreach (var role in allRoles)
			{
				var roleResult = new RoleInfoResult();
				roleResult.Rid = role.PersonnelRoleId;
				roleResult.Nme = role.Name;

				results.Roles.Add(roleResult);
			}

			var customStates = await _customStateService.GetAllActiveCustomStatesForDepartmentAsync(DepartmentId);

			foreach (var customState in customStates)
			{
				if (customState.IsDeleted)
					continue;

				foreach (var stateDetail in customState.GetActiveDetails())
				{
					if (stateDetail.IsDeleted)
						continue;

					var customStateResult = new CustomStatusesResult();
					customStateResult.Id = stateDetail.CustomStateDetailId;
					customStateResult.Type = customState.Type;
					customStateResult.StateId = stateDetail.CustomStateId;
					customStateResult.Text = stateDetail.ButtonText;
					customStateResult.BColor = stateDetail.ButtonColor;
					customStateResult.Color = stateDetail.TextColor;
					customStateResult.Gps = stateDetail.GpsRequired;
					customStateResult.Note = stateDetail.NoteType;
					customStateResult.Detail = stateDetail.DetailType;

					results.Statuses.Add(customStateResult);
				}

			}

			foreach (var priority in callPriorites)
			{
				var priorityResult = new CallPriorityResult();
				priorityResult.Id = priority.DepartmentCallPriorityId;
				priorityResult.DepartmentId = priority.DepartmentId;
				priorityResult.Name = priority.Name;
				priorityResult.Color = priority.Color;
				priorityResult.Sort = priority.Sort;
				priorityResult.IsDeleted = priority.IsDeleted;
				priorityResult.IsDefault = priority.IsDefault;

				results.Priorities.Add(priorityResult);
			}

			if (callTypes != null && callTypes.Any())
			{
				foreach (var callType in callTypes)
				{
					var type = new CallTypeResult();
					type.Id = callType.CallTypeId;
					type.Name = callType.Type;

					results.CallTypes.Add(type);
				}
			}


			return results;
		}

		[HttpGet("GetSetUnitStatusData")]
		[ProducesResponseType(StatusCodes.Status200OK)]
		public async Task<ActionResult<GetSetUnitStateDataResult>> GetSetUnitStatusData(int unitId)
		{
			var results = new GetSetUnitStateDataResult();
			results.UnitId = unitId;
			results.Stations = new List<GroupInfoResult>();
			results.Calls = new List<CallResult>();
			results.Statuses = new List<CustomStatusesResult>();

			var unit = await _unitsService.GetUnitByIdAsync(unitId);
			results.UnitName = unit.Name;

			var type = await _unitsService.GetUnitTypeByNameAsync(DepartmentId, unit.Type);
			var activeCalls = await _callsService.GetActiveCallsByDepartmentAsync(DepartmentId);
			var department = await _departmentsService.GetDepartmentByIdAsync(DepartmentId);
			var stations = await _departmentGroupsService.GetAllStationGroupsForDepartmentAsync(DepartmentId);

			var callDefault = new CallResult();
			callDefault.Cid = 0;
			callDefault.Nme = "No Call";
			results.Calls.Add(callDefault);

			if (activeCalls != null)
			{
				foreach (var c in activeCalls)
				{
					var call = new CallResult();

					call.Cid = c.CallId;
					call.Pri = c.Priority;
					call.Ctl = c.IsCritical;
					call.Nme = StringHelpers.SanitizeHtmlInString(c.Name);

					if (!String.IsNullOrWhiteSpace(c.NatureOfCall))
						call.Noc = StringHelpers.SanitizeHtmlInString(c.NatureOfCall);

					call.Map = c.MapPage;

					if (!String.IsNullOrWhiteSpace(c.Notes))
						call.Not = StringHelpers.SanitizeHtmlInString(c.Notes);

					if (c.CallNotes != null)
						call.Nts = c.CallNotes.Count();
					else
						call.Nts = 0;

					if (c.Attachments != null)
					{
						call.Aud = c.Attachments.Count(x => x.CallAttachmentType == (int)CallAttachmentTypes.DispatchAudio);
						call.Img = c.Attachments.Count(x => x.CallAttachmentType == (int)CallAttachmentTypes.Image);
						call.Fls = c.Attachments.Count(x => x.CallAttachmentType == (int)CallAttachmentTypes.File);
					}
					else
					{
						call.Aud = 0;
						call.Img = 0;
						call.Fls = 0;
					}

					if (String.IsNullOrWhiteSpace(c.Address) && !String.IsNullOrWhiteSpace(c.GeoLocationData))
					{
						var geo = c.GeoLocationData.Split(char.Parse(","));

						if (geo.Length == 2)
							call.Add = await _geoLocationProvider.GetAddressFromLatLong(double.Parse(geo[0]), double.Parse(geo[1]));
					}
					else
						call.Add = c.Address;

					call.Geo = c.GeoLocationData;
					call.Lon = c.LoggedOn.TimeConverter(department);
					call.Utc = c.LoggedOn;
					call.Ste = c.State;
					call.Num = c.Number;

					results.Calls.Add(call);
				}
			}

			var groupInfoDefault = new GroupInfoResult();
			groupInfoDefault.Gid = 0;
			groupInfoDefault.Nme = "No Station";
			results.Stations.Add(groupInfoDefault);

			if (stations != null)
			{
				foreach (var group in stations)
				{
					var groupInfo = new GroupInfoResult();
					groupInfo.Gid = group.DepartmentGroupId;
					groupInfo.Nme = group.Name;

					if (group.Type.HasValue)
						groupInfo.Typ = group.Type.Value;

					if (group.Address != null)
						groupInfo.Add = group.Address.FormatAddress();

					results.Stations.Add(groupInfo);
				}
			}

			if (type != null && type.CustomStatesId.HasValue)
			{
				var customStates = await _customStateService.GetCustomSateByIdAsync(type.CustomStatesId.Value);

				if (!customStates.IsDeleted)
				{
					foreach (var stateDetail in customStates.GetActiveDetails())
					{
						if (stateDetail.IsDeleted)
							continue;

						var customStateResult = new CustomStatusesResult();
						customStateResult.Id = stateDetail.CustomStateDetailId;
						customStateResult.Type = customStates.Type;
						customStateResult.StateId = stateDetail.CustomStateId;
						customStateResult.Text = stateDetail.ButtonText;
						customStateResult.BColor = stateDetail.ButtonColor;
						customStateResult.Color = stateDetail.TextColor;
						customStateResult.Gps = stateDetail.GpsRequired;
						customStateResult.Note = stateDetail.NoteType;
						customStateResult.Detail = stateDetail.DetailType;

						results.Statuses.Add(customStateResult);
					}
				}
			}
			else
			{
				var customStateResult = new CustomStatusesResult();
				customStateResult.Id = 0;
				customStateResult.Type = 0;
				customStateResult.StateId = 0;
				customStateResult.Text = "Available";
				customStateResult.BColor = "#FFFFFF";
				customStateResult.Color = "#000000";
				customStateResult.Gps = false;
				customStateResult.Note = 0;
				customStateResult.Detail = 0;

				results.Statuses.Add(customStateResult);

				var customStateResult2 = new CustomStatusesResult();
				customStateResult2.Id = 3;
				customStateResult2.Type = 3;
				customStateResult2.StateId = 3;
				customStateResult2.Text = "Committed";
				customStateResult2.BColor = "#FFFFFF";
				customStateResult2.Color = "#000000";
				customStateResult2.Gps = false;
				customStateResult2.Note = 0;
				customStateResult2.Detail = 0;

				results.Statuses.Add(customStateResult2);

				var customStateResult3 = new CustomStatusesResult();
				customStateResult3.Id = 1;
				customStateResult3.Type = 1;
				customStateResult3.StateId = 1;
				customStateResult3.Text = "Delayed";
				customStateResult3.BColor = "#FFFFFF";
				customStateResult3.Color = "#000000";
				customStateResult3.Gps = false;
				customStateResult3.Note = 0;
				customStateResult3.Detail = 0;

				results.Statuses.Add(customStateResult3);

				var customStateResult4 = new CustomStatusesResult();
				customStateResult4.Id = 4;
				customStateResult4.Type = 4;
				customStateResult4.StateId = 4;
				customStateResult4.Text = "Out Of Service";
				customStateResult4.BColor = "#FFFFFF";
				customStateResult4.Color = "#000000";
				customStateResult4.Gps = false;
				customStateResult4.Note = 0;
				customStateResult4.Detail = 0;

				results.Statuses.Add(customStateResult4);

				var customStateResult5 = new CustomStatusesResult();
				customStateResult5.Id = 2;
				customStateResult5.Type = 2;
				customStateResult5.StateId = 2;
				customStateResult5.Text = "Unavailable";
				customStateResult5.BColor = "#FFFFFF";
				customStateResult5.Color = "#000000";
				customStateResult5.Gps = false;
				customStateResult5.Note = 0;
				customStateResult5.Detail = 0;

				results.Statuses.Add(customStateResult5);
			}


			return results;
		}

		/// <summary>
		/// Returns all the active calls for the department
		/// </summary>
		/// <returns>Array of CallResult objects for each active call in the department</returns>
		[HttpGet("GetCallPriorites")]
		[ProducesResponseType(StatusCodes.Status200OK)]
		[ProducesResponseType(StatusCodes.Status400BadRequest)]
		[ProducesResponseType(StatusCodes.Status500InternalServerError)]
		public async Task<ActionResult<List<CallPriorityDataResult>>> GetCallPriorites()
		{
			var result = new List<CallPriorityDataResult>();

			return Ok(result);
		}
	}
}
