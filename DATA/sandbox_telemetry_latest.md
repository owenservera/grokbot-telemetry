# sandbox_telemetry_parse — 2026-10-12 18:30:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=644488 lines=1430
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1425 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1425} |
| `chromeGpuPssKb` | {'int': 1425} |
| `chromeOtherPssKb` | {'int': 1425} |
| `chromeProcesses` | {'int': 1425} |
| `chromeProfiles` | {'int': 1425} |
| `chromeRendererMaxPssKb` | {'int': 1425} |
| `chromeRendererPssKb` | {'int': 1425} |
| `chromeRenderers` | {'int': 1425} |
| `chromeTabs` | {'int': 1425} |
| `chromeTabsProbedProfiles` | {'int': 1425} |
| `chromeUtilityPssKb` | {'int': 1425} |
| `desktopPssKb` | {'int': 1425} |
| `hostPssKb` | {'int': 1425} |
| `kind` | {'str': 1425} |
| `memAvailableKb` | {'int': 1425} |
| `memTotalKb` | {'int': 1425} |
| `otherPssKb` | {'int': 1425} |
| `processes` | {'int': 1425} |
| `pssFallbackProcesses` | {'int': 1425} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
