# sandbox_telemetry_parse — 2026-10-15 17:56:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=983018 lines=2179
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2174 |
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
| `chromeBrowserPssKb` | {'int': 2174} |
| `chromeGpuPssKb` | {'int': 2174} |
| `chromeOtherPssKb` | {'int': 2174} |
| `chromeProcesses` | {'int': 2174} |
| `chromeProfiles` | {'int': 2174} |
| `chromeRendererMaxPssKb` | {'int': 2174} |
| `chromeRendererPssKb` | {'int': 2174} |
| `chromeRenderers` | {'int': 2174} |
| `chromeTabs` | {'int': 2174} |
| `chromeTabsProbedProfiles` | {'int': 2174} |
| `chromeUtilityPssKb` | {'int': 2174} |
| `desktopPssKb` | {'int': 2174} |
| `hostPssKb` | {'int': 2174} |
| `kind` | {'str': 2174} |
| `memAvailableKb` | {'int': 2174} |
| `memTotalKb` | {'int': 2174} |
| `otherPssKb` | {'int': 2174} |
| `processes` | {'int': 2174} |
| `pssFallbackProcesses` | {'int': 2174} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
