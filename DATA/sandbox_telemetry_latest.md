# sandbox_telemetry_parse — 2026-10-15 23:17:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1103702 lines=2446
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2441 |
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
| `chromeBrowserPssKb` | {'int': 2441} |
| `chromeGpuPssKb` | {'int': 2441} |
| `chromeOtherPssKb` | {'int': 2441} |
| `chromeProcesses` | {'int': 2441} |
| `chromeProfiles` | {'int': 2441} |
| `chromeRendererMaxPssKb` | {'int': 2441} |
| `chromeRendererPssKb` | {'int': 2441} |
| `chromeRenderers` | {'int': 2441} |
| `chromeTabs` | {'int': 2441} |
| `chromeTabsProbedProfiles` | {'int': 2441} |
| `chromeUtilityPssKb` | {'int': 2441} |
| `desktopPssKb` | {'int': 2441} |
| `hostPssKb` | {'int': 2441} |
| `kind` | {'str': 2441} |
| `memAvailableKb` | {'int': 2441} |
| `memTotalKb` | {'int': 2441} |
| `otherPssKb` | {'int': 2441} |
| `processes` | {'int': 2441} |
| `pssFallbackProcesses` | {'int': 2441} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
