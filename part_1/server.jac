walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker do_division {
    has numerator: float;
    has denominator: float;

    can return_message with `root entry {
            report {
                "response": f"The result of {self.numerator} divided by {self.denominator} is {self.numerator / self.denominator}"
            };
    }
}

walker pig_latin {
    has word: str;

    can return_message with `root entry {
        report {
            "response": f"Your message in pig latin is {self.word[1:]+self.word[0]+"ay"}"
        };
    }
}

# curl -X 'POST' \
#   'http://localhost:8000/walker/do_division' \
#   -H 'accept: application/json' \
#   -H 'Content-Type: application/json' \
#   -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZjJjOWU0NGM2ZWQ1MzcyMWYzMzFlMCIsImVtYWlsIjoidGVzdEBtYWlsLmNvbSIsInJvb3RfaWQiOiI2NmYyYzllNDRjNmVkNTM3MjFmMzMxZGYiLCJpc19hY3RpdmF0ZWQiOnRydWUsImV4cGlyYXRpb24iOjE3MjczMzMyNjAsInN0YXRlIjoibXRtWFVLQ00ifQ.Iac6vQbtdb-ACK6OmkhA0X-vNZtx6noQ9s7yssadfTc" \
#   -d '{ "numerator": 10, "denominator": 5 }
# '

# curl -X 'POST' \
#   'http://localhost:8000/walker/pig_latin' \
#   -H 'accept: application/json' \
#   -H 'Content-Type: application/json' \
#   -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2ZjJjOWU0NGM2ZWQ1MzcyMWYzMzFlMCIsImVtYWlsIjoidGVzdEBtYWlsLmNvbSIsInJvb3RfaWQiOiI2NmYyYzllNDRjNmVkNTM3MjFmMzMxZGYiLCJpc19hY3RpdmF0ZWQiOnRydWUsImV4cGlyYXRpb24iOjE3MjczMzMyNjAsInN0YXRlIjoibXRtWFVLQ00ifQ.Iac6vQbtdb-ACK6OmkhA0X-vNZtx6noQ9s7yssadfTc" \
#   -d '{ "word": "pig" }
# '