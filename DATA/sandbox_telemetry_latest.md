# sandbox_telemetry_parse — 2026-11-11 03:36:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1455786 lines=3225
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3216 |
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
| `chromeBrowserPssKb` | {'int': 3216} |
| `chromeGpuPssKb` | {'int': 3216} |
| `chromeOtherPssKb` | {'int': 3216} |
| `chromeProcesses` | {'int': 3216} |
| `chromeProfiles` | {'int': 3216} |
| `chromeRendererMaxPssKb` | {'int': 3216} |
| `chromeRendererPssKb` | {'int': 3216} |
| `chromeRenderers` | {'int': 3216} |
| `chromeTabs` | {'int': 3216} |
| `chromeTabsProbedProfiles` | {'int': 3216} |
| `chromeUtilityPssKb` | {'int': 3216} |
| `desktopPssKb` | {'int': 3216} |
| `hostPssKb` | {'int': 3216} |
| `kind` | {'str': 3216} |
| `memAvailableKb` | {'int': 3216} |
| `memTotalKb` | {'int': 3216} |
| `otherPssKb` | {'int': 3216} |
| `processes` | {'int': 3216} |
| `pssFallbackProcesses` | {'int': 3216} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
