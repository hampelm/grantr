require 'csv'

class DataImporter
  attr_accessor :filepath

  def initialize(filepath)
    self.filepath = filepath
  end

  def import_grants
    csv_text = File.read Rails.root.join(filepath)
    csv = CSV.parse(csv_text, :headers => true)

    grants = []

    csv.each do |row|
      data = row.to_hash

      ActiveRecord::Base.transaction do
        granter = Organization.where(
          name: data['granter']
        ).first_or_initialize

        grantee = Organization.where(
          name: data['grantee'],
          city: data['grantee_city'],
          state: data['grantee_state']
        ).first_or_initialize

        grant = Grant.new(
          from: granter,
          to: grantee,
          amount: data['amount'],
          impact_area: data['impact_area'],
          impact_neighborhood: data['impact_neighborhood'],
          starts: Date.strptime(data['year'], "%Y"),
          ends: Date.strptime(data['year'] + data['length_years'], "%Y"),
          data_source: data['data_source'],
          notes: data['notes']
        )

        granter.save!
        grantee.save!
        grant.save!

        grants << grant
      end
    end

    return grants
  end

end
