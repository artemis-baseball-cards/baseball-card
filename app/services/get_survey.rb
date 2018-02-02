class Survey
  include HTTPParty

  def self.get_survey
    RestClient.get('https://www.googleapis.com/surveys/v2/surveys/khwhkgad5syrueagrq547bi2yq', headers= {Authorization: 'ya29.GlxUBTjMAkyLXLd2a8_4aBS_eX7RAjCsp9XY_ER2fMBZmpz-f5YTjp6Zc-um4tEd6BkTtVHjZzx6aVKRbXBshSHy6pHn3TM-NrDvc2yV3epDRGzrDaOGS4Bbfu7FLQ'})
    JSON.parse(response)
  end

end
