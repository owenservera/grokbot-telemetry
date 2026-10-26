# sandbox_telemetry_parse — 2026-10-26 23:27:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=200154 lines=446
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 441 |
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
| `chromeBrowserPssKb` | {'int': 441} |
| `chromeGpuPssKb` | {'int': 441} |
| `chromeOtherPssKb` | {'int': 441} |
| `chromeProcesses` | {'int': 441} |
| `chromeProfiles` | {'int': 441} |
| `chromeRendererMaxPssKb` | {'int': 441} |
| `chromeRendererPssKb` | {'int': 441} |
| `chromeRenderers` | {'int': 441} |
| `chromeTabs` | {'int': 441} |
| `chromeTabsProbedProfiles` | {'int': 441} |
| `chromeUtilityPssKb` | {'int': 441} |
| `desktopPssKb` | {'int': 441} |
| `hostPssKb` | {'int': 441} |
| `kind` | {'str': 441} |
| `memAvailableKb` | {'int': 441} |
| `memTotalKb` | {'int': 441} |
| `otherPssKb` | {'int': 441} |
| `processes` | {'int': 441} |
| `pssFallbackProcesses` | {'int': 441} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
