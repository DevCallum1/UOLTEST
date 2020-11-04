﻿// From https://github.com/grandchamp/Identity.Dapper

using System.Text;
using System.Text.RegularExpressions;

namespace Resgrid.Repositories.DataRepository.Extensions
{
	public static class StringReplaceExtensions
	{
		public static string ReplaceInsertQueryParameters(this string query, string schemaName, string tableName, string returnIdCmd, string columns, string values)
		{
			return query.Replace("%SCHEMA%", schemaName)
						.Replace("%TABLENAME%", tableName)
						.Replace("%RETURNID%", returnIdCmd)
						.Replace("%COLUMNS%", $"({columns})")
						.Replace("%VALUES%", values);
		}

		public static string ReplaceDeleteQueryParameters(this string query, string schemaName, string tableName, string idColumnName, string idParameter)
		{
			return query.Replace("%SCHEMA%", schemaName)
						.Replace("%TABLENAME%", tableName)
						.Replace("%IDCOLUMN%", idColumnName)
						.Replace("%ID%", idParameter);
		}

		public static string ReplaceUpdateQueryParameters(this string query, string schemaName, string tableName, string setValues, string idColumnName, string idParameter)
		{
			return query.Replace("%SCHEMA%", schemaName)
						.Replace("%TABLENAME%", tableName)
						.Replace("%IDCOLUMN%", idColumnName)
						.Replace("%SETVALUES%", setValues)
						.Replace("%ID%", idParameter);
		}

		public static string ReplaceQueryParameters(this string query, string schemaName, string tableName, string parameterNotation, string[] parameterPlaceholders, string[] sqlParameterValues)
		{
			var queryBuilder = new StringBuilder(query);
			for (int i = 0; i < parameterPlaceholders.Length; i++)
				queryBuilder.Replace($"{parameterPlaceholders[i]}", $"{parameterNotation}{sqlParameterValues[i]}");

			queryBuilder.Replace("%SCHEMA%", schemaName)
						.Replace("%TABLENAME%", tableName);

			return queryBuilder.ToString();
		}

		public static string ReplaceQueryParameters(this string query, string schemaName, string tableName, string parameterNotation, string[] parameterPlaceholders, string[] sqlParameterValues, string[] othersPlaceholders, string[] othersPlaceholdersValues)
		{
			var queryBuilder = new StringBuilder(query.ReplaceQueryParameters(schemaName, tableName, parameterNotation, parameterPlaceholders, sqlParameterValues));
			for (int i = 0; i < othersPlaceholders.Length; i++)
				queryBuilder.Replace(othersPlaceholders[i], othersPlaceholdersValues[i]);

			return queryBuilder.ToString();
		}

		public static string RemoveSpecialCharacters(this string value) => Regex.Replace(value, @"[^\w\d]", "");
	}
}
