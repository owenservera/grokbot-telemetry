# sandbox_telemetry_parse — 2026-11-11 17:13:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1732654 lines=3837
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3828 |
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
| `chromeBrowserPssKb` | {'int': 3828} |
| `chromeGpuPssKb` | {'int': 3828} |
| `chromeOtherPssKb` | {'int': 3828} |
| `chromeProcesses` | {'int': 3828} |
| `chromeProfiles` | {'int': 3828} |
| `chromeRendererMaxPssKb` | {'int': 3828} |
| `chromeRendererPssKb` | {'int': 3828} |
| `chromeRenderers` | {'int': 3828} |
| `chromeTabs` | {'int': 3828} |
| `chromeTabsProbedProfiles` | {'int': 3828} |
| `chromeUtilityPssKb` | {'int': 3828} |
| `desktopPssKb` | {'int': 3828} |
| `hostPssKb` | {'int': 3828} |
| `kind` | {'str': 3828} |
| `memAvailableKb` | {'int': 3828} |
| `memTotalKb` | {'int': 3828} |
| `otherPssKb` | {'int': 3828} |
| `processes` | {'int': 3828} |
| `pssFallbackProcesses` | {'int': 3828} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
