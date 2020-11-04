﻿using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Resgrid.Model.Identity;

namespace Resgrid.Model
{
	[Table("PersonnelRoleUsers")]
	public class PersonnelRoleUser : IEntity
	{
		[Key]
		[Required]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public int PersonnelRoleUserId { get; set; }

		[Required]
		public int PersonnelRoleId { get; set; }

		[ForeignKey("PersonnelRoleId")]
		public virtual PersonnelRole Role { get; set; }

		public int DepartmentId { get; set; }

		[Required]
		public string UserId { get; set; }

		[ForeignKey("UserId")]
		public IdentityUser User { get; set; }

		[NotMapped]
		public object IdValue
		{
			get { return PersonnelRoleUserId; }
			set { PersonnelRoleUserId = (int)value; }
		}

		
		[NotMapped]
		public string TableName => "PersonnelRoleUsers";

		[NotMapped]
		public string IdName => "PersonnelRoleUserId";

		[NotMapped]
		public IEnumerable<string> IgnoredProperties => new string[] { "IdValue", "TableName", "IdName", "Role", "User" };
	}
}
