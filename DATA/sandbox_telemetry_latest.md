# sandbox_telemetry_parse — 2026-10-14 08:26:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=187950 lines=420
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 415 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 415} |
| `chromeGpuPssKb` | {'int': 415} |
| `chromeOtherPssKb` | {'int': 415} |
| `chromeProcesses` | {'int': 415} |
| `chromeProfiles` | {'int': 415} |
| `chromeRendererMaxPssKb` | {'int': 415} |
| `chromeRendererPssKb` | {'int': 415} |
| `chromeRenderers` | {'int': 415} |
| `chromeTabs` | {'int': 415} |
| `chromeTabsProbedProfiles` | {'int': 415} |
| `chromeUtilityPssKb` | {'int': 415} |
| `desktopPssKb` | {'int': 415} |
| `hostPssKb` | {'int': 415} |
| `kind` | {'str': 415} |
| `memAvailableKb` | {'int': 415} |
| `memTotalKb` | {'int': 415} |
| `otherPssKb` | {'int': 415} |
| `processes` | {'int': 415} |
| `pssFallbackProcesses` | {'int': 415} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
