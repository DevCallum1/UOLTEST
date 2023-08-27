﻿using Resgrid.Model;
using Resgrid.Model.Repositories.Queries.Contracts;
using Resgrid.Repositories.DataRepository.Configs;
using Resgrid.Repositories.DataRepository.Extensions;

namespace Resgrid.Repositories.DataRepository.Queries.Calls
{
	public class SelectAllCallReferencesByTargetCallIdQuery : ISelectQuery
	{
		private readonly SqlConfiguration _sqlConfiguration;
		public SelectAllCallReferencesByTargetCallIdQuery(SqlConfiguration sqlConfiguration)
		{
			_sqlConfiguration = sqlConfiguration;
		}

		public string GetQuery()
		{
			var query = _sqlConfiguration.SelectAllCallReferencesByTargetCallIdQuery
										 .ReplaceQueryParameters(_sqlConfiguration.SchemaName,
																 string.Empty,
																 _sqlConfiguration.ParameterNotation,
																new string[] {
																				"%CALLID%"
																			  },
																 new string[] {
																				"CallId",
																			  },
																 new string[] {
																				"%CALLREFERENCESTABLE%",
																				"%CALLSTABLE%"
																 },
																 new string[] {
																				_sqlConfiguration.CallReferencesTable,
																				_sqlConfiguration.CallsTable
																 }
																 );

			return query;
		}

		public string GetQuery<TEntity>() where TEntity : class, IEntity
		{
			throw new System.NotImplementedException();
		}
	}
}
