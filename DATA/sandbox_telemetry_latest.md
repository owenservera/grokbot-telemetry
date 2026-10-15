# sandbox_telemetry_parse — 2026-10-15 19:01:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1005166 lines=2228
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2223 |
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
| `chromeBrowserPssKb` | {'int': 2223} |
| `chromeGpuPssKb` | {'int': 2223} |
| `chromeOtherPssKb` | {'int': 2223} |
| `chromeProcesses` | {'int': 2223} |
| `chromeProfiles` | {'int': 2223} |
| `chromeRendererMaxPssKb` | {'int': 2223} |
| `chromeRendererPssKb` | {'int': 2223} |
| `chromeRenderers` | {'int': 2223} |
| `chromeTabs` | {'int': 2223} |
| `chromeTabsProbedProfiles` | {'int': 2223} |
| `chromeUtilityPssKb` | {'int': 2223} |
| `desktopPssKb` | {'int': 2223} |
| `hostPssKb` | {'int': 2223} |
| `kind` | {'str': 2223} |
| `memAvailableKb` | {'int': 2223} |
| `memTotalKb` | {'int': 2223} |
| `otherPssKb` | {'int': 2223} |
| `processes` | {'int': 2223} |
| `pssFallbackProcesses` | {'int': 2223} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
