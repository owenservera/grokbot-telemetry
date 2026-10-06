# sandbox_telemetry_parse — 2026-10-06 11:29:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=342650 lines=756
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 751 |
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
| `chromeBrowserPssKb` | {'int': 751} |
| `chromeGpuPssKb` | {'int': 751} |
| `chromeOtherPssKb` | {'int': 751} |
| `chromeProcesses` | {'int': 751} |
| `chromeProfiles` | {'int': 751} |
| `chromeRendererMaxPssKb` | {'int': 751} |
| `chromeRendererPssKb` | {'int': 751} |
| `chromeRenderers` | {'int': 751} |
| `chromeTabs` | {'int': 751} |
| `chromeTabsProbedProfiles` | {'int': 751} |
| `chromeUtilityPssKb` | {'int': 751} |
| `desktopPssKb` | {'int': 751} |
| `hostPssKb` | {'int': 751} |
| `kind` | {'str': 751} |
| `memAvailableKb` | {'int': 751} |
| `memTotalKb` | {'int': 751} |
| `otherPssKb` | {'int': 751} |
| `processes` | {'int': 751} |
| `pssFallbackProcesses` | {'int': 751} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
