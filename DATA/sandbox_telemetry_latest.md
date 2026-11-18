# sandbox_telemetry_parse — 2026-11-18 17:58:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=919128 lines=2040
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2031 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2031} |
| `chromeGpuPssKb` | {'int': 2031} |
| `chromeOtherPssKb` | {'int': 2031} |
| `chromeProcesses` | {'int': 2031} |
| `chromeProfiles` | {'int': 2031} |
| `chromeRendererMaxPssKb` | {'int': 2031} |
| `chromeRendererPssKb` | {'int': 2031} |
| `chromeRenderers` | {'int': 2031} |
| `chromeTabs` | {'int': 2031} |
| `chromeTabsProbedProfiles` | {'int': 2031} |
| `chromeUtilityPssKb` | {'int': 2031} |
| `desktopPssKb` | {'int': 2031} |
| `hostPssKb` | {'int': 2031} |
| `kind` | {'str': 2031} |
| `memAvailableKb` | {'int': 2031} |
| `memTotalKb` | {'int': 2031} |
| `otherPssKb` | {'int': 2031} |
| `processes` | {'int': 2031} |
| `pssFallbackProcesses` | {'int': 2031} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
