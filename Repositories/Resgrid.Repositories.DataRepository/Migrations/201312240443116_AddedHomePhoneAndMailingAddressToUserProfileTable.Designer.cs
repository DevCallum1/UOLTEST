// <auto-generated />
namespace Resgrid.Repositories.DataRepository.Migrations
{
    using System.CodeDom.Compiler;
    using System.Data.Entity.Migrations;
    using System.Data.Entity.Migrations.Infrastructure;
    using System.Resources;
    
    [GeneratedCode("EntityFramework.Migrations", "6.0.1-21010")]
    public sealed partial class AddedHomePhoneAndMailingAddressToUserProfileTable : IMigrationMetadata
    {
        private readonly ResourceManager Resources = new ResourceManager(typeof(AddedHomePhoneAndMailingAddressToUserProfileTable));
        
        string IMigrationMetadata.Id
        {
            get { return "201312240443116_AddedHomePhoneAndMailingAddressToUserProfileTable"; }
        }
        
        string IMigrationMetadata.Source
        {
            get { return null; }
        }
        
        string IMigrationMetadata.Target
        {
            get { return Resources.GetString("Target"); }
        }
    }
}