class AiController < ApplicationController
    def generate
      prompt = params[:prompt]
  
      generated_data = process_prompt_with_openai(prompt)
  
      if generated_data
        render json: generated_data, status: :ok
      else
        render json: { error: 'Failed to process prompt' }, status: :unprocessable_entity
      end
    end
  
    private
  
    def process_prompt_with_openai(prompt)
        client = OpenAI::Client.new
      
        begin
          response = client.chat(
            parameters: {
              model: "gpt-4",
              messages: [
                { role: "system", content: "You are a helpful assistant that generates job position details as structured JSON." },
                { role: "user", content: <<~PROMPT
                  Analyze the following job description and return the following fields in JSON format:
                  - title: The job title.
                  - description: A brief job description.
                  - benefits: A list of benefits provided.
      
                  Job description:
                  "#{prompt}"
                PROMPT
                }
              ],
              max_tokens: 150,
              temperature: 0.7
            }
          )
      
          if response["choices"] && response["choices"][0]
            JSON.parse(response["choices"][0]["message"]["content"])
          else
            nil
          end
        rescue JSON::ParserError => e
          Rails.logger.error("Failed to parse OpenAI response as JSON: #{e.message}")
          nil
        rescue Faraday::Error => e
          Rails.logger.error("OpenAI API error: #{e.message}")
          nil
        end
      end
      
      
  
    def build_prompt(prompt)
      <<~PROMPT
        Analyze the following job description and extract the following fields:
        - Job title
        - Job description
        - Benefits
  
        Job description:
        "#{prompt}"
  
        Return the information as a JSON object.
      PROMPT
    end
  
    def parse_response(response_text)
      JSON.parse(response_text)
    rescue JSON::ParserError
      nil
    end
  end
  